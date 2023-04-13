library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity mux_2to1 is
  port (
    input_0: in std_logic;
    input_1: in std_logic;
    slc: in std_logic;
    output: out std_logic
  );
end mux_2to1;

architecture Behavioral of mux_2to1 is
begin
  process (slc, input_0, input_1)
  begin
    if slc = '0' then
      output <= input_0;
    else
      output <= input_1;
    end if;
  end process;
end Behavioral;
