library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux_four is
    generic (
        WIDTH : positive := 32);
    port (
			w, x, y, z	: in  std_logic_vector(WIDTH-1 downto 0);
			d_sel 		: in std_logic_vector(1 downto 0);
			RdData 		: out std_logic_vector(WIDTH-1 downto 0));
end mux_four;

architecture BHV of mux_four is
begin
	process(x, y, z, d_sel)
	begin
		case d_sel is
		when "00" =>
			RdData <= x;
		when "01" =>
			RdData <= y;
		when "10" =>
			RdData <= z;
		when "11" =>
			RdData <= w;
		when others =>
			null;
		end case;
	end process;
end BHV;
