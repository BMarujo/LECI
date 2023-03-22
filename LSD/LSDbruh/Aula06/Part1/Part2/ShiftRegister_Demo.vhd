library IEEE;
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftRegister_Demo is
	generic (   N : positive := 8);
	port(CLOCK_50 : in std_logic;
	        SW(0) : in std_logic;
	         LEDR : out std_logic_vector((N-1) downto 0));
end ShiftRegister_Demo;

architecture omg of ShiftRegister_Demo is
	signal clok : std_logic
begin	
	entity work.ClkDivider(Structural)
	generic map(divFactor => 50000000)
	port map( clkIn => CLOCK_50,
				 clkOut => clok);
	entity work.ShiftReg4(Behavior)
	generic map( N => 8)
	port map( clk => clok,
				 Sin => SW(0),
			dataOut => LEDR);
end omg;
 