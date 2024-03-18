library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package uP_RISC_util is 
   
    constant NOP_INSTRUCTION : std_logic_vector(31 downto 0) := (others => '0');
    -- PROCESSOR ISA : OPCODE
    constant OP_NOP   : std_logic_vector(7 downto 0) := x"00";
    constant OP_ADD   : std_logic_vector(7 downto 0) := x"01";
    constant OP_MUL   : std_logic_vector(7 downto 0) := x"02";
    constant OP_SOU   : std_logic_vector(7 downto 0) := x"03";
    constant OP_COP   : std_logic_vector(7 downto 0) := x"05";    
    constant OP_AFC   : std_logic_vector(7 downto 0) := x"06";
    constant OP_LOAD  : std_logic_vector(7 downto 0) := x"07";
    constant OP_STORE : std_logic_vector(7 downto 0) := x"08";
    --extensions
    constant OP_AND   : std_logic_vector(7 downto 0) := x"09";  
    constant OP_OR    : std_logic_vector(7 downto 0) := x"0A"; 
    constant OP_XOR   : std_logic_vector(7 downto 0) := x"0B";
    constant OP_NOT   : std_logic_vector(7 downto 0) := x"0C"; 
    
    constant OP_JMP   : std_logic_vector(7 downto 0) := x"0D"; 
    constant OP_JZE   : std_logic_vector(7 downto 0) := x"0E";   
    constant OP_JNE   : std_logic_vector(7 downto 0) := x"0F";
    
    
     
    --ALU CONTROLS
    constant ALU_ADD : std_logic_vector(2 downto 0) := "000";
    constant ALU_SOU : std_logic_vector(2 downto 0) := "001";
    constant ALU_MUL : std_logic_vector(2 downto 0) := "010";
    constant ALU_AND : std_logic_vector(2 downto 0) := "011";
    constant ALU_OR  : std_logic_vector(2 downto 0) := "100";
    constant ALU_XOR : std_logic_vector(2 downto 0) := "101";
    constant ALU_NOT : std_logic_vector(2 downto 0) := "110";
    constant ALU_NOP : std_logic_vector(2 downto 0) := "111";
    
    --REGISTERS
    constant R0  : std_logic_vector(7 downto 0) := x"00";
    constant R1  : std_logic_vector(7 downto 0) := x"01";
    constant R2  : std_logic_vector(7 downto 0) := x"02";
    constant R3  : std_logic_vector(7 downto 0) := x"03";
    constant R4  : std_logic_vector(7 downto 0) := x"04";
    constant R5  : std_logic_vector(7 downto 0) := x"05";
    constant R6  : std_logic_vector(7 downto 0) := x"06";
    constant R7  : std_logic_vector(7 downto 0) := x"07";
    constant R8  : std_logic_vector(7 downto 0) := x"08";
    constant R9  : std_logic_vector(7 downto 0) := x"09";
    constant R10 : std_logic_vector(7 downto 0) := x"0A";
    constant R11 : std_logic_vector(7 downto 0) := x"0B";
    constant R12 : std_logic_vector(7 downto 0) := x"0C";
    constant R13 : std_logic_vector(7 downto 0) := x"0D";
    constant R14 : std_logic_vector(7 downto 0) := x"0E";
    constant R15 : std_logic_vector(7 downto 0) := x"0F";
    
    --8bits padding
    constant pad : std_logic_vector(7 downto 0) := x"00";
    
    function get_OPCODE_from(instruction : in std_logic_vector(31 downto 0)) 
           return std_logic_vector;         
    function get_A_from(instruction : in std_logic_vector(31 downto 0))
           return std_logic_vector;
    function get_B_from(instruction : in std_logic_vector(31 downto 0))
           return std_logic_vector;   
    function get_C_from(instruction : in std_logic_vector(31 downto 0))
           return std_logic_vector;
    function get_REG(word : in std_logic_vector(7 downto 0))
           return std_logic_vector;
           
    function get_ALU_CTRL(instruction : in std_logic_vector(31 downto 0)) 
           return std_logic_vector;
    function is_Arith_Logic_Instruction(instruction : in std_logic_vector(31 downto 0)) 
           return boolean ;   
    function is_Load_Instruction(instruction : in std_logic_vector(31 downto 0)) 
           return boolean ;   
    function is_Store_Instruction(instruction : in std_logic_vector(31 downto 0)) 
           return boolean; 
    function is_Branch_Instruction(instruction : in std_logic_vector(31 downto 0))
           return boolean ;  
                    
    function REGISTER_OPERAND_need_in(instruction : in std_logic_vector(31 downto 0))
           return boolean;
           
    function REGISTER_VALUE_may_be_altered_in(instruction : in std_logic_vector(31 downto 0))
         return boolean;  
                
    function TWO_OPERANDS_required_in(instruction : in std_logic_vector(31 downto 0))
         return boolean;
         
    function is_B_IMM_VALUE(instruction : in std_logic_vector(31 downto 0))
          return boolean;
    function is_ALU_S_negative(ALU_FLAG : in std_logic_vector(3 downto 0))
          return boolean;  
    function is_ALU_S_nul(ALU_FLAG : in std_logic_vector(3 downto 0))
          return boolean;
                            
end uP_RISC_util;

package body uP_RISC_util is
   -- instruction : OPCODE A B [C]
   -- extension : OPCODE [A] [B] [C]
   
   function get_OPCODE_from(instruction : in std_logic_vector(31 downto 0)) 
            return std_logic_vector is
   begin
        case instruction(31 downto 24)  is
            when OP_ADD | OP_MUL | OP_SOU | OP_AFC | OP_COP | OP_LOAD | OP_STORE | 
                 --Extension
                 OP_AND | OP_OR  | OP_XOR | OP_NOT | OP_JMP | OP_JNE | OP_JZE
                         => return instruction(31 downto 24);                                       
                                                                                                    
            when others  => return OP_NOP;                                                  
        end case;                                                                 
   end;
   
   function get_A_from(instruction : in std_logic_vector(31 downto 0))
            return std_logic_vector is 
   begin
        return instruction(23 downto 16); 
   end;
   
    function get_B_from(instruction : in std_logic_vector(31 downto 0))
            return std_logic_vector is 
   begin
        return instruction(15 downto 8); 
   end;
   
   function get_C_from(instruction : in std_logic_vector(31 downto 0))
            return std_logic_vector is 
   begin
        return instruction(7 downto 0); 
   end;
   
   function get_REG(word : in std_logic_vector(7 downto 0))
            return std_logic_vector is
   begin
        --Registers' "addresses" are extended to 8 bits in instructions code although they are 4 bits value
        --Then, we should trim the upper 4bits to get their real addresses/names.
        --Eg : word = "0000 0001" ---> "0001" = R1
        return word(3 downto 0);
   end;
   
   function get_ALU_CTRL(instruction : in std_logic_vector(31 downto 0)) 
            return std_logic_vector is
   begin
        case get_OPCODE_from(instruction) is
            when OP_ADD    => return ALU_ADD;
            when OP_MUL    => return ALU_MUL;
            when OP_SOU    => return ALU_SOU;
            --extension
            when OP_AND    => return ALU_AND;
            when OP_OR     => return ALU_OR;
            when OP_XOR    => return ALU_XOR;
            when OP_NOT    => return ALU_NOT;
            
            when others    => return ALU_NOP;
        end case;
   end;
   
   function is_Arith_Logic_Instruction(instruction : in std_logic_vector(31 downto 0)) 
            return boolean is
   begin
        case get_OPCODE_from(instruction) is
            when OP_ADD | OP_MUL | OP_SOU |   
                --extension
                OP_AND  | OP_OR  | OP_XOR | OP_NOT 
                => return true;
            
            when others    => return false;
        end case;
   end;
   
   function is_Load_Instruction(instruction : in std_logic_vector(31 downto 0)) 
           return boolean is 
   begin
         case get_OPCODE_from(instruction) is
            when OP_LOAD 
                => return true;  
            when others    => return false;
        end case;      
   end;
   
   function is_Store_Instruction(instruction : in std_logic_vector(31 downto 0)) 
           return boolean is 
   begin
         case get_OPCODE_from(instruction) is
            when OP_STORE 
                => return true;  
            when others    => return false;
        end case;      
   end;
   
   -- extension
   function is_Branch_Instruction(instruction : in std_logic_vector(31 downto 0)) 
           return boolean is 
   begin
         case get_OPCODE_from(instruction) is
            when OP_JMP | OP_JZE | OP_JNE    
                => return true;  
            when others    => return false;
        end case;      
   end; 
   
   function REGISTER_OPERAND_need_in(instruction : in std_logic_vector(31 downto 0))
          return boolean is
   begin
        case get_OPCODE_from(instruction) is 
            when OP_ADD | OP_SOU | OP_MUL | OP_COP | OP_STORE |
                 --Extension 
                 OP_AND | OP_OR  | OP_XOR | OP_NOT
                => return true;
            when others
                => return false;
        end case;
   end;
   
   function REGISTER_VALUE_may_be_altered_in(instruction : in std_logic_vector(31 downto 0))
          return boolean is
   begin
        case get_OPCODE_from(instruction) is 
            when OP_STORE | OP_NOP | OP_JMP | OP_JZE | OP_JNE
                => return false;
            when others
                => return true;
        end case;
   end;
   
   function is_B_IMM_VALUE(instruction : in std_logic_vector(31 downto 0))
          return boolean is 
   begin
        case get_OPCODE_from(instruction) is 
            when OP_AFC | OP_LOAD |
                 --Extension 
                 OP_JMP | OP_JZE  | OP_JNE
                => return true;
            when others
                => return false;
        end case;
   end;
    
   function TWO_OPERANDS_required_in(instruction : in std_logic_vector(31 downto 0))
          return boolean is
   begin
        case get_OPCODE_from(instruction) is 
            when OP_ADD |  OP_SOU | OP_MUL |
                 --Extension 
                 OP_AND | OP_OR   | OP_XOR 
                => return true;
            when others
                => return false;
        end case;
   end;
   -- ALU_FLAGS  : C  V  N  Z  
   --              3  2  1  0
   function    is_ALU_S_negative(ALU_FLAG : in std_logic_vector(3 downto 0))
          return boolean is
   begin
        case ALU_FLAG(1) is 
            when '1'
                => return true;
            when others
                => return false;
        end case;
   end;
   
   function is_ALU_S_nul(ALU_FLAG : in std_logic_vector(3 downto 0))
          return boolean is
   begin
        case ALU_FLAG(0) is 
            when '1'
                => return true;
            when others
                => return false;
        end case;
   end;
   
end package body uP_RISC_util; 
