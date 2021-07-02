library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Keyboard_Module is
    Port ( DO : in  STD_LOGIC_VECTOR (7 downto 0);
           F0 : in  STD_LOGIC;
           E0 : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
			  DO_rdy : in STD_LOGIC;
           tone_out : out  STD_LOGIC_VECTOR (3 downto 0));
end Keyboard_Module;

architecture Behavioral of Keyboard_Module is
	type state_type is (Nothing, A, S, D, F, G, H, Z, X, C, V, B, N);
	signal state, next_state: state_type;
begin
	
	state_machine : process(Clk)
	begin
		if rising_edge(Clk) then
			state <= next_state;
		end if;
	end process state_machine;
	
	change_next_state : process(state, DO_rdy, DO, F0)
	begin
		next_state <= state;
		case state is
			when A =>
				if DO = X"1C" and F0='0' and DO_rdy = '1' 
					then next_state <=A;
				elsif DO = X"1B" and F0='0' and DO_rdy = '1' 
					then next_state <=S;
				elsif DO = X"23" and F0='0' and DO_rdy = '1' 
					then next_state <=D;
				elsif DO = X"2B" and F0='0' and DO_rdy = '1' 
					then next_state <=F;
				elsif DO = X"34" and F0='0' and DO_rdy = '1' 
					then next_state <=G;
				elsif DO = X"33" and F0='0' and DO_rdy = '1' 
					then next_state <=H;
				elsif DO = X"1A" and F0='0' and DO_rdy = '1' 
					then next_state <=Z;
				elsif DO = X"22" and F0='0' and DO_rdy = '1' 
					then next_state <=X;
				elsif DO = X"21" and F0='0' and DO_rdy = '1' 
					then next_state <=C;
				elsif DO = X"2A" and F0='0' and DO_rdy = '1' 
					then next_state <=V;
				elsif DO = X"32" and F0='0' and DO_rdy = '1' 
					then next_state <=B;
				elsif DO = X"31" and F0='0' and DO_rdy = '1' 
					then next_state <=N;
				elsif F0='1' and DO_rdy = '1'
					then next_state <= Nothing;
				end if;
			when S =>
				if DO = X"1C" and F0='0' and DO_rdy = '1' 
					then next_state <=A;
				elsif DO = X"1B" and F0='0' and DO_rdy = '1' 
					then next_state <=S;
				elsif DO = X"23" and F0='0' and DO_rdy = '1' 
					then next_state <=D;
				elsif DO = X"2B" and F0='0' and DO_rdy = '1' 
					then next_state <=F;
				elsif DO = X"34" and F0='0' and DO_rdy = '1' 
					then next_state <=G;
				elsif DO = X"33" and F0='0' and DO_rdy = '1' 
					then next_state <=H;
				elsif DO = X"1A" and F0='0' and DO_rdy = '1' 
					then next_state <=Z;
				elsif DO = X"22" and F0='0' and DO_rdy = '1' 
					then next_state <=X;
				elsif DO = X"21" and F0='0' and DO_rdy = '1' 
					then next_state <=C;
				elsif DO = X"2A" and F0='0' and DO_rdy = '1' 
					then next_state <=V;
				elsif DO = X"32" and F0='0' and DO_rdy = '1' 
					then next_state <=B;
				elsif DO = X"31" and F0='0' and DO_rdy = '1' 
					then next_state <=N;
				elsif F0='1' and DO_rdy = '1'
					then next_state <= Nothing;
				end if;
			when D =>
				if DO = X"1C" and F0='0' and DO_rdy = '1' 
					then next_state <=A;
				elsif DO = X"1B" and F0='0' and DO_rdy = '1' 
					then next_state <=S;
				elsif DO = X"23" and F0='0' and DO_rdy = '1' 
					then next_state <=D;
				elsif DO = X"2B" and F0='0' and DO_rdy = '1' 
					then next_state <=F;
				elsif DO = X"34" and F0='0' and DO_rdy = '1' 
					then next_state <=G;
				elsif DO = X"33" and F0='0' and DO_rdy = '1' 
					then next_state <=H;
				elsif DO = X"1A" and F0='0' and DO_rdy = '1' 
					then next_state <=Z;
				elsif DO = X"22" and F0='0' and DO_rdy = '1' 
					then next_state <=X;
				elsif DO = X"21" and F0='0' and DO_rdy = '1' 
					then next_state <=C;
				elsif DO = X"2A" and F0='0' and DO_rdy = '1' 
					then next_state <=V;
				elsif DO = X"32" and F0='0' and DO_rdy = '1' 
					then next_state <=B;
				elsif DO = X"31" and F0='0' and DO_rdy = '1' 
					then next_state <=N;
				elsif F0='1' and DO_rdy = '1'
					then next_state <= Nothing;
				end if;
			when F =>
				if DO = X"1C" and F0='0' and DO_rdy = '1' 
					then next_state <=A;
				elsif DO = X"1B" and F0='0' and DO_rdy = '1' 
					then next_state <=S;
				elsif DO = X"23" and F0='0' and DO_rdy = '1' 
					then next_state <=D;
				elsif DO = X"2B" and F0='0' and DO_rdy = '1' 
					then next_state <=F;
				elsif DO = X"34" and F0='0' and DO_rdy = '1' 
					then next_state <=G;
				elsif DO = X"33" and F0='0' and DO_rdy = '1' 
					then next_state <=H;
				elsif DO = X"1A" and F0='0' and DO_rdy = '1' 
					then next_state <=Z;
				elsif DO = X"22" and F0='0' and DO_rdy = '1' 
					then next_state <=X;
				elsif DO = X"21" and F0='0' and DO_rdy = '1' 
					then next_state <=C;
				elsif DO = X"2A" and F0='0' and DO_rdy = '1' 
					then next_state <=V;
				elsif DO = X"32" and F0='0' and DO_rdy = '1' 
					then next_state <=B;
				elsif DO = X"31" and F0='0' and DO_rdy = '1' 
					then next_state <=N;
				elsif F0='1' and DO_rdy = '1'
					then next_state <= Nothing;
				end if;
			when G =>
				if DO = X"1C" and F0='0' and DO_rdy = '1' 
					then next_state <=A;
				elsif DO = X"1B" and F0='0' and DO_rdy = '1' 
					then next_state <=S;
				elsif DO = X"23" and F0='0' and DO_rdy = '1' 
					then next_state <=D;
				elsif DO = X"2B" and F0='0' and DO_rdy = '1' 
					then next_state <=F;
				elsif DO = X"34" and F0='0' and DO_rdy = '1' 
					then next_state <=G;
				elsif DO = X"33" and F0='0' and DO_rdy = '1' 
					then next_state <=H;
				elsif DO = X"1A" and F0='0' and DO_rdy = '1' 
					then next_state <=Z;
				elsif DO = X"22" and F0='0' and DO_rdy = '1' 
					then next_state <=X;
				elsif DO = X"1A" and F0='0' and DO_rdy = '1' 
					then next_state <=C;
				elsif DO = X"2A" and F0='0' and DO_rdy = '1' 
					then next_state <=V;
				elsif DO = X"32" and F0='0' and DO_rdy = '1' 
					then next_state <=B;
				elsif DO = X"31" and F0='0' and DO_rdy = '1' 
					then next_state <=N;
				elsif F0='1' and DO_rdy = '1'
					then next_state <= Nothing;
				end if;
			when H =>
				if DO = X"1C" and F0='0' and DO_rdy = '1' 
					then next_state <=A;
				elsif DO = X"1B" and F0='0' and DO_rdy = '1' 
					then next_state <=S;
				elsif DO = X"23" and F0='0' and DO_rdy = '1' 
					then next_state <=D;
				elsif DO = X"2B" and F0='0' and DO_rdy = '1' 
					then next_state <=F;
				elsif DO = X"34" and F0='0' and DO_rdy = '1' 
					then next_state <=G;
				elsif DO = X"33" and F0='0' and DO_rdy = '1' 
					then next_state <=H;
				elsif DO = X"1A" and F0='0' and DO_rdy = '1' 
					then next_state <=Z;
				elsif DO = X"22" and F0='0' and DO_rdy = '1' 
					then next_state <=X;
				elsif DO = X"21" and F0='0' and DO_rdy = '1' 
					then next_state <=C;
				elsif DO = X"2A" and F0='0' and DO_rdy = '1' 
					then next_state <=V;
				elsif DO = X"32" and F0='0' and DO_rdy = '1' 
					then next_state <=B;
				elsif DO = X"31" and F0='0' and DO_rdy = '1' 
					then next_state <=N;
				elsif F0='1' and DO_rdy = '1'
					then next_state <= Nothing;
				end if;
			when Z =>
				if DO = X"1C" and F0='0' and DO_rdy = '1' 
					then next_state <=A;
				elsif DO = X"1B" and F0='0' and DO_rdy = '1' 
					then next_state <=S;
				elsif DO = X"23" and F0='0' and DO_rdy = '1' 
					then next_state <=D;
				elsif DO = X"2B" and F0='0' and DO_rdy = '1' 
					then next_state <=F;
				elsif DO = X"34" and F0='0' and DO_rdy = '1' 
					then next_state <=G;
				elsif DO = X"33" and F0='0' and DO_rdy = '1' 
					then next_state <=H;
				elsif DO = X"1A" and F0='0' and DO_rdy = '1' 
					then next_state <=Z;
				elsif DO = X"22" and F0='0' and DO_rdy = '1' 
					then next_state <=X;
				elsif DO = X"21" and F0='0' and DO_rdy = '1' 
					then next_state <=C;
				elsif DO = X"2A" and F0='0' and DO_rdy = '1' 
					then next_state <=V;
				elsif DO = X"32" and F0='0' and DO_rdy = '1' 
					then next_state <=B;
				elsif DO = X"31" and F0='0' and DO_rdy = '1' 
					then next_state <=N;
				elsif F0='1' and DO_rdy = '1'
					then next_state <= Nothing;
				end if;
			when X =>
				if DO = X"1C" and F0='0' and DO_rdy = '1' 
					then next_state <=A;
				elsif DO = X"1B" and F0='0' and DO_rdy = '1' 
					then next_state <=S;
				elsif DO = X"23" and F0='0' and DO_rdy = '1' 
					then next_state <=D;
				elsif DO = X"2B" and F0='0' and DO_rdy = '1' 
					then next_state <=F;
				elsif DO = X"34" and F0='0' and DO_rdy = '1' 
					then next_state <=G;
				elsif DO = X"33" and F0='0' and DO_rdy = '1' 
					then next_state <=H;
				elsif DO = X"1A" and F0='0' and DO_rdy = '1' 
					then next_state <=Z;
				elsif DO = X"22" and F0='0' and DO_rdy = '1' 
					then next_state <=X;
				elsif DO = X"21" and F0='0' and DO_rdy = '1' 
					then next_state <=C;
				elsif DO = X"2A" and F0='0' and DO_rdy = '1' 
					then next_state <=V;
				elsif DO = X"32" and F0='0' and DO_rdy = '1' 
					then next_state <=B;
				elsif DO = X"31" and F0='0' and DO_rdy = '1' 
					then next_state <=N;
				elsif F0='1' and DO_rdy = '1'
					then next_state <= Nothing;
				end if;
			when C =>
				if DO = X"1C" and F0='0' and DO_rdy = '1' 
					then next_state <=A;
				elsif DO = X"1B" and F0='0' and DO_rdy = '1' 
					then next_state <=S;
				elsif DO = X"23" and F0='0' and DO_rdy = '1' 
					then next_state <=D;
				elsif DO = X"2B" and F0='0' and DO_rdy = '1' 
					then next_state <=F;
				elsif DO = X"34" and F0='0' and DO_rdy = '1' 
					then next_state <=G;
				elsif DO = X"33" and F0='0' and DO_rdy = '1' 
					then next_state <=H;
				elsif DO = X"1A" and F0='0' and DO_rdy = '1' 
					then next_state <=Z;
				elsif DO = X"22" and F0='0' and DO_rdy = '1' 
					then next_state <=X;
				elsif DO = X"21" and F0='0' and DO_rdy = '1' 
					then next_state <=C;
				elsif DO = X"2A" and F0='0' and DO_rdy = '1' 
					then next_state <=V;
				elsif DO = X"32" and F0='0' and DO_rdy = '1' 
					then next_state <=B;
				elsif DO = X"31" and F0='0' and DO_rdy = '1' 
					then next_state <=N;
				elsif F0='1' and DO_rdy = '1'
					then next_state <= Nothing;
				end if;
			when V =>
				if DO = X"1C" and F0='0' and DO_rdy = '1' 
					then next_state <=A;
				elsif DO = X"1B" and F0='0' and DO_rdy = '1' 
					then next_state <=S;
				elsif DO = X"23" and F0='0' and DO_rdy = '1' 
					then next_state <=D;
				elsif DO = X"2B" and F0='0' and DO_rdy = '1' 
					then next_state <=F;
				elsif DO = X"34" and F0='0' and DO_rdy = '1' 
					then next_state <=G;
				elsif DO = X"33" and F0='0' and DO_rdy = '1' 
					then next_state <=H;
				elsif DO = X"1A" and F0='0' and DO_rdy = '1' 
					then next_state <=Z;
				elsif DO = X"22" and F0='0' and DO_rdy = '1' 
					then next_state <=X;
				elsif DO = X"21" and F0='0' and DO_rdy = '1' 
					then next_state <=C;
				elsif DO = X"2A" and F0='0' and DO_rdy = '1' 
					then next_state <=V;
				elsif DO = X"32" and F0='0' and DO_rdy = '1' 
					then next_state <=B;
				elsif DO = X"31" and F0='0' and DO_rdy = '1' 
					then next_state <=N;
				elsif F0='1' and DO_rdy = '1'
					then next_state <= Nothing;
				end if;
			when B =>
				if DO = X"1C" and F0='0' and DO_rdy = '1' 
					then next_state <=A;
				elsif DO = X"1B" and F0='0' and DO_rdy = '1' 
					then next_state <=S;
				elsif DO = X"23" and F0='0' and DO_rdy = '1' 
					then next_state <=D;
				elsif DO = X"2B" and F0='0' and DO_rdy = '1' 
					then next_state <=F;
				elsif DO = X"34" and F0='0' and DO_rdy = '1' 
					then next_state <=G;
				elsif DO = X"33" and F0='0' and DO_rdy = '1' 
					then next_state <=H;
				elsif DO = X"1A" and F0='0' and DO_rdy = '1' 
					then next_state <=Z;
				elsif DO = X"22" and F0='0' and DO_rdy = '1' 
					then next_state <=X;
				elsif DO = X"21" and F0='0' and DO_rdy = '1' 
					then next_state <=C;
				elsif DO = X"2A" and F0='0' and DO_rdy = '1' 
					then next_state <=V;
				elsif DO = X"32" and F0='0' and DO_rdy = '1' 
					then next_state <=B;
				elsif DO = X"31" and F0='0' and DO_rdy = '1' 
					then next_state <=N;
				elsif F0='1' and DO_rdy = '1'
					then next_state <= Nothing;
				end if;
			when N =>
				if DO = X"1C" and F0='0' and DO_rdy = '1' 
					then next_state <=A;
				elsif DO = X"1B" and F0='0' and DO_rdy = '1' 
					then next_state <=S;
				elsif DO = X"23" and F0='0' and DO_rdy = '1' 
					then next_state <=D;
				elsif DO = X"2B" and F0='0' and DO_rdy = '1' 
					then next_state <=F;
				elsif DO = X"34" and F0='0' and DO_rdy = '1' 
					then next_state <=G;
				elsif DO = X"33" and F0='0' and DO_rdy = '1' 
					then next_state <=H;
				elsif DO = X"1A" and F0='0' and DO_rdy = '1' 
					then next_state <=Z;
				elsif DO = X"22" and F0='0' and DO_rdy = '1' 
					then next_state <=X;
				elsif DO = X"21" and F0='0' and DO_rdy = '1' 
					then next_state <=C;
				elsif DO = X"2A" and F0='0' and DO_rdy = '1' 
					then next_state <=V;
				elsif DO = X"32" and F0='0' and DO_rdy = '1' 
					then next_state <=B;
				elsif DO = X"31" and F0='0' and DO_rdy = '1' 
					then next_state <=N;
				elsif F0='1' and DO_rdy = '1'
					then next_state <= Nothing;
				end if;
			when Nothing =>
				if DO = X"1C" and F0='0' and DO_rdy = '1' 
					then next_state <=A;
				elsif DO = X"1B" and F0='0' and DO_rdy = '1' 
					then next_state <=S;
				elsif DO = X"23" and F0='0' and DO_rdy = '1' 
					then next_state <=D;
				elsif DO = X"2B" and F0='0' and DO_rdy = '1' 
					then next_state <=F;
				elsif DO = X"34" and F0='0' and DO_rdy = '1' 
					then next_state <=G;
				elsif DO = X"33" and F0='0' and DO_rdy = '1' 
					then next_state <=H;
				elsif DO = X"1A" and F0='0' and DO_rdy = '1' 
					then next_state <=Z;
				elsif DO = X"22" and F0='0' and DO_rdy = '1' 
					then next_state <=X;
				elsif DO = X"21" and F0='0' and DO_rdy = '1' 
					then next_state <=C;
				elsif DO = X"2A" and F0='0' and DO_rdy = '1' 
					then next_state <=V;
				elsif DO = X"32" and F0='0' and DO_rdy = '1' 
					then next_state <=B;
				elsif DO = X"31" and F0='0' and DO_rdy = '1' 
					then next_state <=N;
				elsif F0='1' and DO_rdy = '1'
					then next_state <= Nothing;
				end if;
			when others =>
				next_state <= Nothing;
		end case;
		end process change_next_state;
		
		set_output : process(state)
		begin
		case state is
			when A =>
				tone_out <= "0001";
			when S =>
				tone_out <= "0010";
			when D =>
				tone_out <= "0011";
			when F =>
				tone_out <= "0100";
			when G =>
				tone_out <= "0101";
			when H =>
				tone_out <= "0110";
			when Z =>
				tone_out <= "0111";
			when X =>
				tone_out <= "1000";	
			when C =>
				tone_out <= "1001";
			when V =>
				tone_out <= "1010";
			when B =>
				tone_out <= "1011";
			when N =>
				tone_out <= "1100";
			when Nothing =>
				tone_out <= "0000";
			when others => 
				tone_out <= "0000";
		end case;
		end process set_output;

end Behavioral;

