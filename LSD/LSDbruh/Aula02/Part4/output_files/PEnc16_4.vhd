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
		elsif( dataIn(13) = '1') then
			dataOut <= "1101";
		elsif( dataIn(12) = '1') then
			dataOut <= "1100";
		elsif( dataIn(11) = '1') then
			dataOut <= "1011";
		elsif( dataIn(10) = '1') then
			dataOut <= "1010";
		elsif( dataIn(9) = '1') then
			dataOut <= "1001";
		elsif( dataIn(8) = '1') then
			dataOut <= "1000";
		elsif( dataIn(7) = '1') then
			dataOut <= "0111";
		elsif( dataIn(6) = '1') then
			dataOut <= "0110";
		elsif( dataIn(5) = '1') then
			dataOut <= "0101";
		elsif( dataIn(4) = '1') then
			dataOut <= "0100";
		elsif( dataIn(3) = '1') then
			dataOut <= "0011";
		elsif( dataIn(2) = '1') then
			dataOut <= "0010";
		elsif( dataIn(1) = '1') then
			dataOut <= "0001";
		elsif( dataIn(0) = '1') then
			dataOut <= "0000";
		else
			dataOut  <= "0000";
			validOUt <= '0';
		end if;
	end process;
end Structure;