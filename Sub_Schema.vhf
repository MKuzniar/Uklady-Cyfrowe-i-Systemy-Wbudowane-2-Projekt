--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Sub_Schema.vhf
-- /___/   /\     Timestamp : 06/07/2021 19:22:22
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "D:/Nauka/Studia/6. Semestr letni 2020-2021/UCiSW2_Projekt/Organki_Gr_4/Sub_Schema.vhf" -w "D:/Nauka/Studia/6. Semestr letni 2020-2021/UCiSW2_Projekt/Organki_Gr_4/Sub_Schema.sch"
--Design Name: Sub_Schema
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Sub_Schema is
   port ( Clk         : in    std_logic; 
          DO          : in    std_logic_vector (7 downto 0); 
          DO_rdy      : in    std_logic; 
          E0          : in    std_logic; 
          F0          : in    std_logic; 
          address_out : out   std_logic_vector (3 downto 0); 
          BUSY        : out   std_logic; 
          command_out : out   std_logic_vector (3 downto 0); 
          data_out    : out   std_logic_vector (11 downto 0); 
          start_out   : out   std_logic; 
          VGA_HS      : out   std_logic; 
          VGA_RGB     : out   std_logic; 
          VGA_VS      : out   std_logic);
end Sub_Schema;

architecture BEHAVIORAL of Sub_Schema is
   attribute BOX_TYPE   : string ;
   signal text_wy     : std_logic;
   signal XLXN_8      : std_logic_vector (3 downto 0);
   signal XLXN_23     : std_logic_vector (7 downto 0);
   signal XLXN_46     : std_logic;
   signal XLXN_49     : std_logic;
   component Keyboard_Module
      port ( F0       : in    std_logic; 
             E0       : in    std_logic; 
             Clk      : in    std_logic; 
             DO_rdy   : in    std_logic; 
             DO       : in    std_logic_vector (7 downto 0); 
             tone_out : out   std_logic_vector (3 downto 0));
   end component;
   
   component Sawtooth_Module
      port ( clk         : in    std_logic; 
             tone_in     : in    std_logic_vector (3 downto 0); 
             start_out   : out   std_logic; 
             data_out    : out   std_logic_vector (11 downto 0); 
             command_out : out   std_logic_vector (3 downto 0); 
             address_out : out   std_logic_vector (3 downto 0));
   end component;
   
   component Display_Module
      port ( Clk      : in    std_logic; 
             E0       : in    std_logic; 
             F0       : in    std_logic; 
             DO_rdy   : in    std_logic; 
             tone_in  : in    std_logic_vector (3 downto 0); 
             text_wy  : out   std_logic; 
             text_out : out   std_logic_vector (7 downto 0));
   end component;
   
   component VGAtxt48x20
      port ( Char_DI     : in    std_logic_vector (7 downto 0); 
             Home        : in    std_logic; 
             NewLine     : in    std_logic; 
             Goto00      : in    std_logic; 
             Clk_Sys     : in    std_logic; 
             Clk_50MHz   : in    std_logic; 
             CursorOn    : in    std_logic; 
             ScrollEn    : in    std_logic; 
             ScrollClear : in    std_logic; 
             Busy        : out   std_logic; 
             VGA_HS      : out   std_logic; 
             VGA_VS      : out   std_logic; 
             VGA_RGB     : out   std_logic; 
             Char_WE     : in    std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
begin
   XLXI_1 : Keyboard_Module
      port map (Clk=>Clk,
                DO(7 downto 0)=>DO(7 downto 0),
                DO_rdy=>DO_rdy,
                E0=>E0,
                F0=>F0,
                tone_out(3 downto 0)=>XLXN_8(3 downto 0));
   
   XLXI_2 : Sawtooth_Module
      port map (clk=>Clk,
                tone_in(3 downto 0)=>XLXN_8(3 downto 0),
                address_out(3 downto 0)=>address_out(3 downto 0),
                command_out(3 downto 0)=>command_out(3 downto 0),
                data_out(11 downto 0)=>data_out(11 downto 0),
                start_out=>start_out);
   
   XLXI_3 : Display_Module
      port map (Clk=>Clk,
                DO_rdy=>DO_rdy,
                E0=>E0,
                F0=>F0,
                tone_in(3 downto 0)=>XLXN_8(3 downto 0),
                text_out(7 downto 0)=>XLXN_23(7 downto 0),
                text_wy=>text_wy);
   
   XLXI_4 : VGAtxt48x20
      port map (Char_DI(7 downto 0)=>XLXN_23(7 downto 0),
                Char_WE=>text_wy,
                Clk_Sys=>Clk,
                Clk_50MHz=>Clk,
                CursorOn=>XLXN_49,
                Goto00=>XLXN_46,
                Home=>XLXN_46,
                NewLine=>XLXN_46,
                ScrollClear=>XLXN_49,
                ScrollEn=>XLXN_49,
                Busy=>BUSY,
                VGA_HS=>VGA_HS,
                VGA_RGB=>VGA_RGB,
                VGA_VS=>VGA_VS);
   
   XLXI_5 : GND
      port map (G=>XLXN_46);
   
   XLXI_6 : VCC
      port map (P=>XLXN_49);
   
end BEHAVIORAL;


