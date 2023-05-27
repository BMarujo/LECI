library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity controlo is

	

	port(Tref: in std_logic_vector(8 downto 0);
			Tamb: in std_logic_vector(8 downto 0);
			clk: in std_logic;
			rad: out std_logic);
			
end controlo;



architecture Behavioral of controlo is


begin 


	process(clk)
	
	
		if rising_edge(clk) then
		
		
			if (Tref > Tamb) then
			
				rad <= '1';
				
			else
			
				rad <= '0';
			
			end if;
			
		end if;
	
	end process;



end Behavioral;





