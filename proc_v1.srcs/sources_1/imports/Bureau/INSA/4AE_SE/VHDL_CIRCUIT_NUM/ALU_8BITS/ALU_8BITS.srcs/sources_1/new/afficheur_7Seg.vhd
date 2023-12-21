library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity afficheur_7Seg is
    Port ( 
           clk   : in STD_LOGIC;  --100MHz --> @xdc file
           input : in std_logic_vector(7 downto 0);
           aff   : out STD_LOGIC_VECTOR (11 downto 0)
          );
end afficheur_7Seg;

architecture Behavioral of afficheur_7Seg is
---                                                         DpGFEDCBA                 
--    Digit
    constant ZERO_DIGIT   : std_logic_vector(7 downto 0) := "11000000";
    constant ONE_DIGIT    : std_logic_vector(7 downto 0) := "11111001";
    constant TWO_DIGIT    : std_logic_vector(7 downto 0) := "10100100";
    constant THREE_DIGIT  : std_logic_vector(7 downto 0) := "10110000";
    constant FOUR_DIGIT   : std_logic_vector(7 downto 0) := "10011001";
    constant FIVE_DIGIT   : std_logic_vector(7 downto 0) := "10010010";
    constant SIX_DIGIT    : std_logic_vector(7 downto 0) := "10000010";
    constant SEVEN_DIGIT  : std_logic_vector(7 downto 0) := "11111000";
    constant EIGHT_DIGIT  : std_logic_vector(7 downto 0) := "10000000"; 
    constant NINE_DIGIT   : std_logic_vector(7 downto 0) := "10010000";
    
--   Character    
--  We use dp(decimal point) for characters displaying to avoid any ressemblance with a digit
    constant MINUS_CHAR   : std_logic_vector(7 downto 0) :=  "00111111";
    constant A_CHAR       : std_logic_vector(7 downto 0) :=  "00001000";
    constant B_CHAR       : std_logic_vector(7 downto 0) :=  "00000000";
    constant C_CHAR       : std_logic_vector(7 downto 0) :=  "01000110";
    constant D_CHAR       : std_logic_vector(7 downto 0) :=  "01000000";
    constant E_CHAR       : std_logic_vector(7 downto 0) :=  "00000110";
    constant F_CHAR       : std_logic_vector(7 downto 0) :=  "00001110";
    constant X_CHAR       : std_logic_vector(7 downto 0) :=  "00001001";
    signal segment_0, segment_1, segment_2, segment_3 : std_logic_vector(7 downto 0) := (others => '0');
    signal clock_1KHz    : std_logic := '0';
begin
    
    GENERATE_1KHz_Clock:
    process (clk)
       variable compteur : integer := 0;
    begin
        if (rising_edge(clk)) then
            if (compteur < 50000) then   
                clock_1KHz <= '0';
            else 
                clock_1KHz <= '1';               
            end if;
            compteur := compteur + 1;
            if (compteur = 100000) then
                compteur := 0;
            end if;
        end if;    
    end process; 
    
    process (clock_1KHz)
        variable i : integer := 0; 
    begin
        if (rising_edge(clock_1KHz)) then     
            if (i = 0) then
                aff <= "1110" & segment_0;
                i := 1;
            elsif (i = 1) then
                aff <= "1101" & segment_1;
                i := 2; 
            elsif (i = 2) then
                aff <= "1011" & segment_2;
                i := 3;
            elsif (i = 3) then
                aff <= "0111" & segment_3;
                i := 0;
            end if;
        end if;                     
    end process;
    
-- process input
    -- segment 0
    with input(3 downto 0) select
      segment_0 <= ZERO_DIGIT  when (std_logic_vector(to_unsigned(0, 4))),
                   ONE_DIGIT   when (std_logic_vector(to_unsigned(1, 4))),
                   TWO_DIGIT   when (std_logic_vector(to_unsigned(2, 4))),
                   THREE_DIGIT when (std_logic_vector(to_unsigned(3, 4))),
                   FOUR_DIGIT  when (std_logic_vector(to_unsigned(4, 4))),
                   FIVE_DIGIT  when (std_logic_vector(to_unsigned(5, 4))),
                   SIX_DIGIT   when (std_logic_vector(to_unsigned(6, 4))),
                   SEVEN_DIGIT when (std_logic_vector(to_unsigned(7, 4))),
                   EIGHT_DIGIT when (std_logic_vector(to_unsigned(8, 4))),
                   NINE_DIGIT  when (std_logic_vector(to_unsigned(9, 4))),  
                   A_CHAR      when (std_logic_vector(to_unsigned(10, 4))), 
                   B_CHAR      when (std_logic_vector(to_unsigned(11, 4))), 
                   C_CHAR      when (std_logic_vector(to_unsigned(12, 4))), 
                   D_CHAR      when (std_logic_vector(to_unsigned(13, 4))), 
                   E_CHAR      when (std_logic_vector(to_unsigned(14, 4))), 
                   F_CHAR      when (std_logic_vector(to_unsigned(15, 4)));

     -- segment 1                    
     with input(7 downto 4) select
      segment_1 <= ZERO_DIGIT  when (std_logic_vector(to_unsigned(0, 4))),
                   ONE_DIGIT   when (std_logic_vector(to_unsigned(1, 4))),
                   TWO_DIGIT   when (std_logic_vector(to_unsigned(2, 4))),
                   THREE_DIGIT when (std_logic_vector(to_unsigned(3, 4))),
                   FOUR_DIGIT  when (std_logic_vector(to_unsigned(4, 4))),
                   FIVE_DIGIT  when (std_logic_vector(to_unsigned(5, 4))),
                   SIX_DIGIT   when (std_logic_vector(to_unsigned(6, 4))),
                   SEVEN_DIGIT when (std_logic_vector(to_unsigned(7, 4))),
                   EIGHT_DIGIT when (std_logic_vector(to_unsigned(8, 4))),
                   NINE_DIGIT  when (std_logic_vector(to_unsigned(9, 4))),  
                   A_CHAR      when (std_logic_vector(to_unsigned(10, 4))), 
                   B_CHAR      when (std_logic_vector(to_unsigned(11, 4))), 
                   C_CHAR      when (std_logic_vector(to_unsigned(12, 4))), 
                   D_CHAR      when (std_logic_vector(to_unsigned(13, 4))), 
                   E_CHAR      when (std_logic_vector(to_unsigned(14, 4))), 
                   F_CHAR      when (std_logic_vector(to_unsigned(15, 4))); 
    
   -- Format : Hexadecimal           
   segment_2 <= X_CHAR;
   segment_3 <= ZERO_DIGIT; 
    
end Behavioral;
