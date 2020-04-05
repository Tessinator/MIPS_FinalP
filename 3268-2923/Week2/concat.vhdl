library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity concat is
    generic (
        WIDTH : positive := 32);
    port (
			Shifted_in		: in  std_logic_vector(27 downto 0);
			PC_in			: in std_logic_vector(3 downto 0);
			concatinated	: out std_logic_vector(WIDTH-1 downto 0));
end concat;

architecture BHV of concat is
		signal extended : std_logic_vector(WIDTH-1 downto 0) ;
begin
	process(Shifted_in, PC_in)
	begin
		concatinated <= PC_in & Shifted_in;
	end process;
end BHV;