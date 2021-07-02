library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Sawtooth_Module is
    Port ( clk : in  STD_LOGIC;
           tone_in : in  STD_LOGIC_VECTOR (3 downto 0);
           start_out : out  STD_LOGIC;
           data_out : out  STD_LOGIC_VECTOR (11 downto 0);
           command_out : out  STD_LOGIC_VECTOR (3 downto 0);
           address_out : out  STD_LOGIC_VECTOR (3 downto 0));
end Sawtooth_Module;

architecture Behavioral of Sawtooth_Module is

	signal desired_processor_cycles : UNSIGNED (11 downto 0) := "000000000000";
	signal counter : UNSIGNED(11 downto 0) := "000000000000";
	signal data : UNSIGNED(4 downto 0) := "00000";

begin

	set_processor_cycles: process(clk)
	begin
		if (rising_edge(clk)) then
			if tone_in = "0001" then
				desired_processor_cycles <= "101110101010";-- c - 2986 cykli
			elsif tone_in = "0010" then
				desired_processor_cycles <= "101100000010";-- cis - 2818 cykli
			elsif tone_in = "0011" then
				desired_processor_cycles <= "101001100100";-- d - 2660 cykli
			elsif tone_in = "0100" then
				desired_processor_cycles <= "100111001111";-- dis - 2511 cykli
			elsif tone_in = "0101" then
				desired_processor_cycles <= "100101000010";-- e - 2370 cykli
			elsif tone_in = "0110" then
				desired_processor_cycles <= "100010111101";-- f - 2237 cykli
			elsif tone_in = "0111" then
				desired_processor_cycles <= "100000111111";-- fis - 2111 cykli
			elsif tone_in = "1000" then
				desired_processor_cycles <= "011111001001";-- g - 1993 cykli
			elsif tone_in = "1001" then
				desired_processor_cycles <= "011101011011";-- gis - 1883 cykli
			elsif tone_in = "1010" then
				desired_processor_cycles <= "011011101101";-- a - 1776 cykli
			elsif tone_in = "1011" then
				desired_processor_cycles <= "011010001100";-- b - 1676 cykli
			elsif tone_in = "1100" then
				desired_processor_cycles <= "011000101110";-- h - 1582 cykli
			else
				desired_processor_cycles <= (others => '0');
				--data <= (others => '0');
				--counter <= (others => '0');
			end if;
		end if;
	end process;
	
	--process(clk, tone_in)
	--begin
	--if(rising_edge(clk)) then 
		--if tone_in = "0000" then 
			--data <= (others => '0');
			--counter <= (others => '0');
		--end if;
	--end if;
	--end process; 
		
	sawtooth_signal: process(clk)
	begin
		if(rising_edge(clk)) then 
		counter <= counter + 1;
		start_out <= '0';
			if(counter = desired_processor_cycles and desired_processor_cycles /= 0) then
				counter <= (others => '0');
				data <= data + 1;
				start_out <= '1';
			end if;
		end if;
	end process;
	
	data_out <= STD_LOGIC_VECTOR(data) & "0000000";
	address_out <= "1111"; 
	command_out <= "0011";
	
end Behavioral;