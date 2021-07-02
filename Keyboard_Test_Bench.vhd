LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Keyboard_Test_Bench IS
END Keyboard_Test_Bench;
 
ARCHITECTURE behavior OF Keyboard_Test_Bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Keyboard_Module
    PORT(
         DO : IN  std_logic_vector(7 downto 0);
         F0 : IN  std_logic;
         E0 : IN  std_logic;
         Clk : IN  std_logic;
         DO_rdy : IN  std_logic;
         tone_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DO : std_logic_vector(7 downto 0) := (others => '0');
   signal F0 : std_logic := '0';
   signal E0 : std_logic := '0';
   signal Clk : std_logic := '0';
   signal DO_rdy : std_logic := '0';

 	--Outputs
   signal tone_out : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Keyboard_Module PORT MAP (
          DO => DO,
          F0 => F0,
          E0 => E0,
          Clk => Clk,
          DO_rdy => DO_rdy,
          tone_out => tone_out
        );

  CLK <= not CLK after 10 ns;
	
	process
		type customArr is array (NATURAL range <>) of STD_LOGIC_VECTOR(7 downto 0);
		variable data : customArr(0 to 19) := (X"1C", X"1A", X"1B", X"22", X"15", X"1D", X"23", X"21", X"2B", X"2A",
															X"34", X"32", X"33",X"31", X"15", X"1D", X"15", X"1D", X"15", X"1D");
		begin
			for i in data'RANGE loop
					
				DO <= data(i);
				DO_RDY <= '1';
				F0 <= '0';
				wait for 40 ns;
								
				DO_RDY <= '0';
				wait for 120 ns;
							
				DO_RDY <= '1';
				F0 <= '1';
				wait for 40 ns;
								
				DO_RDY <= '0';
				wait for 80 ns;
				
			end loop;
   end process;

END;
