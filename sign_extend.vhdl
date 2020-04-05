library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sign_extend is
    generic (
        WIDTH : positive := 32);
    port (
			x				: in  std_logic_vector(15 downto 0);
			is_signed 		: in std_logic;
			extended 		: out std_logic_vector(WIDTH-1 downto 0));
end sign_extend;

architecture BHV of sign_extend is
begin
	process(x, is_signed)
	begin
		if(is_signed = '1') then
			extended <= std_logic_vector(resize(signed(x), 32));
		else
			extended <= std_logic_vector(resize(unsigned(x), 32));
		end if;
	end process;
end BHV;
