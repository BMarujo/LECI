library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity temperature_counter_join is
	generic(N: std_logic_vector(3 downto 0) :="1010";
				X: std_logic_vector(6 downto 0):="1100100");

	port(dezenas: in std_logic_vector(3 downto 0);
			unidades: in std_logic_vector(3 downto 0);
			decimas: in std_logic_vector(3 downto 0);
			endereco: out std_logic_vector(8 downto 0));
			
end temperature_counter_join;


architecture Behavioral of temperature_counter_join is

signal unidades2 : std_logic_vector(7 downto 0);
signal dezenas2 : std_logic_vector(10 downto 0);
signal soma: unsigned(10 downto 0);

begin 
	unidades2 <= std_logic_vector(unsigned(unidades) * unsigned(N));
	dezenas2 <= std_logic_vector(unsigned(dezenas) * unsigned(X));

	process(unidades, decimas,unidades2,dezenas,dezenas2)
	begin
	soma<= (unsigned(dezenas2)+unsigned(unidades2) + unsigned(decimas));
	endereco <= std_logic_vector(unsigned(soma(8 downto 0)));
	
	end process;

end Behavioral;

