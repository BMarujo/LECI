library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AddSub4 is
	port(   a, b  : in std_logic_vector(3 downto 0);
		     sub   : in std_logic;
           count : out std_logic;
            s    : out std_logic_vector(3 downto 0));
end AddSub4;

architecture bruh of AddSub4 is
	signal s_b : std_logic_vector(3 downto 0);
	begin
		hey: entity work.Adder4(Structural)
			port map( In0     => a,
						 In1     => s_b,
						 carryIn => sub,
						 sum     => s,
						 cfin    => count);
	s_b <=  b when (sub = '0') else not b;
end bruh; 