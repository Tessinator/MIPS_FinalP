library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IR is
    generic (
        WIDTH : positive := 32);
    port (
			x 				: in std_logic_vector(WIDTH-1 downto 0);
			x_en, clk, rst 	: in std_logic;
			read1 			: out std_logic_vector(4 downto 0);
			read2			: out std_logic_vector(4 downto 0);
			Write			: out std_logic_vector(4 downto 0);
			ALU				: out std_logic_vector(15 downto 0);
			ctrl			: out std_logic_vector(5 downto 0);
			pcAddr			: out std_logic_vector(25 downto 0));
end IR;

architecture BHV of IR is
begin
	process(clk, rst)
	begin
	
	if (rst = '1') then
			read1 			<= (others => '0');
			read2			<= (others => '0');
			Write			<= (others => '0');
			ALU				<= (others => '0');
			ctrl			<= (others => '0');
			pcAddr			<= (others => '0');
	elsif (rising_edge(clk)) then
		if (x_en = '1') then
			read1 			<= x(25 downto 21);
			read2			<= x(20  downto 16);
			Write			<= x(15 downto 11);
			ALU				<= x(15 downto 0);
			ctrl			<= x(31 downto 26);
			pcAddr			<= x(25 downto 0);
		end if;
	end if;
	end process;
end BHV;