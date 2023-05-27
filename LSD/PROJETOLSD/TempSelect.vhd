library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TempSelect is
    port(Tsol   : in std_logic_vector(8 downto 0);
        Tlua    : in std_logic_vector(8 downto 0);
        Tgel    : in std_logic_vector(8 downto 0);
        Sel     : in  std_logic_vector(1 downto 0);
        Tref    : out std_logic_vector(8 downto 0));
end TempSelect;

architecture Behavioral of TempSelect is
begin
    process (Sel, Tsol, Tlua, Tgel)
    begin
        case Sel is
            when "00" =>
                Tref <= Tsol;
            when "01" =>
                Tref <= Tlua;
            when "10" =>
                Tref <= Tgel;
            when others =>
                Tref <= (others=>'0');  -- valor default
        end case;
    end process;
end Behavioral;