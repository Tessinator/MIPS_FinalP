library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux is
    generic (
        WIDTH : positive := 16);
    port (
			x, y	: in  std_logic_vector(WIDTH-1 downto 0);
			x_sel 	: in std_logic;
			output 	: out std_logic_vector(WIDTH-1 downto 0));
end mux;

architecture BHV of mux is
begin
	process(x, y, x_sel)
	begin
		if (x_sel = '0') then
			output <= x;
		else 
			output <= y;
		end if;
	end process;
end BHV;
