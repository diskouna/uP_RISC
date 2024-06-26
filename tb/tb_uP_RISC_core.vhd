library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.uP_RISC_util.ALL;

entity tb_uP_RISC_core is
--  Port ( );
end tb_uP_RISC_core;


architecture Behavioral of tb_uP_RISC_core is
    component uP_RISC_core is
        Port ( clk          : in STD_LOGIC;
               rst          : in STD_LOGIC;
               
               --Debug
              debug_address     : in std_logic_vector  (7 downto 0); 
              debug_unit_select : in std_logic;           -- '0' : debug register, '1' : debug memory
              debug_output          : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;
    
    signal clk, rst, debug_unit_select : std_logic := '0';
    signal debug_address, debug_output: std_logic_vector(7 downto 0);
    
begin
    rst <= '1';
    clk <= not clk after 5ps;
    
    debug_unit_select <= '0';
    debug_address     <= R9;
    
    UUT : uP_RISC_core port map (
        clk => clk,
        rst => rst,
        debug_address =>debug_address,
        debug_unit_select => debug_unit_select,
        debug_output => debug_output
        );

end Behavioral;
