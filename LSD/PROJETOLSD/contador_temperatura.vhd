library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity contador_temperatura is

	port(rad: in std_logic;
			clk: in std_logic;
			dezenas : out std_logic_vector(3 downto 0);
			unidades : out std_logic_vector (3 downto 0);
			decimas: out std_logic_vector(3 downto 0);
			count: out  std_logic_vector(8 downto 0));
			
end contador_temperatura;



architecture Behavioral of contador_temperatura is

	signal s_count : unsigned (8 downto 0) := "010010110";
	signal s_dezenas :unsigned (8 downto 0);
	signal s_unidades :unsigned (8 downto 0);
	signal s_decimas :unsigned (8 downto 0);
begin

	process(clk)
	
	begin
	
	
		if (rising_edge(clk)) then
		
			if (rad = '1') then
				s_count <= s_count + 1;
				
			else 
				s_count <= s_count -1 ;
			end if;
			
		end if;
	
	end process;
	
	
	
 count <= std_logic_vector(s_count);
 s_dezenas <= (unsigned(s_count) / 100);
 s_unidades <= (unsigned(s_count) rem 100)/10;
 s_decimas <= (unsigned(s_count) rem 10);
 
 
 dezenas <= std_logic_vector(s_dezenas(3 downto 0));
 unidades <= std_logic_vector(s_unidades(3 downto 0));
 decimas <= std_logic_vector(s_decimas(3 downto 0));



end Behavioral;





