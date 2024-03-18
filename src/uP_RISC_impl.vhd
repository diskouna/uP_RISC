library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity uP_RISC_impl is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           
           --Debug
           debug_address     : in std_logic_vector  (7 downto 0); 
           debug_unit_select : in std_logic;
           aff : out STD_LOGIC_VECTOR (11 downto 0)
          );
end uP_RISC_impl;

architecture Behavioral of uP_RISC_impl is
    component uP_RISC_core is
        Port ( clk          : in STD_LOGIC;
               rst          : in STD_LOGIC;
               
               --Debug
              debug_address     : in std_logic_vector  (7 downto 0); 
               debug_unit_select : in std_logic;           -- '0' : debug register, '1' : debug memory
               debug_output          : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;
    
    component afficheur_7Seg is
        Port ( clk   : in STD_LOGIC;  --100MHz --> @xdc file
               input : in std_logic_vector(7 downto 0);
               aff   : out STD_LOGIC_VECTOR (11 downto 0)
              );
    end component;
    
    signal debug_output : std_logic_vector(7 downto 0);
    signal clk_10Hz : std_logic := '0';
begin

    GENERATE_CLK_10KHz : 
    process (clk)
        -- input clk is a 100Mhz clock
        variable i : integer := 0;
    begin
        if (rising_edge(clk)) then
            if (i < 5000000) then
                clk_10Hz <= '0';
            else
                clk_10Hz <= '1';
            end if;
            
            i := i + 1;
            if (i = 10000000) then
                i := 0;
            end if;
        end if;
    end process;
    
    PROCESSOR  : uP_RISC_core port map (
        clk                  => clk_10Hz,
        rst                  => rst,
        debug_address        => debug_address,
        debug_unit_select    => debug_unit_select,
        debug_output         => debug_output
    );
      
    DISPLAY    : afficheur_7Seg port map (
        clk   => clk,
        input => debug_output,
        aff   => aff
    );

end Behavioral;
