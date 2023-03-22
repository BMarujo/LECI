library IEEE;
use IEEE. STD LOGIC_1164. all ; use IEEE. NUMERIC_STD. all;

Bentity Cntup is
	port (clk : in std logic;
			reset: in std logic;
			enable: in std logic;
			cntval: out std_logic_vector (29 downto 0));
end Cntup;

Barchitecture Behavioral of Cntup is
	signal s_cntval : unsigned (29 downto 0);
begin
process (clk)
	begin 
		if (rising_edge(clk)) then
			if (reset = '1') then
		s_cntval <= (others => '0');
		elsif (enable = '1') then s_cntval <= s_cntval + 1;


		end if;
	end if;


end process;

cntval <= std_logic_vector (s_cntval);
