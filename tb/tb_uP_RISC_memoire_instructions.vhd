library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_uP_RISC_memoire_instructions is
-- Pas de ports pour un banc d'essai
end tb_uP_RISC_memoire_instructions;

architecture behavior of tb_uP_RISC_memoire_instructions is
    -- Déclaration du composant mémoire d'instructions
    component uP_RISC_memoire_instructions
        Port (
            CLK    : in STD_LOGIC;
            ADDRESS : in STD_LOGIC_VECTOR (7 downto 0);
            INSTR  : out STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;

    -- Signaux pour simuler les entrées/sorties du composant
    signal CLK : std_logic := '0';
    signal ADDRESS : STD_LOGIC_VECTOR (7 downto 0);
    signal INSTR : std_logic_vector(31 downto 0);

begin
    -- Instanciation du composant
    uut: uP_RISC_memoire_instructions port map (
        CLK => CLK,
        ADDRESS => ADDRESS,
        INSTR => INSTR
    );

    -- Processus de test
    test_process: process
    begin
        ADDRESS <= (others => '0');
        wait for 10 ns;
        
        ADDRESS <= "00000001"; 
        wait for 10 ns;

        ADDRESS <= "00000010";
        wait for 10 ns;

        -- Terminer le test
        wait;
    end process test_process;

    -- Génération du signal d'horloge
    clk_process : process
    begin
        while true loop
            CLK <= '0';
            wait for 5 ns;
            CLK <= '1';
            wait for 5 ns;
        end loop;
    end process clk_process;
end behavior;
