library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;


entity bin_to_bcd is
    port (
        bin : in std_logic_vector(7 downto 0);
        bcd : out std_logic_vector(11 downto 0)
    );
end bin_to_bcd;

architecture Behavioral of bin_to_bcd is

    signal bin_temp : unsigned(7 downto 0);
    signal bcd_temp : unsigned(11 downto 0);

begin

    bin_temp <= unsigned(bin);

    process(bin_temp)
    begin
        for i in 0 to 1 loop
            for j in 0 to 3 loop
                if bin_temp(i*4+j) >= "1001" then
                    bcd_temp(i*8+j*4+3 downto i*8+j*4) <= "1001";
                elsif bin_temp(i*4+j) >= "0100" then
                    bcd_temp(i*8+j*4+3 downto i*8+j*4) <= "0110";
                elsif bin_temp(i*4+j) >= "0010" then
                    bcd_temp(i*8+j*4+3 downto i*8+j*4) <= "0011";
                else
                    bcd_temp(i*8+j*4+3 downto i*8+j*4) <= "0000";
                end if;
            end loop;
        end loop;
        bcd <= std_logic_vector(bcd_temp);
    end process;

end Behavioral;
