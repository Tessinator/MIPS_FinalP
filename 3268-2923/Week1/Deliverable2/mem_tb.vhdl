-- mem_tb.vhd
-- Ian Khavin


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity mem_tb is
end mem_tb;

architecture TB of mem_tb is
		constant WIDTH					: positive := 32;
		
        signal enable                  	:    std_logic := '1';
        signal clk                     	:    std_logic := '0';
        signal rst                     	:    std_logic := '1';   
        signal addr                    	:    std_logic_vector(WIDTH-1 downto 0) := (others => '0');
        signal IN0_En              		:    std_logic := '0'; 
        signal IN1_En              		:    std_logic := '0';
        signal MemWrite                	:    std_logic := '0';
        signal IN_DATA              	:    std_logic_vector(WIDTH-1 downto 0) := (others => '0');
        signal Wr_Data               	:    std_logic_vector(WIDTH-1 downto 0) := (others => '0');
        signal Rd_Data                	:    std_logic_vector(WIDTH-1 downto 0) := (others => '0');
        signal Outport                 	:    std_logic_vector(WIDTH-1 downto 0) := (others => '0');

begin

    U_MEM: entity work.mem
        port map(
            clk 		=> clk,
            rst 		=> rst, 
            addr 		=> addr,
            IN0_En 		=> IN0_En,
            IN1_En 		=> IN1_En,
            MemWrite 	=> MemWrite,
            INDATA 		=> IN_DATA,
            WrData 		=> Wr_Data,
            RdData 		=> Rd_Data,
            Outport 	=> Outport
        );
    
    clk <= not clk and enable after 10 ns;

    process
    begin
            rst <= '0';
            wait for 20 ns;


            addr <= (others => '0');
            Wr_data <= x"0A0A0A0A";
            MemWrite <= '1';
            wait for 20 ns;


            addr <= x"00000004";
            Wr_data <= x"F0F0F0F0";
            MemWrite <= '1';
            wait for 20 ns;


            addr <= (others => '0');
            MemWrite <= '0';
            wait for 20 ns;

            addr <= x"00000001";
            wait for 20 ns;


            addr <= x"00000004";
            wait for 20 ns;


            addr <= x"00000005";
            wait for 20 ns;

            addr <= x"0000FFFC";
            Wr_data <= x"00001111";
            MemWrite <= '1';
            wait for 20 ns;


            addr <= x"0000FFF8";
            IN_DATA <= x"00010000";
            IN0_En <= '1';
            wait for 20 ns;


            addr <=x"0000FFFC";
            IN_DATA <= x"00000001";
            IN0_En <= '0';
            IN1_En <= '1';
            wait for 20 ns;


            addr <=x"0000FFF8";
            wait for 20 ns;


            addr <=x"0000FFFC";
            wait for 20 ns;

            report "DONE!!!!!!";
			enable <= '0';
            wait;
        
    end process;
end TB;






