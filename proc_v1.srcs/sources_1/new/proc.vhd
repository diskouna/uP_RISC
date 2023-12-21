library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.PROC_UTIL.all;

entity proc is
    Port ( 
           clk          :  in STD_LOGIC;
           rst          :  in STD_LOGIC;
           
           -- Debugging signals
           debug_address     : in std_logic_vector  (7 downto 0);
           debug_unit_select : in std_logic; -- '0' for register, '1' for  memory
           debug_output      : out STD_LOGIC_VECTOR (7 downto 0)
    );
end proc;

architecture Behavioral of proc is
    
    component memoire_instructions is
        Port ( 
               CLK     : in STD_LOGIC;
               ADDRESS : in STD_LOGIC_VECTOR (7 downto 0);
               INSTR   : out STD_LOGIC_VECTOR (31 downto 0)
             );
    end component;
    
     component banc_de_registres is
        Port ( 
               Address_A : in STD_LOGIC_VECTOR (3 downto 0);    -- Adresse de lecture port A
               Address_B : in STD_LOGIC_VECTOR (3 downto 0);    -- Adresse de lecture port B
               Address_W : in STD_LOGIC_VECTOR (3 downto 0);    -- Adresse d'écriture
               W         : in STD_LOGIC;                        -- Signal d'écriture
               DATA      : in STD_LOGIC_VECTOR (7 downto 0);    -- Donnée à écrire
               RST       : in STD_LOGIC;                        -- Signal de réinitialisation
               CLK       : in STD_LOGIC;                        -- Horloge d'entrée
               Q_A       : out STD_LOGIC_VECTOR (7 downto 0);   -- Sortie du port A
               Q_B       : out STD_LOGIC_VECTOR (7 downto 0);   -- Sortie du port B
              
               debug_address    : in std_logic_vector  (3 downto 0);   
               debug_reg_output : out STD_LOGIC_VECTOR (7 downto 0)     
        );  
    end component;
    
    component ALU_8BITS is
        Port ( 
               ALU_CTRL  :  in STD_LOGIC_VECTOR (2 downto 0);  -- Signal de controle de l'operation à eefectuer
               ALU_A     :  in STD_LOGIC_VECTOR (7 downto 0);  -- Operande 1 de l'operation  (obligatoire)
               ALU_B     :  in STD_LOGIC_VECTOR (7 downto 0);  -- Opérande 2 de l'opération (facultatif pour le NOT)
               ALU_S     : out STD_LOGIC_VECTOR (7 downto 0);  -- Resultat de l'operation
               ALU_FLAGS : out STD_LOGIC_VECTOR (3 downto 0)   -- Flags   ALU_FLAGS  : C  V  N  Z  
                                                               --                      3  2  1  0
        );
    end component;
    
    component memoire_donnee is
        Port ( 
               CLK : in STD_LOGIC;
               RST : in STD_LOGIC;
               RW  : in STD_LOGIC;
               DATA_IN : in std_logic_vector(7 downto 0);
               ADDRESS : in STD_LOGIC_VECTOR (7 downto 0);
               DATA_OUT : out STD_LOGIC_VECTOR (7 downto 0)
               
               --Debug
--              debug_address : in  std_logic_vector(7 downto 0);
--              debug_mem_output : out std_logic_vector(7 downto 0)
         );
    end component;
  
    -- INSTRUCTIONS MEMORY
    signal INSTR_PTR       : std_logic_vector( 7 downto 0) := x"00";
    signal NEXT_INSTR_PTR  : std_logic_vector( 7 downto 0) := x"00";
    signal INSTR_OUT       : std_logic_vector(31 downto 0) := NOP_INSTRUCTION;    
 
    -- REGISTERS  
    signal REGISTER_QA        : std_logic_vector(7 downto 0);
    signal REGISTER_QB        : std_logic_vector(7 downto 0);
    signal REGISTER_ADDRESS_A : std_logic_vector(3 downto 0);
    signal REGISTER_ADDRESS_B : std_logic_vector(3 downto 0);
    signal REGISTER_ADDRESS_W : std_logic_vector(3 downto 0);
    signal REGISTER_W         : std_logic := '0';
    signal REGISTER_DATA_IN   : std_logic_vector(7 downto 0);
    
    -- ALU 
    signal ALU_CTRL         : std_logic_vector(2 downto 0);
    signal ALU_A            : std_logic_vector(7 downto 0);
    signal ALU_B            : std_logic_vector(7 downto 0);
    signal ALU_S            : std_logic_vector(7 downto 0);
    signal ALU_FLAGS        : std_logic_vector(3 downto 0);
     
    -- DATA_MEMORY  
    signal DATA_RW : std_logic;
    signal DATA_IN            : std_logic_vector(7 downto 0);    
    signal DATA_OUT           : std_logic_vector(7 downto 0);
    signal DATA_ADDRESS       : std_logic_vector(7 downto 0);
    
                                            
    -- PIPELINE BUFFER
    signal BUFFER_LI_DI  : std_logic_vector(31 downto 0) := NOP_INSTRUCTION; 
    signal BUFFER_DI_EX  : std_logic_vector(31 downto 0) := NOP_INSTRUCTION;
    signal BUFFER_EX_MEM : std_logic_vector(31 downto 0) := NOP_INSTRUCTION;
    signal BUFFER_MEM_RE : std_logic_vector(31 downto 0) := NOP_INSTRUCTION;
    
    -- MUX Signals
    signal MUX_MEM_B_OR_OUT     : std_logic_vector(7 downto 0);
    signal MUX_EX_B_OR_ALU_S    : std_logic_vector(7 downto 0);                                                  
    signal MUX_DI_B_OR_QA       : std_logic_vector(7 downto 0);
    signal MUX_MEM_A_OR_B       : std_logic_vector(7 downto 0);
    
    signal STALL                   : std_logic := '0';
    signal DATA_DEPENDENCY_FOUND   : std_logic := '0';   
    signal BRANCH_FOUND            : std_logic := '0';         
    signal BRANCH_TAKEN            : std_logic := '0';
    signal BRANCH_ADDRESS          : std_logic_vector( 7 downto 0); 
    
    --Debug
    signal debug_reg_output : std_logic_vector(7 downto 0) := (others => '0');
    signal debug_mem_output : std_logic_vector(7 downto 0) := (others => '0'); 

begin
   
   -------------------------------------------------------
   --------------- PROCESSOR COMPONENTS INSTANTIATION ------------------
   -------------------------------------------------------
    MEMORY_INSTRUCTIONS_UNIT :
        memoire_instructions port map (
                CLK    => clk,
         
                ADDRESS => INSTR_PTR,
                INSTR  => INSTR_OUT
        );
        
     BANC_REGISTRE_UNIT      :  
        banc_de_registres port map ( 
                 RST        =>   rst,                  
                 CLK        =>   clk,   
                 
                 Address_A  =>   REGISTER_ADDRESS_A,   
                 Address_B  =>   REGISTER_ADDRESS_B,   
                 Address_W  =>   REGISTER_ADDRESS_W,   
                 W          =>   REGISTER_W,                 
                 DATA       =>   REGISTER_DATA_IN,
                 Q_A        =>   REGISTER_QA,
                 Q_B        =>   REGISTER_QB,
                 
                 --Debug
                debug_address =>  debug_address(3 downto 0),
                debug_reg_output =>   debug_reg_output     
        );  
            
     ALU_UNIT : 
       ALU_8BITS port map (
            ALU_CTRL  => ALU_CTRL,
            ALU_A     => ALU_A,
            ALU_B     => ALU_B,
            ALU_S     => ALU_S,
            ALU_FLAGS => ALU_FLAGS
        );
        
     MEMOIRE_DONNEE_UNIT : 
        memoire_donnee port map ( 
               CLK      => clk,
               RST      => rst,
               
               RW       => DATA_RW,
               DATA_IN  => DATA_IN, 
               ADDRESS  => DATA_ADDRESS,
               DATA_OUT => DATA_OUT
               
--              debug_address    => debug_address,
--              debug_mem_output => debug_mem_output
         );
         
     -----------------------------------------------------
     ---------------PIPELINE' STAGES ------------------
     -----------------------------------------------------
     
     ----------------- STAGE 1 : -------------------------      
     LOAD_INSTRUCTION   :   
        BUFFER_LI_DI <= INSTR_OUT;        
                        
        INCREMENT_IP     :
        process (clk) 
        begin
            if (falling_edge(clk)) then
                if (rst = '0') then
                    INSTR_PTR <= (others => '0'); 
                else
                    INSTR_PTR <= NEXT_INSTR_PTR;  
                end if;
           end if;
        end process;
                      
     NEXT_INSTR_PTR <= BRANCH_ADDRESS   when (BRANCH_TAKEN  = '1')  else  
                       INSTR_PTR        when (STALL   = '1' )       else
                       std_logic_vector(unsigned(INSTR_PTR) + 1);         
                           
     ---------------- STAGE 2 : --------------------------
     DECODE_INSTRUCTION  :
        process (clk)
        begin
            if (rising_edge(clk)) then
                if (rst = '0') then
                    BUFFER_DI_EX <= NOP_INSTRUCTION; 
                elsif (STALL = '1') then 
                    BUFFER_DI_EX <= NOP_INSTRUCTION;
                else 
                    BUFFER_DI_EX <= get_OPCODE_from(BUFFER_LI_DI) &  
                                    get_A_from(BUFFER_LI_DI)      & 
                                    MUX_DI_B_OR_QA                & 
                                    REGISTER_QB;              
                end if;
             end if; 
        end process;
        
        REGISTER_ADDRESS_A <= get_REG(get_B_from(BUFFER_LI_DI));
        REGISTER_ADDRESS_B <= get_REG(get_C_from(BUFFER_LI_DI));
        
     ---------------- STAGE 3 : --------------------------
     EXECUTE_INSTRUCTION :
        process (clk)
        begin
          if (rising_edge(clk)) then 
            if (rst = '0') then
                BUFFER_EX_MEM <= NOP_INSTRUCTION;  
            else
                BUFFER_EX_MEM <=  get_OPCODE_from(BUFFER_DI_EX)  & 
                                  get_A_from(BUFFER_DI_EX)       & 
                                  MUX_EX_B_OR_ALU_S              & 
                                  get_C_from(BUFFER_DI_EX);   

            end if;
          end if;
        end process;
                        
        ALU_CTRL <= get_ALU_CTRL(BUFFER_DI_EX);
        ALU_A    <= get_B_from(BUFFER_DI_EX);
        ALU_B    <= get_C_from(BUFFER_DI_EX);
    
     --------------- STAGE 4 : ---------------------------
     MEMORY_OPERATION    :
        process (clk)
        begin
          if (rising_edge(clk)) then
            if (rst = '0') then
                BUFFER_MEM_RE <= NOP_INSTRUCTION;  
            else
                BUFFER_MEM_RE <= get_OPCODE_from(BUFFER_EX_MEM) & 
                                 get_A_from(BUFFER_EX_MEM)      & 
                                 MUX_MEM_B_OR_OUT               & 
                                 get_C_from(BUFFER_EX_MEM); 
            end if;
           end if;
        end process;
      
        DATA_IN      <= get_B_from(BUFFER_EX_MEM);
        DATA_ADDRESS <= MUX_MEM_A_OR_B;
        
     --------------- STAGE 5 : ---------------------------
     REGISTER_WRITE_BACK :
         REGISTER_W <= '1' when REGISTER_VALUE_may_be_altered_in(BUFFER_MEM_RE) else
                       '0';    
         REGISTER_ADDRESS_W <= get_REG(get_A_from(BUFFER_MEM_RE));       
         REGISTER_DATA_IN   <= get_B_from(BUFFER_MEM_RE);                
               
               
               
    -------------------------------------------------------
    --------------- CONTROL UNIT --------------------------
    -------------------------------------------------------
    
    MUX_DI_B_OR_QA    <= get_B_from(BUFFER_LI_DI)  when is_B_IMM_VALUE(BUFFER_LI_DI) else
                         REGISTER_QA;
                        
    MUX_EX_B_OR_ALU_S <= ALU_S     when is_Arith_Logic_Instruction(BUFFER_DI_EX) else
                         get_B_from(BUFFER_DI_EX); 

                 
    MUX_MEM_A_OR_B    <= get_A_from(BUFFER_EX_MEM) when is_Store_Instruction(BUFFER_EX_MEM) else
                         get_B_from(BUFFER_EX_MEM) when  is_Load_Instruction(BUFFER_EX_MEM) else    
                         x"00";
                                            
    MUX_MEM_B_OR_OUT  <= DATA_OUT           when is_Load_Instruction(BUFFER_EX_MEM) else
                         get_B_from(BUFFER_EX_MEM);
                                       
                                       
    DATA_RW           <= '1' when is_Store_Instruction(BUFFER_EX_MEM) else
                         '0';
                                   
    STALL             <= DATA_DEPENDENCY_FOUND  or  BRANCH_FOUND;
    
     ----------------------------------------------------------
     ------------------ DATA HAZARD UNIT  --------------------- 
     ----------------------------------------------------------
      
     DATA_DEPENDENCY_FOUND <= '1'  when ( REGISTER_OPERAND_need_in(BUFFER_LI_DI)    
                                          and                  
                                          REGISTER_VALUE_may_be_altered_in(BUFFER_DI_EX) 
                                          and                                                                                                                
                                          (  get_A_from(BUFFER_DI_EX) = get_B_from(BUFFER_LI_DI) 
                                             or                             
                                             ( TWO_OPERANDS_required_in(BUFFER_LI_DI) 
                                               and 
                                               get_A_from(BUFFER_DI_EX) = get_C_from(BUFFER_LI_DI)
                                             )                        
                                          )
                                        )
                         else '1'  when ( REGISTER_OPERAND_need_in(BUFFER_LI_DI)     
                                          and 
                                          REGISTER_VALUE_may_be_altered_in(BUFFER_EX_MEM) 
                                          and                                          
                                          ( get_A_from(BUFFER_EX_MEM) = get_B_from(BUFFER_LI_DI) 
                                            or 
                                            ( TWO_OPERANDS_required_in(BUFFER_LI_DI) 
                                              and 
                                              get_A_from(BUFFER_EX_MEM) = get_C_from(BUFFER_LI_DI)
                                            )  
                                          )
                                        )   
                         else '0';   
                                
     -----------------------------------------------------------------
     ---------------------- BRANCH UNIT ------------------------------
     -----------------------------------------------------------------
 
     BRANCH_FOUND    <= '1' when (is_Branch_Instruction(BUFFER_LI_DI)) else
                        '0';
     
     BRANCH_TAKEN    <= '1' when ( get_OPCODE_from(BUFFER_LI_DI) = OP_JMP ) else
                        '1' when ( get_OPCODE_from(BUFFER_LI_DI) = OP_JZE 
                                   and is_ALU_S_nul(ALU_FLAGS)            ) else
                        '1' when ( get_OPCODE_from(BUFFER_LI_DI) = OP_JNE 
                                   and is_ALU_S_negative(ALU_FLAGS)       ) else
                        '0';
                        
     BRANCH_ADDRESS  <= get_B_from(BUFFER_LI_DI) when (is_Branch_Instruction(BUFFER_LI_DI)); --Save the branch address
                
     -----------------------------------------------------------------                 
     ------------------------- Debugging ---------------------------------
     -----------------------------------------------------------------
     debug_output <= debug_reg_output when (debug_unit_select = '0') else
                     debug_mem_output;       
end Behavioral;

-- IMPROVEMENT : 
-- replace  RAM by Cache  
-- simple register renaming
-- forwarding