library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity NexAlu is
	port(a, b : in std_logic_vector(3 downto 0);
			 op : in std_logic_vector(2 downto 0);
		  m, r : out std_logic_vector(3 downto 0);
	 displayH : out std_logic_vector(6 downto 0);
	 displayL : out std_logic_vector(6 downto 0));
end NexAlu;

architecture Behavioral of NexAlu is
	signal s_a, s_b, s_r: unsigned(3 downto 0);
	signal s_m : unsigned(7 downto 0);
	signal bcd : std_logic_vector(4 downto 0);
	signal b_0 : std_logic_vector(3 downto 0);
	signal b_1 : std_logic;
begin
	s_a <= unsigned(a);
	s_b <= unsigned(b);
	
	s_m <= s_a * s_b;
	
 with op select
		s_r <= s_a + s_b when "000",
				 s_a - s_b when "001",
				 s_m(3 downto 0) when "010",
				 s_a / s_b when "011",
				 s_a rem s_b when "100",
				 s_a and s_b when "101",
				 s_a or s_b when "110",
				 s_a xor s_b when "111";
				 
 r <= std_logic_vector(s_r);
 
 m <= std_logic_vector(s_m(7 downto 4)) when (op = "010") else
		(others => '0');
		
	  bcd <= "00001" when (s_r = "0001") else --1
				"00010" when (s_r = "0010") else --2
				"00011" when (s_r = "0011") else --3
				"00100" when (s_r = "0100") else --4
				"00101" when (s_r = "0101") else --5
				"00110" when (s_r = "0110") else --6
				"00111" when (s_r = "0111") else --7
				"01000" when (s_r = "1000") else --8
				"01001" when (s_r = "1001") else --9
				"10000" when (s_r = "1010") else --A
				"10001" when (s_r = "1011") else --b
				"10010" when (s_r = "1100") else --C
				"10011" when (s_r = "1101") else --D
				"10100" when (s_r = "1110") else --E
				"10101" when (s_r = "1111") else --F
				"00000"; --0
				
 b_0 <=  std_logic_vector(bcd(3 downto 0));
 b_1 <=  std_logic(bcd(4));
 
   displayL  <= "1111001" when (b_0 = "0001") else --1
					 "0100100" when (b_0 = "0010") else --2
					 "0110000" when (b_0 = "0011") else --3
					 "0011001" when (b_0 = "0100") else --4
					 "0010010" when (b_0 = "0101") else --5
					 "0000010" when (b_0 = "0110") else --6
					 "1111000" when (b_0 = "0111") else --7
					 "0000000" when (b_0 = "1000") else --8
					 "0010000" when (b_0 = "1001") else --9
					 "1000000"; --0
					
	displayH <= "1111001" when (b_1 = '1') else
					"1111111";

end Behavioral; 