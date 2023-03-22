library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RegN is

	generic (N : positive :=4);
	port (dataIn : in std_logic_vector ((N-1) downto 0);
			enable : in std_logic;
			reset : in std_logic;
			dataOut : out std_logic_vector ((N-1) downto 0);
			clock : in std_logic);	
end RegN;


architecture Behavioral of RegN is
begin

	process (clock)
	begin
		if rising_edge (clock) then
			if (reset = '1') then
				dataOut <= (others => '0');
			elsif (enable = '1') then
				dataOut <= dataIn;
			end if;
		end if;
	end process;

end Behavioral;