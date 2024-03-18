library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.uP_RISC_util.ALL;

entity uP_RISC_alu is
    Port ( ALU_CTRL  :  in STD_LOGIC_VECTOR (2 downto 0);  -- Signal de controle de l'operation à eefectuer
           ALU_A     :  in STD_LOGIC_VECTOR (7 downto 0);  -- Operande 1 de l'operation  (obligatoire)
           ALU_B     :  in STD_LOGIC_VECTOR (7 downto 0);  -- Opérande 2 de l'opération (facultatif pour le NOT)
           ALU_S     : out STD_LOGIC_VECTOR (7 downto 0);  -- Resultat de l'operation
           ALU_FLAGS : out STD_LOGIC_VECTOR (3 downto 0)   -- Flags   ALU_FLAGS  : C  V  N  Z  
                                                           --                      3  2  1  0
    );
end uP_RISC_alu;

architecture Behavioral of uP_RISC_alu is
     signal ALU_AUX : std_logic_vector(15 downto 0);        -- Signal intermediaire pour effectuer les operations sur 16 bits 
begin
     
    with ALU_CTRL select
        ALU_AUX <= std_logic_vector(signed(x"00" & ALU_A) + signed(x"00" & ALU_B)) when ALU_ADD,    -- ADDITION
                   std_logic_vector(signed(x"00" & ALU_A) - signed(x"00" & ALU_B)) when ALU_SOU,    -- SOUSTRACTION
                   std_logic_vector(signed(ALU_A) * signed(ALU_B))                 when ALU_MUL,    -- MULTIPLICATION
                                                                                        
                   x"00" & (ALU_A  and  ALU_B)                                     when ALU_AND,    -- BITWISE AND
                   x"00" & (ALU_A   or  ALU_B)                                     when ALU_OR,     -- BITWISE OR
                   x"00" & (ALU_A  xor  ALU_B)                                     when ALU_XOR,    -- BITWISE XOR
                   x"00" & not  (ALU_A)                                            when ALU_NOT,    -- BITWISE NOT
                 
                   (others => '0')                                                 when others;     -- UNDEFINED
     
     -- Z : Zero flag
     ALU_FLAGS(0) <= '1' when (ALU_CTRL /= ALU_NOP and ALU_AUX(7 downto 0) = x"00") else '0';
     -- N : Negative flag                
     ALU_FLAGS(1) <= ALU_AUX(7);
     -- V : Multiplication overflow flag
     ALU_FLAGS(2) <= '1' when (ALU_CTRL /= ALU_NOP and ALU_CTRL = "010"  and  ALU_AUX(15 downto 8) /= x"00") else '0'; 
     -- V : Addition carry flag
     ALU_FLAGS(3) <= '1' when (ALU_CTRL /= ALU_NOP and ALU_CTRL = "000" and  ALU_AUX(15 downto 8) /= x"00") else '0';         
     
     ALU_S <= ALU_AUX(7 downto 0);         

end Behavioral;
