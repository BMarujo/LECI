library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Adder4 is
	port(In0, In1 : in std_logic_vector(3 downto 0);
		   carryIn : in std_logic;
           sum   : out std_logic_vector(3 downto 0);
          cfin   : out std_logic);
end Adder4;

architecture Behavioral of AddSub4 is
	signal s_a, s_b, s_s : unsigned(4 downto 0);
begin
	s_a <= '0' & unsigned(a); 
	s_b <= '0' & unsigned(b); 
	s_s <= (s_a + s_b) when (sub = '0') else
				(s_a - s_b);
	s <= std_logic_vector(s_s(3 downto 0));
	cout <= s_s(4);
end Behavioral; 

