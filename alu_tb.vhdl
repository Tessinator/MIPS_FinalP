library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_tb is
end alu_tb;

architecture TB of alu_tb is

    constant WIDTH   : positive := 32;


    signal Op_sel   	: std_logic_vector(5 downto 0);
    signal input1     	: std_logic_vector(WIDTH-1 downto 0) := (others => '0');
    signal input2      	: std_logic_vector(WIDTH-1 downto 0) := (others => '0');
    signal result		: std_logic_vector(WIDTH-1 downto 0);
	signal result_HI	: std_logic_vector(WIDTH-1 downto 0);
	signal IR_HI		: std_logic_vector(4 downto 0) := (others => '0');
	signal br_taken		: std_logic;

begin

    UUT : entity work.alu
        generic map (
            WIDTH => WIDTH)
        port map (
            input1    	=> input1,
            input2    	=> input2,
            Op_sel     	=> Op_sel,
            IR_HI   	=> IR_HI,
            result      => result,
            result_HI    => result_HI,
            br_taken 	=> br_taken);


    process
    begin

		--add test
		input1 <= std_logic_vector(to_unsigned(10, WIDTH));
		input2 <= std_logic_vector(to_unsigned(15, WIDTH));
		Op_sel <= "100001";
		wait for 10 ns;
		
		--subtract test
		input1 <= std_logic_vector(to_unsigned(25, WIDTH));
		input2 <= std_logic_vector(to_unsigned(10, WIDTH));
		Op_sel <= "100011";
		wait for 10 ns;
		
		--signed multiplication test
		input1 <= std_logic_vector(to_signed(-4, WIDTH));
		input2 <= std_logic_vector(to_signed(10, WIDTH));
		Op_sel <= "011000";
		wait for 10 ns;
		
		--unsigned multiplication test
		input1 <= std_logic_vector(to_unsigned(65536, WIDTH));
		input2 <= std_logic_vector(to_unsigned(131072, WIDTH));
		Op_sel <= "011001";		
		wait for 10 ns;
		
		--AND test
		input1 <= x"0000FFFF";
		input2 <= x"FFFF1234";
		Op_sel <= "100100";
		wait for 10 ns;
		
		--OR test
		input1 <= x"0000FFFF";
		input2 <= x"FFFF1234";
		Op_sel <= "100101";
		wait for 10 ns;

		
		--shift right logical test
		input1 <= x"0000000F";
		IR_HI  <= std_logic_vector(to_unsigned(4, 5));
		Op_sel <= "000010";
		wait for 10 ns;
		
		--arithmentic shift test with neg value
		input1 <= x"F0000008";
		IR_HI  <= std_logic_vector(to_unsigned(1, 5));
		Op_sel <= "000011";
		wait for 10 ns;
		
		--arithmentic shift test with pos value
		input1 <= x"00000008";
		IR_HI  <= std_logic_vector(to_signed(1, 5));
		Op_sel <= "000011";
		wait for 10 ns;		
        report "DONE!!!!!!" severity note;

		-- set on less than tests		
		input1 <= std_logic_vector(to_unsigned(10, WIDTH));
		input2 <= std_logic_vector(to_unsigned(15, WIDTH));
		Op_sel <= "101011";
		wait for 10 ns;
		
		input1 <= std_logic_vector(to_unsigned(15, WIDTH));
		input2 <= std_logic_vector(to_unsigned(10, WIDTH));
		Op_sel <= "101011";
		wait for 10 ns;
		
		--branch lteq zero test
		input1 <= std_logic_vector(to_signed(5, WIDTH));
		Op_sel <= "101110";
		wait for 10 ns;	
		
		--branch greater than test
		input1 <= std_logic_vector(to_signed(5, WIDTH));
		Op_sel <= "101111";
		wait for 10 ns;	
		
        wait;

    end process;

end TB;

