library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all; 

entity FreqDivider is
	 port(clkIn : in std_logic;
		 k : in std_logic_vector(31 downto 0);
		 clkOut : out std_logic);
end FreqDivider;
architecture Behavioral of FreqDivider is
	 signal s_counter : unsigned(31 downto 0);
	 signal s_halfWay : unsigned(31 downto 0);
begin
	s_halfWay <= (unsigned(k) / 2);

	process(clkIn)
	begin
		if (rising_edge(clkIn)) then
			s_counter <= s_counter + 1;
			if (s_counter = s_halfWay) then
                clkOut <= '1';
         elsif (s_counter = unsigned(k) - 1) then
               clkOut <= '0';
               s_counter <= (others => '0');
			end if;	
		end if;
	end process;
end Behavioral; 