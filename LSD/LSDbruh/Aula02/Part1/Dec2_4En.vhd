library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Dec2_4En is
	port(	enable : in std_logic;
			input	 : in std_logic_vector(1 downto 0);
			output : out std_logic_vector(3 downto 0)); 
end Dec2_4En;

architecture BehavEquations of Dec2_4En is
begin
	output(0) <= enable	and (not input(0)) and (not input(1));
	output(1) <= enable	and input(0) 		 and (not input(1));
	output(2) <= enable	and (not input(0)) and input(1);
	output(3) <= enable	and input(0) 	    and input(1);
end BehavEquations;

architecture BehavAssign of Dec2_4En is
begin
	output <= "0000" when (enable = '0') else
				 "0001" when (input = "00") else
				 "0010" when (input = "01") else
				 "0100" when (input = "10") else
				 "1000";
end BehavAssign; 
	