library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.uP_RISC_util.ALL;

entity tb_uP_RISC_alu is
end tb_uP_RISC_alu;

architecture behavior of tb_uP_RISC_alu is
    component uP_RISC_alu
        Port (
            ALU_CTRL  : in STD_LOGIC_VECTOR (2 downto 0);
            ALU_A     : in STD_LOGIC_VECTOR (7 downto 0);
            ALU_B     : in STD_LOGIC_VECTOR (7 downto 0);
            ALU_S     : out STD_LOGIC_VECTOR (7 downto 0);
            ALU_FLAGS : out STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;

    signal ALU_CTRL : std_logic_vector(2 downto 0);
    signal ALU_A, ALU_B, ALU_S : std_logic_vector(7 downto 0);
    signal ALU_FLAGS : std_logic_vector(3 downto 0);

begin
    uut: uP_RISC_alu port map (
        ALU_CTRL => ALU_CTRL,
        ALU_A => ALU_A,
        ALU_B => ALU_B,
        ALU_S => ALU_S,
        ALU_FLAGS => ALU_FLAGS
    );

    test_process: process
    begin
        -- Test pour une opération d'addition
        ALU_CTRL <= ALU_ADD; -- Addition
        ALU_A <= "00000101"; -- 5
        ALU_B <= "00000011"; -- 3
        wait for 10 ns;
        
        -- Test pour une opération de soustraction
        ALU_CTRL <= ALU_SOU; -- Soustraction
        ALU_A <= "00000101"; -- 5
        ALU_B <= "00000011"; -- 3
        wait for 10 ns;
        
        -- Test pour une opération de multiplication
        ALU_CTRL <= ALU_MUL; -- Multiplication
        ALU_A <= "00000101"; -- 5
        ALU_B <= "00000011"; -- 3
        wait for 10 ns;
        
        -- Test pour une opération de AND
        ALU_CTRL <= ALU_AND; -- AND
        ALU_A <= "00000101"; -- 5
        ALU_B <= "00000011"; -- 3
        wait for 10 ns;
        
        -- Test pour une opération de OR
        ALU_CTRL <= ALU_OR; -- OR
        ALU_A <= "00000101"; -- 5
        ALU_B <= "00000011"; -- 3
        wait for 10 ns;
        
        -- Test pour une opération de XOR
        ALU_CTRL <= ALU_XOR; -- XOR
        ALU_A <= "00000101"; -- 5
        ALU_B <= "00000011"; -- 3
        wait for 10 ns;
        
        -- Test pour une opération de NOT
        ALU_CTRL <= ALU_NOT; -- NOT
        ALU_A <= "00000101"; -- 5
        wait for 10 ns;
        
        wait;
    end process test_process;
end behavior;
