LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY Sub_Schema_Sub_Schema_sch_tb IS
END Sub_Schema_Sub_Schema_sch_tb;
ARCHITECTURE behavioral OF Sub_Schema_Sub_Schema_sch_tb IS 

   COMPONENT Sub_Schema
   PORT( Clk	:	IN	STD_LOGIC; 
          F0	:	IN	STD_LOGIC; 
          E0	:	IN	STD_LOGIC; 
          DO_rdy	:	IN	STD_LOGIC; 
          DO	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          start_out	:	OUT	STD_LOGIC; 
          data_out	:	OUT	STD_LOGIC_VECTOR (11 DOWNTO 0); 
          command_out	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          address_out	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          text_out	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          text_wy	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL Clk	:	STD_LOGIC := '0';
   SIGNAL F0	:	STD_LOGIC;
   SIGNAL E0	:	STD_LOGIC := '0';
   SIGNAL DO_rdy	:	STD_LOGIC;
   SIGNAL DO	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL start_out	:	STD_LOGIC;
   SIGNAL data_out	:	STD_LOGIC_VECTOR (11 DOWNTO 0);
   SIGNAL command_out	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL address_out	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL text_out	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL text_wy	:	STD_LOGIC;

BEGIN

   UUT: Sub_Schema PORT MAP(
		Clk => Clk, 
		F0 => F0, 
		E0 => E0, 
		DO_rdy => DO_rdy, 
		DO => DO, 
		start_out => start_out, 
		data_out => data_out, 
		command_out => command_out, 
		address_out => address_out, 
		text_out => text_out, 
		text_wy => text_wy
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
				wait for 20 ns;
								
				DO_RDY <= '0';
				wait for 2 ms;
							
				DO_RDY <= '1';
				F0 <= '1';
				wait for 20 ns;
								
				DO_RDY <= '0';
				wait for 1 ms;
				
			end loop;
   end process;

END;
