library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TempSelect is
    port(Tsol   : in std_logic_vector(8 downto 0);
        Tlua    : in std_logic_vector(8 downto 0);
        Tgel    : in std_logic_vector(8 downto 0);
        Sel     : in  std_logic_vector(1 downto 0);
		  sol_light : out std_logic;
		  lua_light : out std_logic;
		  gel_light : out std_logic;
        Tref    : out std_logic_vector(8 downto 0));
end TempSelect;

architecture Behavioral of TempSelect is
begin
    process (Sel, Tsol, Tlua, Tgel)
    begin
        case Sel is
            when "00" =>
                Tref <= Tsol;
					 sol_light<='1';
					 lua_light<='0';
					 gel_light<='0';
					 
            when "01" =>
                Tref <= Tlua;
					 sol_light<='0';
					 lua_light<='1';
					 gel_light<='0';
            when "10" =>
                Tref <= Tgel;
					 sol_light<='0';
					 lua_light<='0';
					 gel_light<='1';
            when others =>
                Tref <= (others=>'0');  -- valor default
        end case;
    end process;
end Behavioral;