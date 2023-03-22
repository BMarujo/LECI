library  IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DisplayDemo1 is
    port(    SW        : in std_logic_vector(3 downto 0);
            KEY    : in std_logic_vector(0 downto 0);
            HEX0    : out std_logic_vector(6 downto 0));
end DisplayDemo1;

architecture Shell of DisplayDemo1 is
begin
    system_core : entity work.Bin7SegDecoder(Behavioral)

        port map(binInput => SW(3 downto 0),
                    enable    => KEY(0),
                    decOut_n => HEX0(6 downto 0));
end Shell;