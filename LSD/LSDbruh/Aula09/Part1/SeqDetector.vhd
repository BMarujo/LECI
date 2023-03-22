library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetector is
	port(KEY : in std_logic_vector(0 downto 0);
		  CLOCK_50 : in std_logic;
		  SW  : in std_logic_vector(0 downto 0);
		 LEDR : out std_logic_vector(0 downto 0));
end SeqDetector;


architecture Beahvioral of SeqDetector is
	signal clock_out :  std_logic;
	signal sync_key : std_logic;
	signal sync_sw : std_logic;
begin
 sync_0 : entity work.FlipFlop(Behavioral)
				port map(clk => clock_50,
							d => SW(0),
							q => sync_sw);
 
 sync_1 : entity work.FlipFlop(Behavioral)
				port map(clk => clock_50,
							d => not KEY(0),
							q => sync_key);
							
 divider : entity work.ClkDividerN(Behavioral)
			  generic map(divFactor => 250000000)
			  port map(clkIn => CLOCK_50,
						  clkOut => clock_out);
						  
 sequence : entity work.SeqDetFSM(MealyArch)
				port map(reset => sync_key,
							clk => clock_out,
							xIn => sync_sw,
							zOut => LEDR(0));
end Beahvioral;