library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity HexGame is
	port(binInput : in  std_logic_vector(2 downto 0);
		  tbInput  : in  std_logic_vector(3 downto 0);
		  tb       : in  std_logic;
		  win      : in  std_logic;
		  decOut_0 : out std_logic_vector(6 downto 0);
		  decOut_1 : out std_logic_vector(6 downto 0));
end HexGame;

architecture Behavioral of HexGame is
begin
	process(tb,binInput,tbInput)
	begin
		if(win = '1')then
			decOut_1 <= "1111111";
			decOut_0 <= "1111111";
		elsif(tb = '1') then
			decOut_1 <= "1111111";
			case tbInput is
					when "0001" => decOut_0 <= "1111001"; --1
					when "0010" => decOut_0 <= "0100100"; --2
					when "0011" => decOut_0 <= "0110000"; --3
					when "0100" => decOut_0 <= "0011001"; --4
					when "0101" => decOut_0 <= "0010010"; --5
					when "0110" => decOut_0 <= "0000010"; --6
					when "0111" => decOut_0 <= "1111000"; --7
					when "1000" => decOut_0 <= "0000000"; --8
					when "1001" => decOut_0 <= "0010000"; --9
					when others => decOut_0 <= "1000000";
			end case;
		else
			case binInput is
					when "001" => 
						decOut_1 <= "1111001";
						decOut_0 <= "0010010"; --15
					when "010" => 
						decOut_1 <= "0110000";
						decOut_0 <= "1000000"; --30
					when "011" => 
						decOut_1 <= "0011001";
						decOut_0 <= "1000000"; --40
					when "101" => 
						decOut_1 <= "1111111";
						decOut_0 <= "0100001"; --d
					when "110" => 
						decOut_1 <= "0001000";
						decOut_0 <= "0100001"; --A
					when others => 
						decOut_1 <= "1000000";
						decOut_0 <= "1000000";
				end case;
		end if;
	end process;
	
end Behavioral;
