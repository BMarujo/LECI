library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Winner is
	port ( win : in STD_LOGIC;
		    output : out STD_LOGIC);
end Winner;

architecture Behavioral of Winner is
begin
	process(win)
	begin
		if(win = '1') then
			output <= '1';
		else
			output <= '0';
		end if;
	end process;
end Behavioral;