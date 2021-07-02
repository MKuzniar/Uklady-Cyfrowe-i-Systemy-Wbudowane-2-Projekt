LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Sawtooth_Test_Bench IS
END Sawtooth_Test_Bench;
 
ARCHITECTURE behavior OF Sawtooth_Test_Bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sawtooth_Module
    PORT(
         clk : IN  std_logic;
         tone_in : IN  std_logic_vector(3 downto 0);
         start_out : OUT  std_logic;
         data_out : OUT  std_logic_vector(11 downto 0);
         command_out : OUT  std_logic_vector(3 downto 0);
         address_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal tone_in : std_logic_vector(3 downto 0);

 	--Outputs
   signal start_out : std_logic;
   signal data_out : std_logic_vector(11 downto 0);
   signal command_out : std_logic_vector(3 downto 0);
   signal address_out : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sawtooth_Module PORT MAP (
          clk => clk,
          tone_in => tone_in,
          start_out => start_out,
          data_out => data_out,
          command_out => command_out,
          address_out => address_out
        );

	CLK <= not CLK after 10 ns;

process
		type customArr is array (NATURAL range <>) of STD_LOGIC_VECTOR(3 downto 0);
		variable data : customArr(0 to 4) := (B"0001", B"0101", B"1100", B"0011", B"1001");
		
		begin
			for i in data'RANGE loop
					
				tone_in <= data(i);
				wait for 4 ms;
				
			end loop;
   end process;


END;
