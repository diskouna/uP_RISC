library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity uP_RISC_memoire_donnee is
    Port ( 
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           RW  : in STD_LOGIC;
           DATA_IN  : in std_logic_vector(7 downto 0);
           ADDRESS : in STD_LOGIC_VECTOR (7 downto 0);
           DATA_OUT : out STD_LOGIC_VECTOR (7 downto 0)
         );
end uP_RISC_memoire_donnee;

architecture Behavioral of uP_RISC_memoire_donnee is
    type t_memoire_donnee is array (0 to 255) of std_logic_vector(7 downto 0);
    signal uP_RISC_memoire_donnee : t_memoire_donnee;
begin    
    process(CLK)
    begin  
        -- Writing    
        if (rising_edge(CLK)) then
            if (RST = '1') then
                if (RW = '1') then
                    uP_RISC_memoire_donnee(TO_INTEGER(UNSIGNED(ADDRESS))) <= DATA_IN;
                end if;
            end if;
        end if;
        -- Reading
        if (falling_edge(CLK)) then 
              if (RW = '0') then
                  DATA_OUT <= uP_RISC_memoire_donnee(TO_INTEGER(UNSIGNED(ADDRESS)));
             end if;
        end if;
    end process;   
end Behavioral;

