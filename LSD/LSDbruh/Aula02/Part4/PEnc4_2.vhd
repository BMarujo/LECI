library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity PEnc4_2 is
	port( dataIn : in  std_logic_vector(3 downto 0);
			dataOut : out std_logic_vector(1 downto 0);
			validOut: out std_logic);
end PEnc4_2;

architecture Structure of PEnc4_2 is
begin
	process(dataIn)
	begin
		validOut <= '1';
		if( dataIn(3) = '1') then
			dataOut <= "11";
		elsif( dataIn(2) = '1') then
			dataOut <= "10";
		elsif( dataIn(1) = '1') then
			dataOut <= "01";
		elsif( dataIn(0) = '1') then
			dataOut <= "00";
		else
			dataOut  <= "00";
			validOUt <= '0';
		end if;
	end process;
end Structure;