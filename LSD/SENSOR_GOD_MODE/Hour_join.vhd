library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity Hour_join is

	port(dezenas: in std_logic_vector(3 downto 0);
			unidades: in std_logic_vector(3 downto 0);
			endereco: out std_logic_vector(4 downto 0));
			
end Hour_join;


architecture Behavioral of Hour_join is


signal s_dezenas : integer;
signal s_unidades : integer;
signal s_dezenas_unidades : integer;


begin 
	s_dezenas <= to_integer(unsigned(dezenas));
	s_unidades <= to_integer(unsigned(unidades));
	s_dezenas_unidades <= (s_dezenas * 10) + s_unidades;
	
	endereco <= std_logic_vector(to_unsigned(s_dezenas_unidades, 5));
	

end Behavioral;

