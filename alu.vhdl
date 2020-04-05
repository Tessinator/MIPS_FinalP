library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is
	    generic(
		WIDTH : POSITIVE := 32
     );
    port
    (
		input1, input2 		: in std_logic_vector(WIDTH-1 downto 0);
		Op_sel 				: in std_logic_vector(5 downto 0);
		IR_HI				: in std_logic_vector(4 downto 0);
		result, result_HI 	: out std_logic_vector(WIDTH-1 downto 0);
		br_taken 			: out std_logic
     );
end alu;

architecture BEHAV of alu is
begin
	process(input1, input2, Op_sel, IR_HI)
    --constants for operations:
	constant OP_ADD 	: std_logic_vector := "100001";
	constant OP_SUB 	: std_logic_vector := "100011";
	constant OP_MULT	: std_logic_vector := "011000";
	constant OP_MULT_U	: std_logic_vector := "011001";
	constant OP_AND		: std_logic_vector := "100100";
	constant OP_OR		: std_logic_vector := "100101";
	constant OP_XOR		: std_logic_vector := "100110";
	constant OP_SRL		: std_logic_vector := "000010";
	constant OP_SLL   	: std_logic_vector := "000000";
	constant OP_SRA   	: std_logic_vector := "000011";
	constant OP_SLT   	: std_logic_vector := "101010";
	constant OP_SLT_U  	: std_logic_vector := "101011";
	constant OP_BEQ   	: std_logic_vector := "101100";
	constant OP_BNE   	: std_logic_vector := "101101";
	constant OP_BLT_EQZ : std_logic_vector := "101110";
	constant OP_BGT_Z  	: std_logic_vector := "101111";
	constant OP_BLT_Z  	: std_logic_vector := "110001";
	constant OP_BGT_EQZ : std_logic_vector := "110010";
	constant ZERO : std_logic_vector(input1'range) := (others => '0');

	variable temp_large : signed((input1'length*2)-1 downto 0); -- temp variable for larger values 
	variable temp_large_u : unsigned((input1'length*2)-1 downto 0);-- variable temp_large2 : std_logiOP_vector(()-1 downto 0); -- temp variable for larger values
	
    begin
	--defaults
	br_taken <= '0';
	result_HI <= (others => '0');
	temp_large := (others => '0');
	result <= (others => '0');
	
	case Op_sel is --begin case statements for the IRects
	    when OP_ADD => 
			result <= std_logic_vector(unsigned(input1) + unsigned(input2));
		when OP_SUB =>
			result <= std_logic_vector(unsigned(input1) - unsigned(input2));
		when OP_MULT =>
			temp_large := signed(input1) * signed(input2);
			result <= std_logic_vector(temp_large(WIDTH-1 downto 0));
			result_HI <= std_logic_vector(temp_large(WIDTH*2-1 downto 32));
		when OP_MULT_U =>
			temp_large_u := unsigned(input1) * unsigned(input2);
			result <= std_logic_vector(temp_large(WIDTH-1 downto 0));
			result_HI <= std_logic_vector(temp_large_u(WIDTH*2-1 downto 32));
		when OP_AND =>
			result <= input1 AND input2;
		when OP_OR =>
			result <= input1 OR input2;
		when OP_XOR =>
			result <= input1 XOR input2;
		when OP_SRL =>
			result <= std_logic_vector(shift_right(unsigned(input1), to_integer(unsigned(IR_HI))));
		when OP_SLL =>
			result <= std_logic_vector(shift_left(unsigned(input1), to_integer(unsigned(IR_HI))));
		when OP_SRA => 
			result <= std_logic_vector(shift_right(signed(input1), to_integer(signed(IR_HI))));
		when OP_SLT =>
			if (input1 < input2) then 
				result <= (0 => '1', others => '0');
			else
				result <= (others => '0');
			end if;
		when OP_SLT_U =>
			if ( unsigned(input1) < unsigned(input2)) then
				result <= (0 => '1', others => '0');
			else
				result <= (others => '0');
			end if;
		when OP_BEQ =>
		
			if (input1 = input2) then 
				br_taken <= '1';
			end if;
		when OP_BNE =>
			if(input1 /= input2) then
				br_taken <= '1';
			end if;
		when OP_BLT_EQZ =>
			if (input1 <= ZERO) then
				br_taken <= '1';
			end if;
		when OP_BGT_Z =>
			if (input1 > ZERO) then
				br_taken <= '1';
			end if;		
		when OP_BLT_Z =>
			if (input1 < ZERO) then
				br_taken <= '1';
			end if;
		when OP_BGT_EQZ =>
			if (input1 <= ZERO) then
				br_taken <= '1';
			end if;

		when others =>--if others, result is zero
			result <= ZERO;
	end case;
    end process;
end BEHAV;
