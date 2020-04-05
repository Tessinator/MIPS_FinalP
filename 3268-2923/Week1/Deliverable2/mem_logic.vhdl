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
		mux_sel		<= "11";
		--RdData mux selects
		if (addr = x"0000FFF8") then
			mux_sel <= "00";
		elsif (addr = x"0000FFFC" AND mem_write = '0') then
			mux_sel <= "01";
		elsif (addr = x"0000FFFC" AND mem_write = '1') then
			OutWr_en <= '1';
		elsif(addr < x"400" AND mem_write = '0') then
			mux_sel <= "10";
		elsif(addr < x"400" AND mem_write = '1') then
			mux_sel <= "10";
			wr_en <= '1';
		else 
			mux_sel <= "11";
			
		end if;
	end process;
end BHV;
