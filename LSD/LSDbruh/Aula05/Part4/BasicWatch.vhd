library ieee;
use ieee.std_logic_1164.all;
use ieee.Numeric_std.all;

entity BasicWatch is
	port(CLOCK_50 : in std_logic;
	     KEY      : in std_logic_vector(3 downto 0);
	     HEX2,HEX3,HEX4,HEX5,HEX6,HEX7 : out std_logic_vector(6 downto 0));
end BasicWatch;

architecture Behavioral of BasicWatch is
	signal clk_out: std_logic;
	signal sec_count,min_count: unsigned(5 downto 0);
	signal hor_count: unsigned(4 downto 0);
begin
	FreqDivider : entity work.FreqDivider(Behavioral)
		port map(clkIn=>CLOCK_50,
					k=>x"02FAF080",
					clkOUT=>clk_out);
					
	process(clk_out,min_count,hor_count,kEY(1))
		begin
		if(KEY(1) = '0') then
			if(KEY(0) = '0') then
				if(min_count >= 59) then
					min_count <= (others=>'0');
				end if;
				min_count<= min_count + 1;
			end if;
			if(KEY(2) = '0') then
				if(hor_count >= 23) then
					hor_count <= (others=>'0');
				end if;
				hor_count <= hor_count + 1;
			end if;
		elsif(rising_edge(clk_out)) then
			sec_count<= sec_count + 1;
			if(sec_count >= 59) then
				sec_count<= (others=>'0');
				min_count<= min_count + 1;
			end if;
			if(min_count >= 59) then
				min_count <= (others=>'0');
				hor_count <= hor_count + 1;
			end if;
			if(hor_count >= 23) then
				hor_count <= (others=>'0');
			end if;
		end if;
	end process;
	
	BIN0 : entity work.Bin7SegDecoder(Behavioral)
		port map(binInput => std_logic_vector(sec_count rem 10)(3 downto 0),
					enable=>KEY(3),
					decOut_n=>HEX2);
	
	BIN1 : entity work.Bin7SegDecoder(Behavioral)
		port map(binInput => std_logic_vector(sec_count/10)(3 downto 0),
					enable=>KEY(3),
					decOut_n=>HEX3);
					
	BIN2 : entity work.Bin7SegDecoder(Behavioral)
		port map(binInput => std_logic_vector(min_count rem 10)(3 downto 0),
					enable=>KEY(3),
					decOut_n=>HEX4);
	
	BIN3 : entity work.Bin7SegDecoder(Behavioral)
		port map(binInput => std_logic_vector(min_count/10)(3 downto 0),
					enable=>KEY(3),
					decOut_n=>HEX5);
	
	BIN4  : entity work.Bin7SegDecoder(Behavioral)
		port map(binInput => std_logic_vector(hor_count rem 10)(3 downto 0),
					enable=>KEY(3),
					decOut_n=>HEX6);
					
	BIN5 : entity work.Bin7SegDecoder(Behavioral)
		port map(binInput => std_logic_vector(hor_count/10)(3 downto 0),
					enable=>KEY(3),
					decOut_n=>HEX7);
end Behavioral;
		
	
	
	
	