-- Vhdl test bench created from schematic D:\Stuff\Studia\UCiSW2\Organki_Gr_4\Sub_Schema.sch - Thu May 27 16:22:49 2021
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
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
          DO_rdy	:	IN	STD_LOGIC; 
          DO	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          start_out	:	OUT	STD_LOGIC; 
          data_out	:	OUT	STD_LOGIC_VECTOR (11 DOWNTO 0); 
          command_out	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          address_out	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          E0	:	IN	STD_LOGIC; 
          VGA_HS	:	OUT	STD_LOGIC; 
          VGA_VS	:	OUT	STD_LOGIC; 
          VGA_RGB	:	OUT	STD_LOGIC; 
          BUSY	:	OUT	STD_LOGIC);
   END COMPONENT;
	
	-- Interface to VGAscaner
   component VGAscan
       Generic ( -- VGA mode params (defaults are for 800x600/72Hz)
                 pxWidth    : integer := 800;         -- visible pixels: width
                 pxHeight   : integer := 600;         -- visible pixels: height
                 pxHSfrontP : integer := 56;          -- HSync front porch
                 lnVSfrontP : integer := 37;          -- VSync front porch
                 pxTotal    : integer := 1040;        -- total horiz. pixels (visible & invisible)
                 lnTotal    : integer := 666;         -- total vert. lines (visible & invisible)
                 mhzPixelClk: real    := 50.000;      -- pixel clock
                 activeHS   : std_logic := '1';       -- HSync polarity
                 activeVS   : std_logic := '1';       -- VSync polarity
                 -- Aux params
                 pxBorder   : integer := 2;           -- bitmap border around the visible area
                 FileName   : string := "D:/Frame"    -- output file name (frame number & ".bmp" will be appended)
               );
       Port ( VS, HS : in  STD_LOGIC;
              R, G, B : in  STD_LOGIC);
   end component;

   SIGNAL Clk	:	STD_LOGIC := '0';
   SIGNAL F0	:	STD_LOGIC;
   SIGNAL DO_rdy	:	STD_LOGIC;
   SIGNAL DO	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL start_out	:	STD_LOGIC;
   SIGNAL data_out	:	STD_LOGIC_VECTOR (11 DOWNTO 0);
   SIGNAL command_out	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL address_out	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL E0	:	STD_LOGIC := '0';
   SIGNAL VGA_HS	:	STD_LOGIC;
   SIGNAL VGA_VS	:	STD_LOGIC;
   SIGNAL VGA_RGB	:	STD_LOGIC;
   SIGNAL BUSY	:	STD_LOGIC;

BEGIN

   UUT: Sub_Schema PORT MAP(
		Clk => Clk, 
		F0 => F0, 
		DO_rdy => DO_rdy, 
		DO => DO, 
		start_out => start_out, 
		data_out => data_out, 
		command_out => command_out, 
		address_out => address_out, 
		E0 => E0, 
		VGA_HS => VGA_HS, 
		VGA_VS => VGA_VS, 
		VGA_RGB => VGA_RGB, 
		BUSY => BUSY
   );
	
	------------------------------------------------------------------
   -- Instance of the VGA scanner
   ------------------------------------------------------------------
   I_VGAscaner: VGAscan
      generic map(
         pxBorder => 3,
         FIleName => "D:/Organy" )    -- VGAtxt48x20 works in 800x600/72Hz mode => VGA generics can be left with defaults
      port map(
         VS => VGA_VS,
         HS => VGA_HS,
         R => VGA_RGB,
         G => VGA_RGB,
         B => VGA_RGB );

	CLK <= not CLK after 10 ns; 
	
	process
		type customArr is array (NATURAL range <>) of STD_LOGIC_VECTOR(7 downto 0);
		variable data : customArr(0 to 19) := (X"1C", X"1A", X"1B", X"22", X"15", X"1D", X"23", X"21", X"2B", X"2A",
															X"34", X"32", X"33",X"31", X"15", X"1D", X"15", X"1D", X"15", X"1D");
		variable key_time :  integer := 500;
	begin
			for i in data'RANGE loop
					
				DO <= data(i);
				DO_RDY <= '1';
				F0 <= '0';
				wait for 20 ns;
								
				DO_RDY <= '0';
				wait for key_time*1 us;
							
				DO_RDY <= '1';
				F0 <= '1';
				wait for 20 ns;
								
				DO_RDY <= '0';
				if key_time >= 9000 then
					key_time := 500;
				else 
					key_time := key_time + 1100;
				end if;
				wait for 1 ms;
				
			end loop;
   end process;

END;
