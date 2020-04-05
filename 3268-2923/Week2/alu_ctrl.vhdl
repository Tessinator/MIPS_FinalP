library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_ctrl is
    generic (
        WIDTH : positive := 32);
    port (
			IR_six			: in  std_logic_vector(5 downto 0);
			ALU_Op			: in  std_logic;
			HI_en, LO_en 	: out std_logic;		
			Op_sel			: out std_logic_vector(5 downto 0);
			ALU_LO_HI 		: out std_logic_vector(1 downto 0));
end alu_ctrl;

architecture BHV of alu_ctrl is
begin
	process(IR_six)
	begin
		HI_en <= '0';
		LO_en <= '1';
		Op_sel <= IR_six;
		ALU_LO_HI <= "00";
		
	end process;
end BHV;
