library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


use work.uP_RISC_util.ALL;

entity tb_uP_RISC_banc_de_registres is
end tb_uP_RISC_banc_de_registres;

architecture behavior of tb_uP_RISC_banc_de_registres is
    component uP_RISC_banc_de_registres
        Port (
            Address_A : in STD_LOGIC_VECTOR (3 downto 0);
            Address_B : in STD_LOGIC_VECTOR (3 downto 0);
            Address_W : in STD_LOGIC_VECTOR (3 downto 0);
            W         : in STD_LOGIC;
            DATA      : in STD_LOGIC_VECTOR (7 downto 0);
            RST       : in STD_LOGIC;
            CLK       : in STD_LOGIC;
            Q_A       : out STD_LOGIC_VECTOR (7 downto 0);
            Q_B       : out STD_LOGIC_VECTOR (7 downto 0);
                       
           --Debug
          debug_address    : in std_logic_vector  (3 downto 0);   --[Optional]
          debug_reg_output : out STD_LOGIC_VECTOR (7 downto 0)    --[Optional] 
        );
    end component;

    signal CLK, RST, W : std_logic := '0';
    signal Address_A, Address_B, Address_W : std_logic_vector(3 downto 0);
    signal DATA, Q_A, Q_B : std_logic_vector(7 downto 0);

begin
    uut: uP_RISC_banc_de_registres port map (
        Address_A => Address_A,
        Address_B => Address_B,
        Address_W => Address_W,
        W => W,
        DATA => DATA,
        RST => RST,
        CLK => CLK,
        Q_A => Q_A,
        Q_B => Q_B,
                   
        --Debug
        debug_address => x"0",   
        debug_reg_output => open
  
    );

    RST <= '1';
    
    test_process: process
    begin

        W <= '0';
        DATA <= (others => '0');
        Address_A <= (others => '0');
        Address_B <= (others => '0');
        Address_W <= (others => '0');
        wait for 10 ns;


        W <= '1';
        DATA <= "10101010";
        Address_W <= "0001";
        wait for 10 ns;

        W <= '0';
        Address_B <= "0001";
        wait for 10 ns;
        
        W <= '1';
        DATA <= "00000011";
        Address_W <= "0001";
        wait for 10 ns;

        W <= '1';
        Address_B <= "0001";
        wait for 10 ns;

        wait;
    end process test_process;

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
