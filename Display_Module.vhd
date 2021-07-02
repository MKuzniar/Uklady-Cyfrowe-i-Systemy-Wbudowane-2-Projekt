library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Display_Module is
    Port ( Clk : in  STD_LOGIC;
           E0 : in  STD_LOGIC;
           F0 : in  STD_LOGIC;
           DO_rdy : in  STD_LOGIC;
           tone_in : in  STD_LOGIC_VECTOR (3 downto 0);
           text_wy : out  STD_LOGIC;
           text_out : out  STD_LOGIC_VECTOR (7 downto 0));
end Display_Module;

architecture Behavioral of Display_Module is
	type state_type is (Nothing, A, S, D, F, G, H, Z, X, C, V, B, N, Spacja1, Spacja2, Cyfra1, Cyfra2, Przecinek);
	signal state, next_state: state_type;
	signal ticks : unsigned(12 downto 0) := "0000000000000";
	signal counter, fractionCounter, counterDisplay, fractionCounterDisplay, fractionCounterOld: unsigned(3 DOWNTO 0) := "0000";
begin

	state_machine : process(Clk)
	begin
		if rising_edge( Clk ) then
				state <= next_state;
		end if;
	end process state_machine;


	change_state_process: process(state, tone_in, F0)
	begin 
	next_state <= state;
		
	case state is
		when Nothing => if tone_in = "0001" and F0 = '0' and DO_rdy = '1'  then next_state <= A;
						 elsif tone_in = "0010" and F0 = '0' and DO_rdy = '1'  then next_state <= S;
						 elsif tone_in = "0011" and F0 = '0' and DO_rdy = '1'  then next_state <= D;
				  		 elsif tone_in = "0100" and F0 = '0' and DO_rdy = '1'  then next_state <= F;
						 elsif tone_in = "0101" and F0 = '0' and DO_rdy = '1'  then next_state <= G;
						 elsif tone_in = "0110" and F0 = '0' and DO_rdy = '1' then next_state <= H;
						 elsif tone_in = "0111" and F0 = '0' and DO_rdy = '1' then next_state <= Z;
						 elsif tone_in = "1000" and F0 = '0' and DO_rdy = '1'  then next_state <= X;
						 elsif tone_in = "1001" and F0 = '0' and DO_rdy = '1' then next_state <= C;
						 elsif tone_in = "1010" and F0 = '0' and DO_rdy = '1' then next_state <= V;
						 elsif tone_in = "1011" and F0 = '0' and DO_rdy = '1' then next_state <= B;
						 elsif tone_in = "1100" and F0 = '0' and DO_rdy = '1' then next_state <= N;
						 else next_state <= Nothing;
						 end if;
		when A => if F0 = '1' and DO_rdy = '1' then next_state <= Spacja1;
					 else next_state <= A; 
					 end if;
		when S => if F0 = '1' and DO_rdy = '1' then next_state <= Spacja1;
					 else next_state <= S; 
					 end if;
		when D => if F0 = '1' and DO_rdy = '1' then next_state <= Spacja1;
					 else next_state <= D; 
					 end if;
		when F => if F0 = '1' and DO_rdy = '1'  then next_state <= Spacja1;
					 else next_state <= F; 
					 end if;
		when G => if F0 = '1' and DO_rdy = '1' then next_state <= Spacja1;
					 else next_state <= G; 
					 end if;
		when H => if F0 = '1' and DO_rdy = '1' then next_state <= Spacja1;
					 else next_state <= H; 
					 end if;
		when Z => if F0 = '1' and DO_rdy = '1' then next_state <= Spacja1;
					 else next_state <= Z; 
					 end if;
		when X => if F0 = '1' and DO_rdy = '1' then next_state <= Spacja1;
					 else next_state <= X; 
					 end if;
		when C => if F0 = '1' and DO_rdy = '1' then next_state <= Spacja1;
					 else next_state <= A; 
					 end if;
		when V => if F0 = '1' and DO_rdy = '1' then next_state <= Spacja1;
					 else next_state <= A; 
					 end if;
		when B => if F0 = '1' and DO_rdy = '1' then next_state <= Spacja1;
					 else next_state <= A; 
					 end if;
		when N => if F0 = '1' and DO_rdy = '1' then next_state <= Spacja1;
					 else next_state <= A; 
					 end if;
		when Spacja1 => next_state <= Cyfra1;
		when Cyfra1 => next_state <= Przecinek;
		when Przecinek => next_state <=Cyfra2;
		when Cyfra2 => next_state <= Spacja2;
		when Spacja2 => next_state <= Nothing;
		when others => next_state <= Nothing;
	end case;
	end process change_state_process;

	set_output: process(state)
	begin 
		case state is 
			when Nothing => 
					text_out <= "00000000"; -- nic
			when A =>
					text_out <= "01100011"; -- c
			when S =>
					text_out <= "01000011"; -- C (cis)
			when D =>
            	text_out <= "01100100"; -- d
			when F =>
            	text_out <= "01000100"; -- D (dis)
			when G =>
            	text_out <= "01100101"; -- e
			when H =>
            	text_out <= "01100110"; -- f
			when Z =>
            	text_out <= "01000110"; -- F (fis)
			when X =>
            	text_out <= "01100111"; -- g
			when C =>
            	text_out <= "01000111"; -- G (gis)
			when V =>
            	text_out <= "01100001"; -- a
			when B =>
            	text_out <= "01100010"; -- b
			when N =>
            	text_out <= "01101000"; -- h
			when Spacja1 =>
					text_out <= "00100000"; -- spacja
			when Spacja2 =>
					text_out <= "00100000"; -- spacja
			when Cyfra1 =>
					text_out <= std_logic_vector(X"3" & counter(3 downto 0)); -- cyfra jednosci
			when Cyfra2 =>
					text_out <= std_logic_vector(X"3" & fractionCounter(3 downto 0)); -- cyfra czesci dziesietnej
			when Przecinek =>
					text_out <= "00101100"; -- przecinek
			when others => 
					text_out <= "00000000"; -- nic           	
		end case; 
	end process set_output;
	
	text_wy_process: process(F0, state)
	begin
		if F0 = '1' and state /= Nothing then
			text_wy <= '1';	
		else
			text_wy <= '0';
		end if;	
	end process text_wy_process;
	
	countCycles : process(Clk, F0)
	begin 
		if (state = A or state = S or state = D or state = F or state = G or state = H
				or state = Z or state = X or state = C or state = V or state = B or state = N) then
			if (rising_edge(Clk)) then
				if (ticks = "1001110000111") then
					ticks <= "0000000000000";
				else
					ticks <= ticks + 1;
				end if;
			end if;
		elsif (state = spacja2) then
			ticks <= "0000000000000";
		end if;
	end process countCycles;
	
	countFraction : process (Clk, ticks, F0, DO_rdy)
	begin
		if (state = A or state = S or state = D or state = F or state = G or state = H
				or state = Z or state = X or state = C or state = V or state = B or state = N) then
			if(rising_edge(Clk)) then
				if ticks = "1001110000111" then	
					if fractionCounter = "1001" then
						fractionCounter <= "0000";
					else
						fractionCounter <= fractionCounter + 1;
					end if;
				end if;	
			end if;
		elsif (state = spacja2) then 
			fractionCounter <= "0000";
		end if;
	end process countFraction;
	
	count : process (Clk, counter, F0, DO_rdy)
	begin
		if (state = A or state = S or state = D or state = F or state = G or state = H
				or state = Z or state = X or state = C or state = V or state = B or state = N) then
			if(rising_edge(Clk)) then
				if (fractionCounter = "1001" and ticks = "1001110000111")  then	
					if counter = "1001" then
						counter <= "0000";
					else
						counter <= counter + 1;
					end if;
				end if;	
			end if;
		elsif (state = spacja2) then 
				counter <= "0000";
		end if;
	end process count;

end Behavioral;

