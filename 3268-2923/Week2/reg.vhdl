library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg is
    generic (
        WIDTH : positive := 32);
    port (
			x 				: in std_logic_vector(WIDTH-1 downto 0);
			x_en, clk, rst 	: in std_logic;
			output 			: out std_logic_vector(WIDTH-1 downto 0));
end reg;

architecture BHV of reg is
begin
	process(clk, rst)
	begin
		if (rst = '1') then
			output <= (others => '0');
		elsif (rising_edge(clk)) then
			if (x_en = '1') then
				output <= x;
			end if;
		end if;
	end process;
end BHV;