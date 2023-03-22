library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity AdderN is 
	generic(N : positive := 4);
	port(in0  : in std_logic_vector((N-1) downto 0);
		  in1  : in std_logic_vector((N-1) downto 0);
			s   : out std_logic_vector((N-1) downto 0));
end AdderN;

architecture Behavioral of AdderN is
	signal s_0, s_1, s_s : unsigned((N-1) downto 0);
begin
	s_0 <= unsigned(in0);
	s_1 <= unsigned(in1);
	s_s <= s_0 + s_1;
	s <= std_logic_vector(s_s);
end Behavioral;