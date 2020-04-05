library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MIPS_DataPath is
	 generic(
		WIDTH : POSITIVE := 32
     );
    port
    (
		--controller I/O
		clk, rst 			: in std_logic;
		IorD, isSigned		: in std_logic;
		MemWrite, IRWrite, Reg_write	: in std_logic;
		regDST, MemToReg 	: in std_logic;
		ALUSrcA 			: in std_logic;
		ALUSrcB, PCSource	: in std_logic_vector(1 downto 0);
		ctrl				: out std_logic_vector(5 downto 0);
		ALU_Op				: in std_logic;
				

		--top level I/O
		IN0_en, IN1_en		: in std_logic;
		Outport				: out std_logic_vector(WIDTH-1 downto 0);
		InData				: in std_logic_vector(9 downto 0)
     );
end MIPS_DataPath;

architecture STR of MIPS_DataPath is

	signal PC_En 								: std_logic;
	signal Branched, LO_ctrl, HI_ctrl			: std_logic;
	signal ALU_LO_HI							: std_logic_vector(1 downto 0);
	signal PC_in, PC_out						: std_logic_vector(WIDTH-1 downto 0);
	signal memMux_out, wr_mux2_out	: std_logic_vector(WIDTH-1 downto 0);
	signal ALU_in0, ALU_in1, ALU_out			: std_logic_vector(WIDTH-1 downto 0);
	signal A_mux_out1, A_mux_out2 				: std_logic_vector(WIDTH-1 downto 0);
	signal ALUmux_out, Sign_Ext_Out, SL2_out	: std_logic_vector(WIDTH-1 downto 0);
	signal Wr_Data, mem_Out, memData_out		: std_logic_vector(WIDTH-1 downto 0);
	signal REGA_out, REGB_out					: std_logic_vector(WIDTH-1 downto 0);
	signal Concat_out							: std_logic_vector(WIDTH-1 downto 0);
	signal regFile_out1, regFile_out2			: std_logic_vector(WIDTH-1 downto 0);
	signal result, result_HI, LO, HI			: std_logic_vector(WIDTH-1 downto 0);
	signal signExtended, shifted, zeroExtended	: std_logic_vector(WIDTH-1 downto 0);
	signal shifted2								: std_logic_vector(27 downto 0);
	signal read1, read2, write, wr_mux1_out		: std_logic_vector(4 downto 0);
	signal ALU_ctrl								: std_logic_vector(5 downto 0);
	signal ALU_muxSel2							: std_logic_vector(15 downto 0);
	signal PC_addr								: std_logic_vector(25 downto 0);
begin	
	--~*~*~*~*~*~*~*~*~*~*~*~*~ FIRST BLOCK (PC, MUX, MEM) ~*~*~*~*~*~*~*~*~*~*~*~*~
	--PC reg
	U_PCREG: entity work.reg --done
	generic map( WIDTH => WIDTH)
	port map
	(
			clk 	=> clk,
			rst 	=> rst,
			x	=> PC_in,
			x_en	=> PC_En,
			output	=> PC_out
	);
	
	--MUX
	U_MEMMUX: entity work.mux -- done
	generic map( WIDTH => WIDTH)
	port map
	(
			x		=> PC_out, --0 sel 
			y		=> ALU_out, --1 sel 
			x_sel	=> IorD,
			output	=> memMux_out
	);
	
	--ZERO EXTEND
	U_ZEXT : entity work.zero_extend
	generic map( WIDTH => WIDTH)
	port map
	(
			x			=> InData, --0 sel 
			extended	=> zeroExtended
	);
	
	--memory block
	U_MEMBLOCK: entity work.mem --done
	generic map( WIDTH => WIDTH)
	port map
	(
			addr 		=> memMux_out,
			clk			=> clk,
			rst			=> rst,
			WrData		=> Wr_Data,
			INDATA		=> zeroExtended,
			MemWrite 	=> MemWrite,
			IN0_en 		=> IN0_en,
			IN1_en		=> IN1_en,
			RdData	 	=> mem_Out,
			Outport		=> Outport);

	--~*~*~*~*~*~*~*~*~*~*~*~*~ SECOND BLOCK (IR, REG, 2 MUXES, zero extend) ~*~*~*~*~*~*~*~*~*~*~*~*~
	--IR
	U_IREG: entity work.IR
	generic map(WIDTH => WIDTH)
    port map(
			clk		=> clk,
			rst 	=> rst,
			x 		=> mem_Out,
			x_en	=> IRWrite, 
			read1 	=> read1,
			read2	=> read2,
			Write	=> write,
			ALU		=> ALU_muxSel2,
			ctrl	=> ctrl,
			pcAddr	=> PC_addr);
	--REG
	U_MEM_DATA_REG: entity work.reg
	generic map( WIDTH => WIDTH)
	port map
	(
			clk 	=> clk,
			rst 	=> rst,
			x		=> mem_out,
			x_en	=> '1',
			output	=> memData_out
	);
	
	--MUX1
	U_WR_MUX1 : entity work.mux
	generic map( WIDTH => 5)
	port map
	(
			x		=> read2, --0 sel 
			y		=> write, --1 sel 
			x_sel	=> regDST,
			output	=> wr_mux1_out
	);
	
	--MUX2
	U_WR_MUX2 : entity work.mux
	generic map( WIDTH => WIDTH)
	port map
	(
			x		=> ALUmux_out, --0 sel 
			y		=> memData_out, --1 sel 
			x_sel	=> MemToReg,
			output	=> wr_mux2_out
	);
	
	--~*~*~*~*~*~*~*~*~* THIRD BLOCK (REG FILE, 2 REGS, OPs, 2X1 MUX, 4X1 MUX) ~*~*~*~*~*~*~*~*~*~
	--REGISTER FILE
	U_REG_FILE : entity work.register_file
	port map
	(
			clk 	=> clk,
			rst 	=> rst,
			rd_addr0	=> read1,
			rd_addr1	=> read2,
			wr_addr		=> wr_mux1_out,
			wr_en		=> Reg_write,
			wr_data		=> wr_mux2_out,
			rd_data0	=> regFile_out1,
			rd_data1	=> regFile_out2
			
	);
	
	-- SIGN EXTEND
	U_SEXT: entity work.sign_extend
	generic map( WIDTH => WIDTH)
	port map
	(
			x			=> ALU_muxSel2,
			is_signed 		=> isSigned,
			extended 		=> signExtended
	);
	--SHIFT LEFT 2
	U_SL2 : entity work.SL_two
	generic map
	(
        	WIDTH => WIDTH,
		IN_WIDTH => WIDTH
	)
    port map
	(
			x		=> signExtended,
			shifted 	=> shifted
	);
	--REGA
	U_REGA: entity work.reg
	generic map( WIDTH => WIDTH)
	port map
	(
			clk 	=> clk,
			rst 	=> rst,
			x		=> regFile_out1,
			x_en	=> '1',
			output	=> REGA_out
	);
	--REGB
	U_REGB: entity work.reg
	generic map( WIDTH => WIDTH)
	port map
	(
			clk 	=> clk,
			rst 	=> rst,
			x		=> regFile_out2,
			x_en	=> '1',
			output	=> REGB_out
	);
	
	--2X1 MUX
	U_ALU_MUX1 : entity work.mux
	generic map( WIDTH => WIDTH)
	port map
	(
			x		=> PC_out, --0 sel 
			y		=> REGA_out, --1 sel 
			x_sel	=> ALUSrcA,
			output	=> A_mux_out1
	);
	
	--4X1 MUX
	U_ALU_MUX2 :  entity work.mux_four
	generic map( WIDTH => WIDTH) ---------------FIX ME------------------
	port map
	(
			x		=> REGB_out, --01 sel 
			y		=> x"00000100", --10 sel
			z		=> Sign_Ext_Out,	--11 sel`
			w		=> SL2_out, --00 sel 
			d_sel 	=> ALUSrcB,		
			RdData	=> A_mux_out2
	);
	
	--~*~*~*~*~*~*~*~*~*~*~*~*~ FOURTH BLOCK (OPs, ALU, ALU CTRL) ~*~*~*~*~*~*~*~*~*~*~*~*~
	--SHIFT LEFT 2
	U_SL2_2 : entity work.SL_two
	generic map
	(
        	WIDTH 		=> 28,
			IN_WIDTH 	=> 26
	)
    port map
	(
			x		=> PC_addr,
			shifted => shifted2
	);
	--CONCAT
	--ALU
	U_ALU :  entity work.alu
	generic map( WIDTH => WIDTH)
	port map
	(
		input1		=> A_mux_out1, 
		input2		=> A_mux_out2,
		Op_sel		=> ALU_ctrl,
		IR_HI		=> ALU_muxSel2(10 downto 6),
		result		=> result, 
		result_HI	=> result_HI,
		br_taken 	=> Branched
	);
	
	--ALU CTRL
	U_ALU_CTRL :  entity work.alu_ctrl
	generic map( WIDTH => WIDTH)
	port map
	(
		IR_six		=> ALU_muxSel2(5 downto 0), 
		ALU_Op		=> ALU_Op,
		Op_sel		=> ALU_ctrl,
		HI_en		=> HI_ctrl,
		LO_en		=> LO_ctrl,
		ALU_LO_HI	=> ALU_LO_HI

	);
	--~*~*~*~*~*~*~*~*~*~*~*~*~ FIFTH BLOCK (3 REGS, 2 MUXES) ~*~*~*~*~*~*~*~*~*~*~*~*~
	--ALU OUT 
	U_ALU_OUT : entity work.reg
	generic map( WIDTH => WIDTH)
	port map
	(
			clk 	=> clk,
			rst 	=> rst,
			x		=> result,
			x_en	=> '1',
			output	=> ALU_out
	);
	
	--LO
	U_ALU_LO : entity work.reg
	generic map( WIDTH => WIDTH)
	port map
	(
			clk 	=> clk,
			rst 	=> rst,
			x		=> result,
			x_en	=> LO_ctrl,
			output	=> LO
	);
	
	--HI
	U_ALU_HI : entity work.reg
	generic map( WIDTH => WIDTH)
	port map
	(
			clk 	=> clk,
			rst 	=> rst,
			x		=> result_HI,
			x_en	=> HI_ctrl,
			output	=> HI
	);
	
	--4X1 MUX2
	U_PC_MUX :  entity work.mux_four
	generic map( WIDTH => WIDTH)
	port map
	(
			x		=> result, --01 sel 
			y		=> ALU_out, --10 sel
			z		=> Concat_out,	--11 sel`
			w		=> (others => '0'), --00 sel 
			d_sel 	=> PCSource,		
			RdData	=> PC_in
	);
	
	--4X1 MUX
	U_WRITE_MUX :  entity work.mux_four
	generic map( WIDTH => WIDTH)
	port map
	(
			x		=> ALU_out, --01 sel 
			y		=> LO, --10 sel
			z		=> HI,	--11 sel`
			w		=> (others => '0'), --00 sel 
			d_sel 	=> ALU_LO_HI,		
			RdData	=> ALUmux_out
	);
	
	
end STR;