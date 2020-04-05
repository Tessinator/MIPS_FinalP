library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mem_logic is
    generic (
        WIDTH : positive := 32);
    port (		
			addr						: in  std_logic_vector(WIDTH-1 downto 0);
			mem_write 					: in std_logic;
			wr_en, OutWr_en, DELAY_en	: out std_logic;
			mux_sel						: out std_logic_vector(1 downto 0));
end mem_logic;

architecture BHV of mem_logic is
begin
	process(addr, mem_write)
	begin
		--default values
		DELAY_en 	<= not mem_write; 
		OutWr_en 	<= '0';
		wr_en 		<= '0';

		--RdData mux selects
		if (addr = x"0000FFF8") then
			mux_sel <= "00";
		elsif (addr = x"0000FFFC") then
			mux_sel <= "01";
			OutWr_en <= mem_write;
		elsif(addr < x"400") then
			mux_sel <= "10";
			wr_en <= mem_write;
		else 
			mux_sel <= "11";
			
		end if;
	end process;
end BHV;
