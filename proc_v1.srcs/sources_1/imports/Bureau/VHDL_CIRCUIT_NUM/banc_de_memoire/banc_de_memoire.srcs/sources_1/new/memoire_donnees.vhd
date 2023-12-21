library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity memoire_donnee is
    Port ( 
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           RW  : in STD_LOGIC;
           DATA_IN  : in std_logic_vector(7 downto 0);
           ADDRESS : in STD_LOGIC_VECTOR (7 downto 0);
           DATA_OUT : out STD_LOGIC_VECTOR (7 downto 0)
         );
end memoire_donnee;

architecture Behavioral of memoire_donnee is
    type t_memoire_donnee is array (0 to 255) of std_logic_vector(7 downto 0);
    signal memoire_donnee : t_memoire_donnee;
begin
    --Asynchronous Reading
--    DATA_OUT <= memoire_donnee(TO_INTEGER(UNSIGNED(ADDRESS)));
    
    process(CLK)
    begin  
        -- Writing    
        if (rising_edge(CLK)) then
            if (RST = '1') then
                if (RW = '1') then
                    memoire_donnee(TO_INTEGER(UNSIGNED(ADDRESS))) <= DATA_IN;
                end if;
            end if;
        end if;
        -- Reading
        if (falling_edge(CLK)) then 
              if (RW = '0') then
                  DATA_OUT <= memoire_donnee(TO_INTEGER(UNSIGNED(ADDRESS)));
             end if;
        end if;
    end process;   
end Behavioral;


---- Single-Port Block RAM Write-First Mode (recommended template)
----
---- File: rams_sp_wf.vhd
----
--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;

--entity memoire_donnee is
--port(
--clk : in std_logic;
--we : in std_logic;
--addr : in std_logic_vector(7 downto 0);
--di : in std_logic_vector(7 downto 0);
--do : out std_logic_vector(7 downto 0)
--);end memoire_donnee;

--architecture syn of memoire_donnee is
--type ram_type is array (0 to 255) of std_logic_vector(7 downto 0);
--signal RAM : ram_type;
--begin
--process(clk)
--begin
--if rising_edge(clk) then
--if we = '1' then
--RAM(to_integer(unsigned(addr))) <= di;
--do <= di;
--else
--do <= RAM(to_integer(unsigned(addr)));
--end if;
--end if;
--end process;

--end syn;

