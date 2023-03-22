library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Dec2_4EnDemo2 is
	port(	SW : in std_logic_vector(2 downto 0);
			LEDG : out std_logic_vector(3 downto 0));
end Dec2_4EnDemo2;

architecture Shell of Dec2_4EnDemo2 is
begin
	system_core : entity work.Dec2_4En(BehavEquations)
	port map(enable => SW(2),
				input  => SW(1 downto 0),
				output => LEDG(3 downto 0));
end Shell; 
