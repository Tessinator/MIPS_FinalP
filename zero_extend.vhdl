library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity zero_extend is
    generic (
        WIDTH : positive := 32);
    port (
			x				: in  std_logic_vector(9 downto 0);
			extended 		: out std_logic_vector(WIDTH-1 downto 0));
end zero_extend;

architecture BHV of zero_extend is
begin
	process(x)
	begin
		extended <= std_logic_vector(resize(unsigned(x), 32));
	end process;
end BHV;
