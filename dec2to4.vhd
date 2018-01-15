library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity dec2to4 is
    Port ( enable : in  STD_LOGIC;
           sw : in  STD_LOGIC_VECTOR (1 downto 0);
           led : out  STD_LOGIC_VECTOR (3 downto 0));
end dec2to4;
architecture Behavioral of dec2to4 is
begin
  led <= "0000" when enable = '0' else
         "0001" when sw = "00" else
         "0010" when sw = "01" else
         "0100" when sw = "10" else
         "1000";       
end Behavioral;

