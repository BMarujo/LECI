library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
entity CounterUpDown4 is
    port(clk : in std_logic;
            reset: in std_logic;
            start_stop: in std_logic;
            count : out std_logic_vector(3 downto 0);
				led : out std_logic);
end CounterUpDown4;
architecture Behavioral of CounterUpDown4 is
    signal s_count : unsigned (3 downto 0);
    signal s_stop : std_logic;
begin
    process(clk, reset, start_stop)
    begin
    
        if(s_stop='0') then
            
            if(start_stop='0') then
                s_stop <= '1';
            elsif(reset='0') then
                s_count <= "0000";
                s_stop <= '1';
					 led <= '0';
            elsif(rising_edge(clk)) then
                    s_count <= s_count + 1;
            end if;
        else
            
            if(start_stop='0') then
                s_stop <= '0';
            elsif(reset='0') then
                s_count <= "0000";
            end if;
        end if;
			if s_count = "1010" then
				led <= '1';
				s_count <= "0000";
				s_stop <= '0';
			end if;
					
    end process;
    count <= std_logic_vector(s_count);
	 
	 
		
end Behavioral;