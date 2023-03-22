library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity PEnc16_4 is
	port( dataIn : in  std_logic_vector(15 downto 0);
			dataOut : out std_logic_vector(3 downto 0);
			validOut: out std_logic);
end PEnc16_4;

architecture Structure of PEnc16_4 is
begin
	process(dataIn)
	begin
		validOut <= '1';
		if( dataIn(15) = '1') then
			dataOut <= "1111";
		elsif( dataIn(14) = '1') then
			dataOut <= "1110";
		elsif( dataIn(1) = '1') then
			dataOut <= "01";
		elsif( dataIn(0) = '1') then
			dataOut <= "00";
		elsif( dataIn(0) = '1') then
			dataOut <= "00";
		elsif( dataIn(0) = '1') then
			dataOut <= "00";
		elsif( dataIn(0) = '1') then
			dataOut <= "00";
		elsif( dataIn(0) = '1') then
			dataOut <= "00";
		elsif( dataIn(0) = '1') then
			dataOut <= "00";
		elsif( dataIn(0) = '1') then
			dataOut <= "00";
		elsif( dataIn(0) = '1') then
			dataOut <= "00";
		elsif( dataIn(0) = '1') then
			dataOut <= "00";
		elsif( dataIn(0) = '1') then
			dataOut <= "00";
		elsif( dataIn(0) = '1') then
			dataOut <= "00";
		elsif( dataIn(0) = '1') then
			dataOut <= "00";	
		else
			dataOut  <= "00";
			validOUt <= '0';
		end if;
	end process;
end Structure;