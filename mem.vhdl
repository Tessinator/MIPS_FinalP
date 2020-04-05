library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mem is
	 generic(
		WIDTH : POSITIVE := 32
     );
    port
    (
		clk, rst 			: in std_logic;
		addr				: in std_logic_vector(WIDTH-1 downto 0);
		WrData  			: in std_logic_vector(WIDTH-1 downto 0);
		INDATA				: in std_logic_vector(WIDTH-1 downto 0);
		MemWrite			: in std_logic; 
		IN0_en, IN1_en	 	: in std_logic;
		RdData, Outport 	: out std_logic_vector(WIDTH-1 downto 0)
     );
end mem;

architecture STR of mem is

	signal WrEn, OutWrEn, DELAY_en 		: std_logic;
	signal muxSel, DELAY_reg 			: std_logic_vector(1 downto 0); 
	signal IN0_out, IN1_out, RAM_Out 	: std_logic_vector(WIDTH-1 downto 0); 
begin	
	
	--logic for data entry
	U_MEMLOGIC: entity work.mem_logic
	generic map( WIDTH => WIDTH)
	port map
	(
			addr 		=> addr, 
			mem_write 	=> MemWrite,
			wr_en 		=> WrEn,
			DELAY_en	=> DELAY_en,
			OutWr_en 	=> OutWrEn,
			mux_sel		=> muxSel
	);
	
	--registers
	U_INPORT0: entity work.reg
	generic map( WIDTH => WIDTH)
	port map
	(
			clk 	=> clk, 
			x 		=> INDATA,
			x_en 	=> IN0_en,
			output 	=> IN0_out
	);
	
	U_INPORT1: entity work.reg(NO_RST)
	generic map( WIDTH => WIDTH)
	port map
	(
			clk 	=> clk, 
			x 		=> INDATA,
			x_en 	=> IN1_en,
			output 	=> IN1_out
	);
	
	U_OUTPORT: entity work.reg(BHV)
	generic map( WIDTH => WIDTH)
	port map
	(
			clk 	=> clk, 
			rst 	=> rst,
			x 		=> WrData,
			x_en 	=> OutWrEn,
			output 	=> Outport
	);
	
	U_DELAYREG: entity work.reg(NO_RST)
	generic map( WIDTH => 2)
	port map
	(
			clk 	=> clk, 
			x 		=> muxSel,
			x_en 	=> DELAY_en,
			output 	=> DELAY_reg
	);
	
	--RAM
	U_SRAM: entity work.sram
	port map
	(
			address 	=> addr(9 downto 2), 
			clock 		=> clk,
			data 		=> WrData,
			wren		=> WrEn,
			q 			=> RAM_Out
	);
	
	-- 3x1 mux controls RdData output
	U_RDMUX: entity work.mux_four
	generic map( WIDTH => WIDTH)
	port map
	(
			x 		=> IN0_out,
			y 		=> IN1_out,
			z 		=> RAM_Out,
			w       => (others => '0'),
			d_sel 	=> DELAY_reg,
			RdData 	=> RdData
	);
	


end STR;
