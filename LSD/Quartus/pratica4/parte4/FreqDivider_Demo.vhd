library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all; 

entity FreqDivider_Demo is

	port( CLOCK_50: in std_logic;
			LEDR: out std_logic_vector(0 downto 0));
			
end FreqDivider_Demo;

architecture Behavioral of FreqDivider_Demo is
begin

		fd : entity work.FreqDivider(Behavioral)
			   port map( clkOut => LEDR(0),
							clkIn => CLOCK_50,
							k=>x"017D7840");
							
end Behavioral;

