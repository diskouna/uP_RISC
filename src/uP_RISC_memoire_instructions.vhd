library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.uP_RISC_util.ALL;

entity uP_RISC_memoire_instructions is
    Port ( 
           CLK    : in STD_LOGIC;
           ADDRESS : in STD_LOGIC_VECTOR (7 downto 0);
           INSTR  : out STD_LOGIC_VECTOR (31 downto 0)
         );
end uP_RISC_memoire_instructions;

architecture Behavioral of uP_RISC_memoire_instructions is 

    type t_memoire_instruction is array (0 to 255) of std_logic_vector(31 downto 0);
    signal memoire_instruction : t_memoire_instruction := (

--BEGIN : SIMPLE DOWN COUNTER : 00, FF, FE, ... ,7F     
                    (OP_AFC   &  R0   & x"01" &  pad),
                    (OP_AFC   &  R1   & x"00" &  pad),
                    (OP_SOU   &  R1   &  R1   &   R0),       --@0x02
                    (OP_JNE   & pad   & x"02" &  pad),
                    
                    (OP_JMP   & pad   & x"04" &  pad),       --"halt"
--END SIMPLE COUNTER    
 
-- TEST : STALL                  
                    (OP_AFC     & R0 & x"03" & pad),    -- R0 =           0x03                1
                    (OP_STORE   & x"00" & R0 & pad),  -- [0x00] = R0 =  0x03                  1             
                    (OP_AFC     & R1 & x"05" & pad),    -- R1 = x05
                    (OP_ADD     & R2 & R0 & R1),        -- R2 = R1 + R0 = 0x08
                    (OP_SOU     & R3 & R1 & R0),        -- R3 = R1 - R0 = 0x02
                    (OP_LOAD    & R4 & x"00" & x"01"),  -- R4 = [0x00] =  0x03
                    (OP_MUL     & R5 & R3 & R4),        -- R5 = R3 * R4 = 0x06
                    (OP_COP     & R6 & R5 & pad),       -- R6 = R5 =      0x06
                    (OP_AND     & R7 & R6 &  R6),       -- R7 = R6 & R6 = 0x06
                    (OP_NOT     & R8 & R7 & pad),       -- R8 = not(R7) = 0xF9
                    (OP_XOR     & R9 & R8 &  R9),       -- R9 = R8 ^ R9 = R8 ^ 0 = 0xF9
--END TEST : STALL
                    
--4     0     0     0     1     2     0     0     3     0     0     4     0     0
--3     0     0     1     2     0     0     3     0     0     4     0     0     5
--2     0     1     2     0     0     3     0     0     4     0     0     5     0
--1     1     2     3     3     3     4     4     4     5     5     5     0     0
--   0  1  0  1  0  1  0  1  0  1  0  1  0  1  0  1  0  1  0, 1  0  1  0  1  0  1  0
--ST 0  0  0  0  0  1  1  1  1  0  0  1  1  1  1  0  0  1  1  1  1  0  0  0  0  0  0
   
--                     (OP_AFC  & R1 & x"12" & pad),        --R1 = x12 = 
--                     (OP_COP  & R2 &  R1   & pad),        --R2 = R1 = x12
--                     (OP_ADD  & R3 &  R2   &  R1),        --R3 = R2 + R1 = x24
--                     (OP_AFC  & R4 & x"03" & pad),        --R4 = x03
--                     (OP_MUL  & R4 &  R1   &  R4),         --R4 = R1 * R4 = x36 
                   
--                   (OP_AFC  & R0 & x"05" & x"00"),  --R0 = 5   
--                   (OP_COP  & R1 &  R0   & pad),                
--                   NOP_INSTRUCTION,
--                   (OP_STORE & x"01" & R0 & x"01"),
--                   (OP_LOAD  & R1 & x"01" & x"01"),
                   
                  
--                   NOP_INSTRUCTION,NOP_INSTRUCTION,NOP_INSTRUCTION,
--                   (OP_STORE & x"03" & R3 & x"01"),
                   
--                   (OP_ADD  & R3 & R1 & R0),            --R3 = R1 + R0 = 8                               
--                   NOP_INSTRUCTION,NOP_INSTRUCTION,NOP_INSTRUCTION,
                   
--                   (OP_SOU  & R4 & R0 & R1),            --R4 = R0 - R1 = 2                             
--                   NOP_INSTRUCTION,NOP_INSTRUCTION,NOP_INSTRUCTION,
                   
--                   (OP_MUL  & R5 & R1 & R0),            --R5 = R1 * R0 = 15                               
--                   NOP_INSTRUCTION,NOP_INSTRUCTION,NOP_INSTRUCTION,
                   
--                   (OP_COP  & R6 & R1 & x"00"),         --R6 = R1 = 3                               
--                   NOP_INSTRUCTION,NOP_INSTRUCTION,NOP_INSTRUCTION,
                   
--                   (OP_STORE & x"10" & R4 & x"01"),     --[0x10] = R4 = 2
--                   NOP_INSTRUCTION,NOP_INSTRUCTION,NOP_INSTRUCTION,
                   
--                   (OP_LOAD  & R7 & x"10" & x"01"),     --R7 = [0x11] = 2                            
--                   NOP_INSTRUCTION,NOP_INSTRUCTION,NOP_INSTRUCTION,
                   
--                   (OP_SOU  & R8 & R1 & R0),            --R8 = R1 - R0 = -2 = [0xFE]                             
--                   NOP_INSTRUCTION,NOP_INSTRUCTION,NOP_INSTRUCTION,
                   
--                   (OP_STORE & x"08" & R8 & x"01"),     --[0x08] = R8 = 2
--                   NOP_INSTRUCTION,NOP_INSTRUCTION,NOP_INSTRUCTION,
                   
                   
                                      
--                 (OP_AFC   & x"00" & x"00" & x"00"),
--                 (OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),
--                 (OP_STORE & x"00" & x"00" & x"01"),
                 
--                 (OP_AFC   & x"01" & x"01" & x"00"),
--                 (OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),
--                 (OP_STORE & x"01" & x"01" & x"01"),
                 
--                 (OP_AFC   & x"02" & x"02" & x"00"),
--                 (OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),
--                 (OP_STORE & x"02" & x"02" & x"01"),
                 
--                 (OP_AFC   & x"03" & x"03" & x"00"),
--                 (OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),
--                 (OP_STORE & x"03" & x"03" & x"01"),
                 
--                 (OP_AFC   & x"04" & x"04" & x"00"),
--                 (OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),
--                 (OP_STORE & x"04" & x"04" & x"01"),
                 
--                 (OP_AFC   & x"05" & x"05" & x"00"),
--                 (OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),
--                 (OP_STORE & x"05" & x"05" & x"01"),
                 
--                 (OP_AFC   & x"06" & x"06" & x"00"),
--                 (OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),
--                 (OP_STORE & x"06" & x"06" & x"01"),
                 
--                 (OP_AFC   & x"07" & x"07" & x"00"),
--                 (OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),
--                 (OP_STORE & x"07" & x"07" & x"01"),
                 
--                 (OP_AFC   & x"08" & x"08" & x"00"),
--                 (OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),
--                 (OP_STORE & x"08" & x"08" & x"01"),
                 
--                 (OP_AFC   & x"09" & x"09" & x"00"),
--                 (OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),
--                 (OP_STORE & x"09" & x"09" & x"01"),
                 
--                 (OP_AFC   & x"0A" & x"0A" & x"00"),
--                 (OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),
--                 (OP_STORE & x"0A" & x"0A" & x"01"),
                 
--                 (OP_AFC   & x"0B" & x"0B" & x"00"),
--                 (OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),
--                 (OP_STORE & x"0B" & x"0B" & x"01"),
                 
--                 (OP_AFC   & x"0C" & x"0C" & x"00"),
--                 (OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),
--                 (OP_STORE & x"0C" & x"0C" & x"01"),      
                 
--                 (OP_AFC   & x"0D" & x"0D" & x"00"),
--                 (OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),
--                 (OP_STORE & x"0D" & x"0D" & x"01"),
                 
--                 (OP_AFC   & x"0E" & x"0E" & x"00"),
--                 (OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),
--                 (OP_STORE & x"0E" & x"0E" & x"01"),
                 
--                 (OP_AFC   & x"0F" & x"0F" & x"00"),
--                 (OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),(OP_NOP   & x"00" & x"00" & x"00"),
--                 (OP_STORE & x"0F" & x"0F" & x"01"),        
                 
--                 (OP_LOAD & x"07" & x"03" & x"01"),
                 
--               (OP_AFC & x"00" & x"08" & x"00"),                --R0 = 8
--               (OP_NOP & x"00" & x"02" & x"00"), 
--               (OP_NOP & x"00" & x"02" & x"00"), 
--               (OP_NOP & x"00" & x"02" & x"00"),
                            
--               (OP_COP & x"01" & x"00" & x"00"),                --R1 = R0 = 8 
--               (OP_NOP & x"00" & x"02" & x"00"), 
--               (OP_NOP & x"00" & x"02" & x"00"), 
--               (OP_NOP & x"00" & x"02" & x"00"),
                  
--               (OP_ADD & x"02" & x"00" & x"01"),                --R2 = R0 + R1 = 16 = 0x10    
--               (OP_SOU & x"03" & x"00" & x"01"),                --R3 = R0 - R1 = 00 = 0x00
--               (OP_MUL & x"04" & x"00" & x"01"),                --R4 = R0 * R1 = 64 = 0x40
               
--               (OP_ADD & x"05" & x"00" & x"00"),                --R5 = R0 + R0 = 16 = 0x10  
--               (OP_SOU & x"06" & x"00" & x"00"),                --R6 = R0 - R0 = 00 = 0x00 
--               (OP_MUL & x"07" & x"00" & x"00"),                --R7 = R0 * R0 = 64 = 0x40 
--               (OP_NOP & x"00" & x"02" & x"00"),
--               (OP_NOP & x"00" & x"02" & x"00"),
--               (OP_NOP & x"00" & x"02" & x"00"),
               
    
                       
--               (OP_STORE & x"00" & x"07" & x"01"),           --[0x00] = R7 = 0x40  
--               (OP_NOP & x"00" & x"00" & x"00"),
--               (OP_NOP & x"00" & x"00" & x"00"),
--               (OP_NOP & x"00" & x"00" & x"00"),
--               (OP_LOAD & x"07" & x"00" & x"01"),             --R7     = [0x00] = 0x40
              
--               (OP_NOP & x"00" & x"00" & x"00"),
--               (OP_NOP & x"00" & x"00" & x"00"),
--               (OP_NOP & x"00" & x"00" & x"00"),
               
--               (OP_STORE & x"FF" & x"02" & x"01"),           --[0xFF] = R2 = 0x10       
--               (OP_NOP & x"00" & x"02" & x"00"),
--               (OP_NOP & x"00" & x"02" & x"00"),
--               (OP_NOP & x"00" & x"02" & x"00"),    
--               (OP_LOAD  & x"01" & x"FF" & x"01"),             --R1     = [0xFF] = 0x10   
               
                             
--               (OP_STORE   &  x"08" & x"00" & x"01"), 
--               (OP_LOAD    & x"08" & x"00" & x"01"), 
                
--               (OP_AFC & x"06" & x"13" & x"00"), 
--               (OP_AFC & x"00" & x"09" & x"00"),              
--               (OP_AFC & x"02" & x"23" & x"00"), 
--               (OP_AFC & x"06" & x"33" & x"00"), 
               
               
--               (OP_ADD & x"00" & x"01" & x"02"), 

               
--               (OP_NOP & x"00" & x"02" & x"01"),
--               (OP_ADD & x"01" & x"02" & x"00"), 
--               (OP_MUL & x"02" & x"02" & x"00"), 
--               (OP_SOU & x"03" & x"02" & x"00"),
               
--               (OP_COP & x"04" & x"02" & x"00"),
--               (OP_AFC & x"05" & x"02" & x"00"), 
--               (OP_LOAD & x"06" & x"02" & x"00"), 
--               (OP_STORE & x"07" & x"02" & x"00"),
               
--               (OP_SOU & x"01" & x"02" & x"01"),
--               (OP_NOP & x"01" & x"02" & x"00"), 
--               (OP_NOP & x"01" & x"02" & x"00"), 
--               (OP_NOP & x"01" & x"02" & x"00"),
               
--               (OP_COP & x"01" & x"02" & x"00"),
--               (OP_NOP & x"01" & x"02" & x"00"), 
--               (OP_NOP & x"01" & x"02" & x"00"), 
--               (OP_NOP & x"01" & x"02" & x"00"),
               
--               (OP_AFC & x"01" & x"02" & x"00"),        
               
               others => (others => '0')
        );
begin
    process(CLK)
    begin
        if (rising_edge(CLK)) then
            INSTR <= memoire_instruction(TO_INTEGER(UNSIGNED(ADDRESS)));
        end if;
    end process;
end Behavioral;

