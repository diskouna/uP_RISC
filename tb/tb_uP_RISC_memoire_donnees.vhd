library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_uP_RISC_memoire_donnee is
-- Pas de ports pour un banc d'essai
end tb_uP_RISC_memoire_donnee;

architecture behavior of tb_uP_RISC_memoire_donnee is
    -- Déclaration du composant à tester
    component uP_RISC_memoire_donnee
        Port (
            CLK : in STD_LOGIC;
            RST : in STD_LOGIC;
            RW  : in STD_LOGIC;
            DATA_IN  : in std_logic_vector(7 downto 0);
            ADDRESS : in STD_LOGIC_VECTOR (7 downto 0);
            DATA_OUT : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;

    -- Signaux pour simuler les entrées/sorties du composant
    signal CLK, RST, RW : std_logic := '0';
    signal DATA_IN, DATA_OUT : std_logic_vector(7 downto 0);
    signal ADDRESS : std_logic_vector(7 downto 0);

begin
    -- Instanciation du composant avec les signaux mappés
    uut: uP_RISC_memoire_donnee port map (
        CLK => CLK,
        RST => RST,
        RW => RW,
        DATA_IN => DATA_IN,
        ADDRESS => ADDRESS,
        DATA_OUT => DATA_OUT
    );

    RST <= '1';
    
    -- Processus de test
    test_process: process
    begin
        RW <= '0';
        DATA_IN <= (others => '0');
        ADDRESS <= (others => '0');
        wait for 10 ns;

        -- Écriture d'une donnée
        RW <= '1';
        DATA_IN <= "10101010";
        ADDRESS <= "00000001";
        wait for 10 ns;

        -- Lecture de la donnée
        RW <= '0';
        wait for 10 ns;

        -- Fin du test
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
