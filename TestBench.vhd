LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
ENTITY dec2to4_test IS
END dec2to4_test;
ARCHITECTURE behavior OF dec2to4_test IS 
-- Component Declaration for the Unit Under Test (UUT)
COMPONENT dec2to4
    PORT(
         enable : IN  std_logic;
         sw : IN  std_logic_vector(1 downto 0);
         led : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
   --Inputs
      signal test_seq : std_logic_vector(2 downto 0);
   --Outputs
      signal led : std_logic_vector(3 downto 0);
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: dec2to4 PORT MAP (
          enable => test_seq(2),
          sw => test_seq (1 downto 0),
          led => led
        );
   -- Stimulus process
   stim_proc: process
   begin		
         -- insert stimulus here 
         test_seq<="000"; 
         wait for 10ns; 
         test_seq<="001"; 
         wait for 10ns; 
         test_seq<="010"; 
         wait for 10ns; 
         test_seq<="011"; 
         wait for 10ns; 
         test_seq<="100"; 
         wait for 10ns; 
         test_seq<="101"; 
         wait for 10ns; 
         test_seq<="110"; 
         wait for 10ns; 
         test_seq<="111";
         wait;    
  end process;
END;	
