library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity uP_RISC_banc_de_registres is
    Port (
           Address_A : in STD_LOGIC_VECTOR (3 downto 0);    -- Adresse de lecture port A
           Address_B : in STD_LOGIC_VECTOR (3 downto 0);    -- Adresse de lecture port B
           Address_W : in STD_LOGIC_VECTOR (3 downto 0);    -- Adresse d'écriture
           W         : in STD_LOGIC;                        -- Signal d'écriture
           DATA      : in STD_LOGIC_VECTOR (7 downto 0);    -- Donnée à écrire
           RST       : in STD_LOGIC;                        -- Signal de réinitialisation
           CLK       : in STD_LOGIC;                        -- Horloge d'entrée
           Q_A       : out STD_LOGIC_VECTOR (7 downto 0);   -- Sortie du port A
           Q_B       : out STD_LOGIC_VECTOR (7 downto 0);   -- Sortie du port B
           
           --Debug
          debug_address    : in std_logic_vector  (3 downto 0);   --[Optional]
          debug_reg_output : out STD_LOGIC_VECTOR (7 downto 0)    --[Optional]   
    );
end uP_RISC_banc_de_registres;

architecture Behavioral_Async_R of uP_RISC_banc_de_registres is  
    type registers_t is array (0 to 15) of std_logic_vector(7 downto 0);
    signal registers : registers_t := (others =>(others => '0'));
begin
    --Note : La lecture n'est pas contrôlée par le signal W
    -- Opérations de lecture "asynchrone"

    Q_A <=   DATA  when(W = '1' and ADDRESS_W = ADDRESS_A) else 
          registers(to_integer(unsigned(ADDRESS_A)));    
           
    Q_B <=   DATA  when(W = '1' and ADDRESS_W = ADDRESS_B) else 
          registers(to_integer(unsigned(ADDRESS_B)));
      
    process (CLK) 
    begin
        if (rising_edge(CLK)) then 
        -- RISING EDGE
            if (RST = '0')  then 
            -- RESET
                registers <= (others => x"00");
            elsif (W = '1') then
            -- Opération d'écriture
                registers(to_integer(unsigned(ADDRESS_W))) <= DATA;
            end if;
        end if;
    end process;
    
    --Debug            
    debug_reg_output <= registers(to_integer(unsigned(debug_address))); 
end Behavioral_Async_R;
