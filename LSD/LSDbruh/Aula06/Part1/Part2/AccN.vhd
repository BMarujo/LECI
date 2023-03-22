library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity AccN is
	generic(N : positive := 8);
	port(dataIn: in std_logic_vector((N-1) downto 0);
			  clk: in std_logic;
		  enable: in std_logic;
		   reset: in std_logic;
		 dataOut: out std_logic_vector((N-1) downto 0));
end AccN;

architecture Behavioral of AccN is
	signal s_regOut,s_adderOut: std_logic_vector((N-1) downto 0);
begin
	Adder: entity work.AdderN(Behavioral)
		generic map(N => 8)
		port map(In0 => dataIn,
					 In1=> s_regOut,
					   s=> s_adderOut);
	Reg: entity work.RegN(Behavioral)
		generic map(N => 8)
		port map(dataIn => s_adderOut,
					   clk => clk,
					enable => enable,
					 reset => reset,
				  dataOut => s_regOut);
	dataOut <= s_regOut;
end Behavioral;
	