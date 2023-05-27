library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecoder_invert is
	port(binInput	: out  std_logic_vector(3 downto 0);
		 decOut_n	: in std_logic_vector(6 downto 0));
end Bin7SegDecoder_invert;

architecture RTL of Bin7SegDecoder_invert is

	signal s_decOut_n : std_logic_vector(3 downto 0);

begin
	with decOut_n select
		s_decOut_n <= "0001" when "1111001",   --1
						  "0010" when "0100100",   --2
						  "0011" when "0110000",   --3
						  "0100" when "0011001",   --4
						  "0101" when "0010010",   --5
						  "0110" when "0000010",   --6
						  "0111" when "1111000",   --7
						  "1000" when "0000000",   --8
						  "1001" when "0010000",   --9
						  "1010" when "0001000",   --A
						  "1011" when "0000011",   --b
						  "1100" when "1000110",   --C
						  "1101" when "0100001",   --d
						  "1110" when "0000110",   --E
						  "1111" when "0001110",   --F
						  "0000" when others;   --0

	binInput <= s_decOut_n;
end RTL;
