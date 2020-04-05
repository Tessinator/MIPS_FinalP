-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "04/03/2020 12:29:18"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mem IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	addr : IN std_logic_vector(31 DOWNTO 0);
	WrData : IN std_logic_vector(31 DOWNTO 0);
	INDATA : IN std_logic_vector(31 DOWNTO 0);
	MemWrite : IN std_logic;
	IN0_en : IN std_logic;
	IN1_en : IN std_logic;
	RdData : BUFFER std_logic_vector(31 DOWNTO 0);
	Outport : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END mem;

-- Design Ports Information
-- RdData[0]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[2]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[3]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[4]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[5]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[6]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[7]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[8]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[9]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[10]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[11]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[12]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[13]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[14]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[16]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[17]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[18]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[19]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[20]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[21]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[22]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[23]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[24]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[25]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[26]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[27]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[28]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[29]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[30]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdData[31]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[0]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[1]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[2]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[3]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[4]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[6]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[7]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[8]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[9]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[10]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[11]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[12]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[13]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[14]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[15]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[16]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[17]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[18]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[19]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[20]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[21]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[22]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[23]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[24]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[25]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[26]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[27]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[28]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[29]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[30]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Outport[31]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[15]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[17]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[18]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[19]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[20]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[21]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[22]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[16]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[23]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[24]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[25]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[26]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[27]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[28]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[29]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[30]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[31]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[4]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[5]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[6]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[7]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[8]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[9]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[10]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[11]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[12]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[13]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[14]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemWrite	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN0_en	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1_en	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[1]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[1]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[2]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[2]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[3]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[3]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[4]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[4]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[5]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[5]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[6]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[6]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[7]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[7]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[8]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[8]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[9]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[9]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[10]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[10]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[11]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[11]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[12]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[12]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[13]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[13]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[14]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[14]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[15]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[15]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[16]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[16]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[17]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[17]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[18]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[18]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[19]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[19]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[20]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[20]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[21]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[21]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[22]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[22]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[23]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[23]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[24]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[24]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[25]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[25]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[26]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[26]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[27]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[27]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[28]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[28]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[29]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[29]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[30]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[30]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrData[31]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[31]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mem IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_WrData : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_INDATA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_MemWrite : std_logic;
SIGNAL ww_IN0_en : std_logic;
SIGNAL ww_IN1_en : std_logic;
SIGNAL ww_RdData : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Outport : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_SRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U_SRAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_SRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \RdData[0]~output_o\ : std_logic;
SIGNAL \RdData[1]~output_o\ : std_logic;
SIGNAL \RdData[2]~output_o\ : std_logic;
SIGNAL \RdData[3]~output_o\ : std_logic;
SIGNAL \RdData[4]~output_o\ : std_logic;
SIGNAL \RdData[5]~output_o\ : std_logic;
SIGNAL \RdData[6]~output_o\ : std_logic;
SIGNAL \RdData[7]~output_o\ : std_logic;
SIGNAL \RdData[8]~output_o\ : std_logic;
SIGNAL \RdData[9]~output_o\ : std_logic;
SIGNAL \RdData[10]~output_o\ : std_logic;
SIGNAL \RdData[11]~output_o\ : std_logic;
SIGNAL \RdData[12]~output_o\ : std_logic;
SIGNAL \RdData[13]~output_o\ : std_logic;
SIGNAL \RdData[14]~output_o\ : std_logic;
SIGNAL \RdData[15]~output_o\ : std_logic;
SIGNAL \RdData[16]~output_o\ : std_logic;
SIGNAL \RdData[17]~output_o\ : std_logic;
SIGNAL \RdData[18]~output_o\ : std_logic;
SIGNAL \RdData[19]~output_o\ : std_logic;
SIGNAL \RdData[20]~output_o\ : std_logic;
SIGNAL \RdData[21]~output_o\ : std_logic;
SIGNAL \RdData[22]~output_o\ : std_logic;
SIGNAL \RdData[23]~output_o\ : std_logic;
SIGNAL \RdData[24]~output_o\ : std_logic;
SIGNAL \RdData[25]~output_o\ : std_logic;
SIGNAL \RdData[26]~output_o\ : std_logic;
SIGNAL \RdData[27]~output_o\ : std_logic;
SIGNAL \RdData[28]~output_o\ : std_logic;
SIGNAL \RdData[29]~output_o\ : std_logic;
SIGNAL \RdData[30]~output_o\ : std_logic;
SIGNAL \RdData[31]~output_o\ : std_logic;
SIGNAL \Outport[0]~output_o\ : std_logic;
SIGNAL \Outport[1]~output_o\ : std_logic;
SIGNAL \Outport[2]~output_o\ : std_logic;
SIGNAL \Outport[3]~output_o\ : std_logic;
SIGNAL \Outport[4]~output_o\ : std_logic;
SIGNAL \Outport[5]~output_o\ : std_logic;
SIGNAL \Outport[6]~output_o\ : std_logic;
SIGNAL \Outport[7]~output_o\ : std_logic;
SIGNAL \Outport[8]~output_o\ : std_logic;
SIGNAL \Outport[9]~output_o\ : std_logic;
SIGNAL \Outport[10]~output_o\ : std_logic;
SIGNAL \Outport[11]~output_o\ : std_logic;
SIGNAL \Outport[12]~output_o\ : std_logic;
SIGNAL \Outport[13]~output_o\ : std_logic;
SIGNAL \Outport[14]~output_o\ : std_logic;
SIGNAL \Outport[15]~output_o\ : std_logic;
SIGNAL \Outport[16]~output_o\ : std_logic;
SIGNAL \Outport[17]~output_o\ : std_logic;
SIGNAL \Outport[18]~output_o\ : std_logic;
SIGNAL \Outport[19]~output_o\ : std_logic;
SIGNAL \Outport[20]~output_o\ : std_logic;
SIGNAL \Outport[21]~output_o\ : std_logic;
SIGNAL \Outport[22]~output_o\ : std_logic;
SIGNAL \Outport[23]~output_o\ : std_logic;
SIGNAL \Outport[24]~output_o\ : std_logic;
SIGNAL \Outport[25]~output_o\ : std_logic;
SIGNAL \Outport[26]~output_o\ : std_logic;
SIGNAL \Outport[27]~output_o\ : std_logic;
SIGNAL \Outport[28]~output_o\ : std_logic;
SIGNAL \Outport[29]~output_o\ : std_logic;
SIGNAL \Outport[30]~output_o\ : std_logic;
SIGNAL \Outport[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \addr[13]~input_o\ : std_logic;
SIGNAL \addr[12]~input_o\ : std_logic;
SIGNAL \addr[11]~input_o\ : std_logic;
SIGNAL \addr[14]~input_o\ : std_logic;
SIGNAL \U_MEMLOGIC|Equal0~8_combout\ : std_logic;
SIGNAL \addr[31]~input_o\ : std_logic;
SIGNAL \addr[1]~input_o\ : std_logic;
SIGNAL \addr[0]~input_o\ : std_logic;
SIGNAL \addr[30]~input_o\ : std_logic;
SIGNAL \U_MEMLOGIC|Equal0~5_combout\ : std_logic;
SIGNAL \addr[10]~input_o\ : std_logic;
SIGNAL \addr[7]~input_o\ : std_logic;
SIGNAL \addr[9]~input_o\ : std_logic;
SIGNAL \addr[8]~input_o\ : std_logic;
SIGNAL \U_MEMLOGIC|Equal0~7_combout\ : std_logic;
SIGNAL \addr[4]~input_o\ : std_logic;
SIGNAL \addr[3]~input_o\ : std_logic;
SIGNAL \addr[5]~input_o\ : std_logic;
SIGNAL \addr[6]~input_o\ : std_logic;
SIGNAL \U_MEMLOGIC|Equal0~6_combout\ : std_logic;
SIGNAL \U_MEMLOGIC|Equal0~9_combout\ : std_logic;
SIGNAL \addr[16]~input_o\ : std_logic;
SIGNAL \addr[20]~input_o\ : std_logic;
SIGNAL \addr[19]~input_o\ : std_logic;
SIGNAL \addr[21]~input_o\ : std_logic;
SIGNAL \addr[22]~input_o\ : std_logic;
SIGNAL \U_MEMLOGIC|Equal0~1_combout\ : std_logic;
SIGNAL \addr[15]~input_o\ : std_logic;
SIGNAL \addr[17]~input_o\ : std_logic;
SIGNAL \addr[18]~input_o\ : std_logic;
SIGNAL \U_MEMLOGIC|Equal0~0_combout\ : std_logic;
SIGNAL \U_MEMLOGIC|Equal0~2_combout\ : std_logic;
SIGNAL \addr[29]~input_o\ : std_logic;
SIGNAL \addr[23]~input_o\ : std_logic;
SIGNAL \addr[24]~input_o\ : std_logic;
SIGNAL \addr[25]~input_o\ : std_logic;
SIGNAL \addr[26]~input_o\ : std_logic;
SIGNAL \U_MEMLOGIC|Equal0~3_combout\ : std_logic;
SIGNAL \addr[27]~input_o\ : std_logic;
SIGNAL \addr[28]~input_o\ : std_logic;
SIGNAL \U_MEMLOGIC|Equal0~4_combout\ : std_logic;
SIGNAL \U_MEMLOGIC|mux_sel[1]~0_combout\ : std_logic;
SIGNAL \MemWrite~input_o\ : std_logic;
SIGNAL \addr[2]~input_o\ : std_logic;
SIGNAL \U_MEMLOGIC|Equal1~0_combout\ : std_logic;
SIGNAL \U_MEMLOGIC|mux_sel~1_combout\ : std_logic;
SIGNAL \INDATA[0]~input_o\ : std_logic;
SIGNAL \IN1_en~input_o\ : std_logic;
SIGNAL \IN0_en~input_o\ : std_logic;
SIGNAL \U_MEMLOGIC|wr_en~0_combout\ : std_logic;
SIGNAL \U_MEMLOGIC|wr_en~1_combout\ : std_logic;
SIGNAL \WrData[0]~input_o\ : std_logic;
SIGNAL \WrData[1]~input_o\ : std_logic;
SIGNAL \WrData[2]~input_o\ : std_logic;
SIGNAL \WrData[3]~input_o\ : std_logic;
SIGNAL \WrData[4]~input_o\ : std_logic;
SIGNAL \WrData[5]~input_o\ : std_logic;
SIGNAL \WrData[6]~input_o\ : std_logic;
SIGNAL \WrData[7]~input_o\ : std_logic;
SIGNAL \WrData[8]~input_o\ : std_logic;
SIGNAL \WrData[9]~input_o\ : std_logic;
SIGNAL \WrData[10]~input_o\ : std_logic;
SIGNAL \WrData[11]~input_o\ : std_logic;
SIGNAL \WrData[12]~input_o\ : std_logic;
SIGNAL \WrData[13]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux31~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux31~1_combout\ : std_logic;
SIGNAL \INDATA[1]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux30~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux30~1_combout\ : std_logic;
SIGNAL \INDATA[2]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux29~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux29~1_combout\ : std_logic;
SIGNAL \INDATA[3]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux28~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux28~1_combout\ : std_logic;
SIGNAL \INDATA[4]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux27~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux27~1_combout\ : std_logic;
SIGNAL \INDATA[5]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux26~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux26~1_combout\ : std_logic;
SIGNAL \INDATA[6]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux25~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux25~1_combout\ : std_logic;
SIGNAL \INDATA[7]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux24~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux24~1_combout\ : std_logic;
SIGNAL \INDATA[8]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux23~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux23~1_combout\ : std_logic;
SIGNAL \INDATA[9]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux22~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux22~1_combout\ : std_logic;
SIGNAL \INDATA[10]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux21~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux21~1_combout\ : std_logic;
SIGNAL \INDATA[11]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux20~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux20~1_combout\ : std_logic;
SIGNAL \INDATA[12]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux19~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux19~1_combout\ : std_logic;
SIGNAL \INDATA[13]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux18~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux18~1_combout\ : std_logic;
SIGNAL \INDATA[14]~input_o\ : std_logic;
SIGNAL \WrData[14]~input_o\ : std_logic;
SIGNAL \WrData[15]~input_o\ : std_logic;
SIGNAL \WrData[16]~input_o\ : std_logic;
SIGNAL \WrData[17]~input_o\ : std_logic;
SIGNAL \WrData[18]~input_o\ : std_logic;
SIGNAL \WrData[19]~input_o\ : std_logic;
SIGNAL \WrData[20]~input_o\ : std_logic;
SIGNAL \WrData[21]~input_o\ : std_logic;
SIGNAL \WrData[22]~input_o\ : std_logic;
SIGNAL \WrData[23]~input_o\ : std_logic;
SIGNAL \WrData[24]~input_o\ : std_logic;
SIGNAL \WrData[25]~input_o\ : std_logic;
SIGNAL \WrData[26]~input_o\ : std_logic;
SIGNAL \WrData[27]~input_o\ : std_logic;
SIGNAL \WrData[28]~input_o\ : std_logic;
SIGNAL \WrData[29]~input_o\ : std_logic;
SIGNAL \WrData[30]~input_o\ : std_logic;
SIGNAL \WrData[31]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux17~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux17~1_combout\ : std_logic;
SIGNAL \INDATA[15]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux16~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux16~1_combout\ : std_logic;
SIGNAL \INDATA[16]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux15~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux15~1_combout\ : std_logic;
SIGNAL \INDATA[17]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux14~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux14~1_combout\ : std_logic;
SIGNAL \INDATA[18]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux13~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux13~1_combout\ : std_logic;
SIGNAL \INDATA[19]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux12~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux12~1_combout\ : std_logic;
SIGNAL \INDATA[20]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux11~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux11~1_combout\ : std_logic;
SIGNAL \INDATA[21]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux10~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux10~1_combout\ : std_logic;
SIGNAL \INDATA[22]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux9~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux9~1_combout\ : std_logic;
SIGNAL \INDATA[23]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux8~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux8~1_combout\ : std_logic;
SIGNAL \INDATA[24]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux7~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux7~1_combout\ : std_logic;
SIGNAL \INDATA[25]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux6~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux6~1_combout\ : std_logic;
SIGNAL \INDATA[26]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux5~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux5~1_combout\ : std_logic;
SIGNAL \INDATA[27]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux4~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux4~1_combout\ : std_logic;
SIGNAL \INDATA[28]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux3~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux3~1_combout\ : std_logic;
SIGNAL \INDATA[29]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux2~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux2~1_combout\ : std_logic;
SIGNAL \INDATA[30]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux1~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux1~1_combout\ : std_logic;
SIGNAL \INDATA[31]~input_o\ : std_logic;
SIGNAL \U_RDMUX|Mux0~0_combout\ : std_logic;
SIGNAL \U_RDMUX|Mux0~1_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[0]~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_MEMLOGIC|OutWr_en~0_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[1]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[2]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[3]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[4]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[5]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[6]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[7]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[8]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[9]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[10]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[11]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[12]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[13]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[14]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[15]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[16]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[17]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[18]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[19]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[20]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[21]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[22]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[23]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[24]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[25]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[26]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[27]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[28]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[29]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[30]~feeder_combout\ : std_logic;
SIGNAL \U_OUTPORT|input[31]~feeder_combout\ : std_logic;
SIGNAL \U_SRAM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_INPORT0|input\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_DELAYREG|input\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_INPORT1|input\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_OUTPORT|input\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_MemWrite~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_addr <= addr;
ww_WrData <= WrData;
ww_INDATA <= INDATA;
ww_MemWrite <= MemWrite;
ww_IN0_en <= IN0_en;
ww_IN1_en <= IN1_en;
RdData <= ww_RdData;
Outport <= ww_Outport;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U_SRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \WrData[13]~input_o\ & \WrData[12]~input_o\ & \WrData[11]~input_o\ & \WrData[10]~input_o\ & \WrData[9]~input_o\ & \WrData[8]~input_o\ & 
\WrData[7]~input_o\ & \WrData[6]~input_o\ & \WrData[5]~input_o\ & \WrData[4]~input_o\ & \WrData[3]~input_o\ & \WrData[2]~input_o\ & \WrData[1]~input_o\ & \WrData[0]~input_o\);

\U_SRAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & \addr[3]~input_o\ & \addr[2]~input_o\);

\U_SRAM|altsyncram_component|auto_generated|q_a\(0) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\U_SRAM|altsyncram_component|auto_generated|q_a\(1) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\U_SRAM|altsyncram_component|auto_generated|q_a\(2) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\U_SRAM|altsyncram_component|auto_generated|q_a\(3) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\U_SRAM|altsyncram_component|auto_generated|q_a\(4) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\U_SRAM|altsyncram_component|auto_generated|q_a\(5) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\U_SRAM|altsyncram_component|auto_generated|q_a\(6) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\U_SRAM|altsyncram_component|auto_generated|q_a\(7) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\U_SRAM|altsyncram_component|auto_generated|q_a\(8) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\U_SRAM|altsyncram_component|auto_generated|q_a\(9) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\U_SRAM|altsyncram_component|auto_generated|q_a\(10) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\U_SRAM|altsyncram_component|auto_generated|q_a\(11) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\U_SRAM|altsyncram_component|auto_generated|q_a\(12) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\U_SRAM|altsyncram_component|auto_generated|q_a\(13) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);

\U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\WrData[31]~input_o\ & \WrData[30]~input_o\ & \WrData[29]~input_o\ & \WrData[28]~input_o\ & \WrData[27]~input_o\ & \WrData[26]~input_o\ & \WrData[25]~input_o\ & 
\WrData[24]~input_o\ & \WrData[23]~input_o\ & \WrData[22]~input_o\ & \WrData[21]~input_o\ & \WrData[20]~input_o\ & \WrData[19]~input_o\ & \WrData[18]~input_o\ & \WrData[17]~input_o\ & \WrData[16]~input_o\ & \WrData[15]~input_o\ & \WrData[14]~input_o\);

\U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & \addr[3]~input_o\ & \addr[2]~input_o\);

\U_SRAM|altsyncram_component|auto_generated|q_a\(14) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\U_SRAM|altsyncram_component|auto_generated|q_a\(15) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);
\U_SRAM|altsyncram_component|auto_generated|q_a\(16) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(2);
\U_SRAM|altsyncram_component|auto_generated|q_a\(17) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(3);
\U_SRAM|altsyncram_component|auto_generated|q_a\(18) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(4);
\U_SRAM|altsyncram_component|auto_generated|q_a\(19) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(5);
\U_SRAM|altsyncram_component|auto_generated|q_a\(20) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(6);
\U_SRAM|altsyncram_component|auto_generated|q_a\(21) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(7);
\U_SRAM|altsyncram_component|auto_generated|q_a\(22) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(8);
\U_SRAM|altsyncram_component|auto_generated|q_a\(23) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(9);
\U_SRAM|altsyncram_component|auto_generated|q_a\(24) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(10);
\U_SRAM|altsyncram_component|auto_generated|q_a\(25) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(11);
\U_SRAM|altsyncram_component|auto_generated|q_a\(26) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(12);
\U_SRAM|altsyncram_component|auto_generated|q_a\(27) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(13);
\U_SRAM|altsyncram_component|auto_generated|q_a\(28) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(14);
\U_SRAM|altsyncram_component|auto_generated|q_a\(29) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(15);
\U_SRAM|altsyncram_component|auto_generated|q_a\(30) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(16);
\U_SRAM|altsyncram_component|auto_generated|q_a\(31) <= \U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(17);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_MemWrite~input_o\ <= NOT \MemWrite~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y47_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X78_Y20_N24
\RdData[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux31~1_combout\,
	devoe => ww_devoe,
	o => \RdData[0]~output_o\);

-- Location: IOOBUF_X78_Y18_N16
\RdData[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux30~1_combout\,
	devoe => ww_devoe,
	o => \RdData[1]~output_o\);

-- Location: IOOBUF_X78_Y30_N2
\RdData[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux29~1_combout\,
	devoe => ww_devoe,
	o => \RdData[2]~output_o\);

-- Location: IOOBUF_X78_Y23_N9
\RdData[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux28~1_combout\,
	devoe => ww_devoe,
	o => \RdData[3]~output_o\);

-- Location: IOOBUF_X78_Y20_N9
\RdData[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux27~1_combout\,
	devoe => ww_devoe,
	o => \RdData[4]~output_o\);

-- Location: IOOBUF_X78_Y18_N23
\RdData[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux26~1_combout\,
	devoe => ww_devoe,
	o => \RdData[5]~output_o\);

-- Location: IOOBUF_X78_Y17_N16
\RdData[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux25~1_combout\,
	devoe => ww_devoe,
	o => \RdData[6]~output_o\);

-- Location: IOOBUF_X78_Y17_N9
\RdData[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux24~1_combout\,
	devoe => ww_devoe,
	o => \RdData[7]~output_o\);

-- Location: IOOBUF_X62_Y0_N30
\RdData[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux23~1_combout\,
	devoe => ww_devoe,
	o => \RdData[8]~output_o\);

-- Location: IOOBUF_X69_Y0_N23
\RdData[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux22~1_combout\,
	devoe => ww_devoe,
	o => \RdData[9]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\RdData[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux21~1_combout\,
	devoe => ww_devoe,
	o => \RdData[10]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\RdData[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux20~1_combout\,
	devoe => ww_devoe,
	o => \RdData[11]~output_o\);

-- Location: IOOBUF_X58_Y0_N23
\RdData[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux19~1_combout\,
	devoe => ww_devoe,
	o => \RdData[12]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\RdData[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux18~1_combout\,
	devoe => ww_devoe,
	o => \RdData[13]~output_o\);

-- Location: IOOBUF_X60_Y0_N30
\RdData[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux17~1_combout\,
	devoe => ww_devoe,
	o => \RdData[14]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\RdData[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux16~1_combout\,
	devoe => ww_devoe,
	o => \RdData[15]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\RdData[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux15~1_combout\,
	devoe => ww_devoe,
	o => \RdData[16]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\RdData[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux14~1_combout\,
	devoe => ww_devoe,
	o => \RdData[17]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\RdData[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux13~1_combout\,
	devoe => ww_devoe,
	o => \RdData[18]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\RdData[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux12~1_combout\,
	devoe => ww_devoe,
	o => \RdData[19]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\RdData[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux11~1_combout\,
	devoe => ww_devoe,
	o => \RdData[20]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\RdData[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux10~1_combout\,
	devoe => ww_devoe,
	o => \RdData[21]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\RdData[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux9~1_combout\,
	devoe => ww_devoe,
	o => \RdData[22]~output_o\);

-- Location: IOOBUF_X56_Y0_N30
\RdData[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux8~1_combout\,
	devoe => ww_devoe,
	o => \RdData[23]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\RdData[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux7~1_combout\,
	devoe => ww_devoe,
	o => \RdData[24]~output_o\);

-- Location: IOOBUF_X78_Y23_N2
\RdData[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \RdData[25]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\RdData[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \RdData[26]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\RdData[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \RdData[27]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\RdData[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \RdData[28]~output_o\);

-- Location: IOOBUF_X51_Y0_N30
\RdData[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \RdData[29]~output_o\);

-- Location: IOOBUF_X51_Y0_N2
\RdData[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \RdData[30]~output_o\);

-- Location: IOOBUF_X78_Y21_N23
\RdData[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_RDMUX|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \RdData[31]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\Outport[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(0),
	devoe => ww_devoe,
	o => \Outport[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\Outport[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(1),
	devoe => ww_devoe,
	o => \Outport[1]~output_o\);

-- Location: IOOBUF_X78_Y31_N16
\Outport[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(2),
	devoe => ww_devoe,
	o => \Outport[2]~output_o\);

-- Location: IOOBUF_X78_Y24_N16
\Outport[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(3),
	devoe => ww_devoe,
	o => \Outport[3]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\Outport[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(4),
	devoe => ww_devoe,
	o => \Outport[4]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\Outport[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(5),
	devoe => ww_devoe,
	o => \Outport[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\Outport[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(6),
	devoe => ww_devoe,
	o => \Outport[6]~output_o\);

-- Location: IOOBUF_X78_Y23_N16
\Outport[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(7),
	devoe => ww_devoe,
	o => \Outport[7]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\Outport[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(8),
	devoe => ww_devoe,
	o => \Outport[8]~output_o\);

-- Location: IOOBUF_X78_Y24_N9
\Outport[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(9),
	devoe => ww_devoe,
	o => \Outport[9]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\Outport[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(10),
	devoe => ww_devoe,
	o => \Outport[10]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\Outport[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(11),
	devoe => ww_devoe,
	o => \Outport[11]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\Outport[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(12),
	devoe => ww_devoe,
	o => \Outport[12]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\Outport[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(13),
	devoe => ww_devoe,
	o => \Outport[13]~output_o\);

-- Location: IOOBUF_X78_Y23_N23
\Outport[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(14),
	devoe => ww_devoe,
	o => \Outport[14]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\Outport[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(15),
	devoe => ww_devoe,
	o => \Outport[15]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\Outport[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(16),
	devoe => ww_devoe,
	o => \Outport[16]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\Outport[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(17),
	devoe => ww_devoe,
	o => \Outport[17]~output_o\);

-- Location: IOOBUF_X78_Y20_N16
\Outport[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(18),
	devoe => ww_devoe,
	o => \Outport[18]~output_o\);

-- Location: IOOBUF_X78_Y21_N9
\Outport[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(19),
	devoe => ww_devoe,
	o => \Outport[19]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\Outport[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(20),
	devoe => ww_devoe,
	o => \Outport[20]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\Outport[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(21),
	devoe => ww_devoe,
	o => \Outport[21]~output_o\);

-- Location: IOOBUF_X78_Y33_N23
\Outport[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(22),
	devoe => ww_devoe,
	o => \Outport[22]~output_o\);

-- Location: IOOBUF_X78_Y31_N9
\Outport[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(23),
	devoe => ww_devoe,
	o => \Outport[23]~output_o\);

-- Location: IOOBUF_X78_Y31_N2
\Outport[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(24),
	devoe => ww_devoe,
	o => \Outport[24]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\Outport[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(25),
	devoe => ww_devoe,
	o => \Outport[25]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\Outport[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(26),
	devoe => ww_devoe,
	o => \Outport[26]~output_o\);

-- Location: IOOBUF_X78_Y33_N16
\Outport[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(27),
	devoe => ww_devoe,
	o => \Outport[27]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\Outport[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(28),
	devoe => ww_devoe,
	o => \Outport[28]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\Outport[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(29),
	devoe => ww_devoe,
	o => \Outport[29]~output_o\);

-- Location: IOOBUF_X78_Y3_N23
\Outport[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(30),
	devoe => ww_devoe,
	o => \Outport[30]~output_o\);

-- Location: IOOBUF_X78_Y36_N9
\Outport[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_OUTPORT|input\(31),
	devoe => ww_devoe,
	o => \Outport[31]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X29_Y0_N22
\addr[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(13),
	o => \addr[13]~input_o\);

-- Location: IOIBUF_X24_Y0_N15
\addr[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(12),
	o => \addr[12]~input_o\);

-- Location: IOIBUF_X24_Y0_N29
\addr[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(11),
	o => \addr[11]~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\addr[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(14),
	o => \addr[14]~input_o\);

-- Location: LCCOMB_X29_Y1_N8
\U_MEMLOGIC|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEMLOGIC|Equal0~8_combout\ = (\addr[13]~input_o\ & (\addr[12]~input_o\ & (\addr[11]~input_o\ & \addr[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[13]~input_o\,
	datab => \addr[12]~input_o\,
	datac => \addr[11]~input_o\,
	datad => \addr[14]~input_o\,
	combout => \U_MEMLOGIC|Equal0~8_combout\);

-- Location: IOIBUF_X26_Y0_N29
\addr[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(31),
	o => \addr[31]~input_o\);

-- Location: IOIBUF_X22_Y0_N15
\addr[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(1),
	o => \addr[1]~input_o\);

-- Location: IOIBUF_X24_Y0_N22
\addr[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(0),
	o => \addr[0]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\addr[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(30),
	o => \addr[30]~input_o\);

-- Location: LCCOMB_X30_Y1_N28
\U_MEMLOGIC|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEMLOGIC|Equal0~5_combout\ = (!\addr[31]~input_o\ & (!\addr[1]~input_o\ & (!\addr[0]~input_o\ & !\addr[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[31]~input_o\,
	datab => \addr[1]~input_o\,
	datac => \addr[0]~input_o\,
	datad => \addr[30]~input_o\,
	combout => \U_MEMLOGIC|Equal0~5_combout\);

-- Location: IOIBUF_X22_Y0_N29
\addr[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(10),
	o => \addr[10]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\addr[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(7),
	o => \addr[7]~input_o\);

-- Location: IOIBUF_X38_Y0_N15
\addr[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(9),
	o => \addr[9]~input_o\);

-- Location: IOIBUF_X34_Y0_N29
\addr[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(8),
	o => \addr[8]~input_o\);

-- Location: LCCOMB_X30_Y1_N30
\U_MEMLOGIC|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEMLOGIC|Equal0~7_combout\ = (\addr[10]~input_o\ & (\addr[7]~input_o\ & (\addr[9]~input_o\ & \addr[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[10]~input_o\,
	datab => \addr[7]~input_o\,
	datac => \addr[9]~input_o\,
	datad => \addr[8]~input_o\,
	combout => \U_MEMLOGIC|Equal0~7_combout\);

-- Location: IOIBUF_X34_Y0_N15
\addr[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(4),
	o => \addr[4]~input_o\);

-- Location: IOIBUF_X38_Y0_N29
\addr[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(3),
	o => \addr[3]~input_o\);

-- Location: IOIBUF_X38_Y0_N22
\addr[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(5),
	o => \addr[5]~input_o\);

-- Location: IOIBUF_X40_Y0_N29
\addr[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(6),
	o => \addr[6]~input_o\);

-- Location: LCCOMB_X44_Y1_N0
\U_MEMLOGIC|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEMLOGIC|Equal0~6_combout\ = (\addr[4]~input_o\ & (\addr[3]~input_o\ & (\addr[5]~input_o\ & \addr[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[5]~input_o\,
	datad => \addr[6]~input_o\,
	combout => \U_MEMLOGIC|Equal0~6_combout\);

-- Location: LCCOMB_X30_Y1_N8
\U_MEMLOGIC|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEMLOGIC|Equal0~9_combout\ = (\U_MEMLOGIC|Equal0~8_combout\ & (\U_MEMLOGIC|Equal0~5_combout\ & (\U_MEMLOGIC|Equal0~7_combout\ & \U_MEMLOGIC|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMLOGIC|Equal0~8_combout\,
	datab => \U_MEMLOGIC|Equal0~5_combout\,
	datac => \U_MEMLOGIC|Equal0~7_combout\,
	datad => \U_MEMLOGIC|Equal0~6_combout\,
	combout => \U_MEMLOGIC|Equal0~9_combout\);

-- Location: IOIBUF_X18_Y0_N29
\addr[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(16),
	o => \addr[16]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\addr[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(20),
	o => \addr[20]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\addr[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(19),
	o => \addr[19]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\addr[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(21),
	o => \addr[21]~input_o\);

-- Location: IOIBUF_X31_Y0_N15
\addr[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(22),
	o => \addr[22]~input_o\);

-- Location: LCCOMB_X25_Y1_N16
\U_MEMLOGIC|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEMLOGIC|Equal0~1_combout\ = (!\addr[20]~input_o\ & (!\addr[19]~input_o\ & (!\addr[21]~input_o\ & !\addr[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[20]~input_o\,
	datab => \addr[19]~input_o\,
	datac => \addr[21]~input_o\,
	datad => \addr[22]~input_o\,
	combout => \U_MEMLOGIC|Equal0~1_combout\);

-- Location: IOIBUF_X26_Y0_N15
\addr[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(15),
	o => \addr[15]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\addr[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(17),
	o => \addr[17]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\addr[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(18),
	o => \addr[18]~input_o\);

-- Location: LCCOMB_X30_Y1_N20
\U_MEMLOGIC|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEMLOGIC|Equal0~0_combout\ = (!\addr[17]~input_o\ & !\addr[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[17]~input_o\,
	datac => \addr[18]~input_o\,
	combout => \U_MEMLOGIC|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y1_N22
\U_MEMLOGIC|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEMLOGIC|Equal0~2_combout\ = (!\addr[16]~input_o\ & (\U_MEMLOGIC|Equal0~1_combout\ & (\addr[15]~input_o\ & \U_MEMLOGIC|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[16]~input_o\,
	datab => \U_MEMLOGIC|Equal0~1_combout\,
	datac => \addr[15]~input_o\,
	datad => \U_MEMLOGIC|Equal0~0_combout\,
	combout => \U_MEMLOGIC|Equal0~2_combout\);

-- Location: IOIBUF_X29_Y0_N29
\addr[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(29),
	o => \addr[29]~input_o\);

-- Location: IOIBUF_X22_Y0_N22
\addr[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(23),
	o => \addr[23]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\addr[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(24),
	o => \addr[24]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\addr[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(25),
	o => \addr[25]~input_o\);

-- Location: IOIBUF_X31_Y0_N22
\addr[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(26),
	o => \addr[26]~input_o\);

-- Location: LCCOMB_X30_Y1_N24
\U_MEMLOGIC|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEMLOGIC|Equal0~3_combout\ = (!\addr[23]~input_o\ & (!\addr[24]~input_o\ & (!\addr[25]~input_o\ & !\addr[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[23]~input_o\,
	datab => \addr[24]~input_o\,
	datac => \addr[25]~input_o\,
	datad => \addr[26]~input_o\,
	combout => \U_MEMLOGIC|Equal0~3_combout\);

-- Location: IOIBUF_X31_Y0_N1
\addr[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(27),
	o => \addr[27]~input_o\);

-- Location: IOIBUF_X31_Y0_N29
\addr[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(28),
	o => \addr[28]~input_o\);

-- Location: LCCOMB_X30_Y1_N18
\U_MEMLOGIC|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEMLOGIC|Equal0~4_combout\ = (!\addr[29]~input_o\ & (\U_MEMLOGIC|Equal0~3_combout\ & (!\addr[27]~input_o\ & !\addr[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[29]~input_o\,
	datab => \U_MEMLOGIC|Equal0~3_combout\,
	datac => \addr[27]~input_o\,
	datad => \addr[28]~input_o\,
	combout => \U_MEMLOGIC|Equal0~4_combout\);

-- Location: LCCOMB_X30_Y1_N16
\U_MEMLOGIC|mux_sel[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEMLOGIC|mux_sel[1]~0_combout\ = ((!\U_MEMLOGIC|Equal0~4_combout\) # (!\U_MEMLOGIC|Equal0~2_combout\)) # (!\U_MEMLOGIC|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MEMLOGIC|Equal0~9_combout\,
	datac => \U_MEMLOGIC|Equal0~2_combout\,
	datad => \U_MEMLOGIC|Equal0~4_combout\,
	combout => \U_MEMLOGIC|mux_sel[1]~0_combout\);

-- Location: IOIBUF_X29_Y0_N1
\MemWrite~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MemWrite,
	o => \MemWrite~input_o\);

-- Location: FF_X30_Y1_N17
\U_DELAYREG|input[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_MEMLOGIC|mux_sel[1]~0_combout\,
	ena => \ALT_INV_MemWrite~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DELAYREG|input\(1));

-- Location: IOIBUF_X34_Y0_N8
\addr[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(2),
	o => \addr[2]~input_o\);

-- Location: LCCOMB_X30_Y1_N6
\U_MEMLOGIC|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEMLOGIC|Equal1~0_combout\ = (\U_MEMLOGIC|Equal0~2_combout\ & (\U_MEMLOGIC|Equal0~9_combout\ & (\addr[2]~input_o\ & \U_MEMLOGIC|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMLOGIC|Equal0~2_combout\,
	datab => \U_MEMLOGIC|Equal0~9_combout\,
	datac => \addr[2]~input_o\,
	datad => \U_MEMLOGIC|Equal0~4_combout\,
	combout => \U_MEMLOGIC|Equal1~0_combout\);

-- Location: LCCOMB_X30_Y1_N26
\U_MEMLOGIC|mux_sel~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEMLOGIC|mux_sel~1_combout\ = \U_MEMLOGIC|Equal1~0_combout\ $ (((\addr[30]~input_o\) # (\addr[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[30]~input_o\,
	datab => \addr[31]~input_o\,
	datad => \U_MEMLOGIC|Equal1~0_combout\,
	combout => \U_MEMLOGIC|mux_sel~1_combout\);

-- Location: FF_X30_Y1_N27
\U_DELAYREG|input[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_MEMLOGIC|mux_sel~1_combout\,
	ena => \ALT_INV_MemWrite~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DELAYREG|input\(0));

-- Location: IOIBUF_X54_Y54_N1
\INDATA[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(0),
	o => \INDATA[0]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\IN1_en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1_en,
	o => \IN1_en~input_o\);

-- Location: FF_X54_Y15_N11
\U_INPORT1|input[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[0]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(0));

-- Location: IOIBUF_X62_Y0_N15
\IN0_en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN0_en,
	o => \IN0_en~input_o\);

-- Location: FF_X54_Y15_N25
\U_INPORT0|input[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[0]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(0));

-- Location: LCCOMB_X30_Y1_N10
\U_MEMLOGIC|wr_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEMLOGIC|wr_en~0_combout\ = (!\addr[31]~input_o\ & (\MemWrite~input_o\ & !\addr[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[31]~input_o\,
	datac => \MemWrite~input_o\,
	datad => \addr[30]~input_o\,
	combout => \U_MEMLOGIC|wr_en~0_combout\);

-- Location: LCCOMB_X30_Y1_N12
\U_MEMLOGIC|wr_en~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEMLOGIC|wr_en~1_combout\ = (\U_MEMLOGIC|wr_en~0_combout\ & (((!\U_MEMLOGIC|Equal0~4_combout\) # (!\U_MEMLOGIC|Equal0~2_combout\)) # (!\U_MEMLOGIC|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMLOGIC|wr_en~0_combout\,
	datab => \U_MEMLOGIC|Equal0~9_combout\,
	datac => \U_MEMLOGIC|Equal0~2_combout\,
	datad => \U_MEMLOGIC|Equal0~4_combout\,
	combout => \U_MEMLOGIC|wr_en~1_combout\);

-- Location: IOIBUF_X78_Y37_N15
\WrData[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(0),
	o => \WrData[0]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\WrData[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(1),
	o => \WrData[1]~input_o\);

-- Location: IOIBUF_X78_Y36_N23
\WrData[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(2),
	o => \WrData[2]~input_o\);

-- Location: IOIBUF_X78_Y24_N23
\WrData[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(3),
	o => \WrData[3]~input_o\);

-- Location: IOIBUF_X78_Y20_N1
\WrData[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(4),
	o => \WrData[4]~input_o\);

-- Location: IOIBUF_X78_Y25_N1
\WrData[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(5),
	o => \WrData[5]~input_o\);

-- Location: IOIBUF_X78_Y30_N15
\WrData[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(6),
	o => \WrData[6]~input_o\);

-- Location: IOIBUF_X78_Y17_N1
\WrData[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(7),
	o => \WrData[7]~input_o\);

-- Location: IOIBUF_X78_Y3_N1
\WrData[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(8),
	o => \WrData[8]~input_o\);

-- Location: IOIBUF_X78_Y21_N1
\WrData[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(9),
	o => \WrData[9]~input_o\);

-- Location: IOIBUF_X78_Y29_N15
\WrData[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(10),
	o => \WrData[10]~input_o\);

-- Location: IOIBUF_X78_Y16_N8
\WrData[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(11),
	o => \WrData[11]~input_o\);

-- Location: IOIBUF_X78_Y15_N22
\WrData[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(12),
	o => \WrData[12]~input_o\);

-- Location: IOIBUF_X78_Y16_N15
\WrData[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(13),
	o => \WrData[13]~input_o\);

-- Location: M9K_X53_Y15_N0
\U_SRAM|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "sram:U_SRAM|altsyncram:altsyncram_component|altsyncram_3bp3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U_MEMLOGIC|wr_en~1_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \U_SRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \U_SRAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_SRAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y15_N24
\U_RDMUX|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux31~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & ((\U_SRAM|altsyncram_component|auto_generated|q_a\(0)))) # (!\U_DELAYREG|input\(1) & (\U_INPORT0|input\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT0|input\(0),
	datad => \U_SRAM|altsyncram_component|auto_generated|q_a\(0),
	combout => \U_RDMUX|Mux31~0_combout\);

-- Location: LCCOMB_X54_Y15_N10
\U_RDMUX|Mux31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux31~1_combout\ = (\U_RDMUX|Mux31~0_combout\) # ((!\U_DELAYREG|input\(1) & (\U_DELAYREG|input\(0) & \U_INPORT1|input\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT1|input\(0),
	datad => \U_RDMUX|Mux31~0_combout\,
	combout => \U_RDMUX|Mux31~1_combout\);

-- Location: IOIBUF_X54_Y54_N8
\INDATA[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(1),
	o => \INDATA[1]~input_o\);

-- Location: FF_X54_Y15_N5
\U_INPORT0|input[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[1]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(1));

-- Location: LCCOMB_X54_Y15_N4
\U_RDMUX|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux30~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & (\U_SRAM|altsyncram_component|auto_generated|q_a\(1))) # (!\U_DELAYREG|input\(1) & ((\U_INPORT0|input\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_SRAM|altsyncram_component|auto_generated|q_a\(1),
	datac => \U_INPORT0|input\(1),
	datad => \U_DELAYREG|input\(0),
	combout => \U_RDMUX|Mux30~0_combout\);

-- Location: FF_X54_Y15_N23
\U_INPORT1|input[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[1]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(1));

-- Location: LCCOMB_X54_Y15_N22
\U_RDMUX|Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux30~1_combout\ = (\U_RDMUX|Mux30~0_combout\) # ((!\U_DELAYREG|input\(1) & (\U_INPORT1|input\(1) & \U_DELAYREG|input\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_RDMUX|Mux30~0_combout\,
	datac => \U_INPORT1|input\(1),
	datad => \U_DELAYREG|input\(0),
	combout => \U_RDMUX|Mux30~1_combout\);

-- Location: IOIBUF_X78_Y21_N15
\INDATA[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(2),
	o => \INDATA[2]~input_o\);

-- Location: FF_X54_Y15_N3
\U_INPORT1|input[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[2]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(2));

-- Location: FF_X54_Y15_N17
\U_INPORT0|input[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[2]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(2));

-- Location: LCCOMB_X54_Y15_N16
\U_RDMUX|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux29~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & (\U_SRAM|altsyncram_component|auto_generated|q_a\(2))) # (!\U_DELAYREG|input\(1) & ((\U_INPORT0|input\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SRAM|altsyncram_component|auto_generated|q_a\(2),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT0|input\(2),
	datad => \U_DELAYREG|input\(1),
	combout => \U_RDMUX|Mux29~0_combout\);

-- Location: LCCOMB_X54_Y15_N2
\U_RDMUX|Mux29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux29~1_combout\ = (\U_RDMUX|Mux29~0_combout\) # ((!\U_DELAYREG|input\(1) & (\U_DELAYREG|input\(0) & \U_INPORT1|input\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT1|input\(2),
	datad => \U_RDMUX|Mux29~0_combout\,
	combout => \U_RDMUX|Mux29~1_combout\);

-- Location: IOIBUF_X54_Y0_N1
\INDATA[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(3),
	o => \INDATA[3]~input_o\);

-- Location: FF_X54_Y15_N7
\U_INPORT1|input[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[3]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(3));

-- Location: FF_X54_Y15_N29
\U_INPORT0|input[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[3]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(3));

-- Location: LCCOMB_X54_Y15_N28
\U_RDMUX|Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux28~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & ((\U_SRAM|altsyncram_component|auto_generated|q_a\(3)))) # (!\U_DELAYREG|input\(1) & (\U_INPORT0|input\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT0|input\(3),
	datad => \U_SRAM|altsyncram_component|auto_generated|q_a\(3),
	combout => \U_RDMUX|Mux28~0_combout\);

-- Location: LCCOMB_X54_Y15_N6
\U_RDMUX|Mux28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux28~1_combout\ = (\U_RDMUX|Mux28~0_combout\) # ((!\U_DELAYREG|input\(1) & (\U_DELAYREG|input\(0) & \U_INPORT1|input\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT1|input\(3),
	datad => \U_RDMUX|Mux28~0_combout\,
	combout => \U_RDMUX|Mux28~1_combout\);

-- Location: IOIBUF_X78_Y17_N22
\INDATA[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(4),
	o => \INDATA[4]~input_o\);

-- Location: FF_X54_Y15_N9
\U_INPORT0|input[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[4]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(4));

-- Location: LCCOMB_X54_Y15_N8
\U_RDMUX|Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux27~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & ((\U_SRAM|altsyncram_component|auto_generated|q_a\(4)))) # (!\U_DELAYREG|input\(1) & (\U_INPORT0|input\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT0|input\(4),
	datad => \U_SRAM|altsyncram_component|auto_generated|q_a\(4),
	combout => \U_RDMUX|Mux27~0_combout\);

-- Location: FF_X54_Y15_N19
\U_INPORT1|input[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[4]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(4));

-- Location: LCCOMB_X54_Y15_N18
\U_RDMUX|Mux27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux27~1_combout\ = (\U_RDMUX|Mux27~0_combout\) # ((!\U_DELAYREG|input\(1) & (\U_INPORT1|input\(4) & \U_DELAYREG|input\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_RDMUX|Mux27~0_combout\,
	datac => \U_INPORT1|input\(4),
	datad => \U_DELAYREG|input\(0),
	combout => \U_RDMUX|Mux27~1_combout\);

-- Location: IOIBUF_X54_Y0_N15
\INDATA[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(5),
	o => \INDATA[5]~input_o\);

-- Location: FF_X54_Y15_N31
\U_INPORT1|input[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[5]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(5));

-- Location: FF_X54_Y15_N13
\U_INPORT0|input[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[5]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(5));

-- Location: LCCOMB_X54_Y15_N12
\U_RDMUX|Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux26~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & ((\U_SRAM|altsyncram_component|auto_generated|q_a\(5)))) # (!\U_DELAYREG|input\(1) & (\U_INPORT0|input\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT0|input\(5),
	datad => \U_SRAM|altsyncram_component|auto_generated|q_a\(5),
	combout => \U_RDMUX|Mux26~0_combout\);

-- Location: LCCOMB_X54_Y15_N30
\U_RDMUX|Mux26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux26~1_combout\ = (\U_RDMUX|Mux26~0_combout\) # ((!\U_DELAYREG|input\(1) & (\U_DELAYREG|input\(0) & \U_INPORT1|input\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT1|input\(5),
	datad => \U_RDMUX|Mux26~0_combout\,
	combout => \U_RDMUX|Mux26~1_combout\);

-- Location: IOIBUF_X78_Y18_N8
\INDATA[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(6),
	o => \INDATA[6]~input_o\);

-- Location: FF_X54_Y15_N27
\U_INPORT1|input[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[6]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(6));

-- Location: FF_X54_Y15_N1
\U_INPORT0|input[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[6]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(6));

-- Location: LCCOMB_X54_Y15_N0
\U_RDMUX|Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux25~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & ((\U_SRAM|altsyncram_component|auto_generated|q_a\(6)))) # (!\U_DELAYREG|input\(1) & (\U_INPORT0|input\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT0|input\(6),
	datad => \U_SRAM|altsyncram_component|auto_generated|q_a\(6),
	combout => \U_RDMUX|Mux25~0_combout\);

-- Location: LCCOMB_X54_Y15_N26
\U_RDMUX|Mux25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux25~1_combout\ = (\U_RDMUX|Mux25~0_combout\) # ((!\U_DELAYREG|input\(1) & (\U_DELAYREG|input\(0) & \U_INPORT1|input\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT1|input\(6),
	datad => \U_RDMUX|Mux25~0_combout\,
	combout => \U_RDMUX|Mux25~1_combout\);

-- Location: IOIBUF_X31_Y39_N29
\INDATA[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(7),
	o => \INDATA[7]~input_o\);

-- Location: FF_X54_Y15_N15
\U_INPORT1|input[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[7]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(7));

-- Location: FF_X54_Y15_N21
\U_INPORT0|input[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[7]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(7));

-- Location: LCCOMB_X54_Y15_N20
\U_RDMUX|Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux24~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & ((\U_SRAM|altsyncram_component|auto_generated|q_a\(7)))) # (!\U_DELAYREG|input\(1) & (\U_INPORT0|input\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT0|input\(7),
	datad => \U_SRAM|altsyncram_component|auto_generated|q_a\(7),
	combout => \U_RDMUX|Mux24~0_combout\);

-- Location: LCCOMB_X54_Y15_N14
\U_RDMUX|Mux24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux24~1_combout\ = (\U_RDMUX|Mux24~0_combout\) # ((!\U_DELAYREG|input\(1) & (\U_DELAYREG|input\(0) & \U_INPORT1|input\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT1|input\(7),
	datad => \U_RDMUX|Mux24~0_combout\,
	combout => \U_RDMUX|Mux24~1_combout\);

-- Location: IOIBUF_X56_Y0_N8
\INDATA[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(8),
	o => \INDATA[8]~input_o\);

-- Location: FF_X57_Y4_N11
\U_INPORT1|input[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[8]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(8));

-- Location: FF_X57_Y4_N25
\U_INPORT0|input[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[8]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(8));

-- Location: LCCOMB_X57_Y4_N24
\U_RDMUX|Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux23~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & (\U_SRAM|altsyncram_component|auto_generated|q_a\(8))) # (!\U_DELAYREG|input\(1) & ((\U_INPORT0|input\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_SRAM|altsyncram_component|auto_generated|q_a\(8),
	datac => \U_INPORT0|input\(8),
	datad => \U_DELAYREG|input\(0),
	combout => \U_RDMUX|Mux23~0_combout\);

-- Location: LCCOMB_X57_Y4_N10
\U_RDMUX|Mux23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux23~1_combout\ = (\U_RDMUX|Mux23~0_combout\) # ((!\U_DELAYREG|input\(1) & (\U_DELAYREG|input\(0) & \U_INPORT1|input\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT1|input\(8),
	datad => \U_RDMUX|Mux23~0_combout\,
	combout => \U_RDMUX|Mux23~1_combout\);

-- Location: IOIBUF_X58_Y0_N29
\INDATA[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(9),
	o => \INDATA[9]~input_o\);

-- Location: FF_X57_Y4_N5
\U_INPORT0|input[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[9]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(9));

-- Location: LCCOMB_X57_Y4_N4
\U_RDMUX|Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux22~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & ((\U_SRAM|altsyncram_component|auto_generated|q_a\(9)))) # (!\U_DELAYREG|input\(1) & (\U_INPORT0|input\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT0|input\(9),
	datad => \U_SRAM|altsyncram_component|auto_generated|q_a\(9),
	combout => \U_RDMUX|Mux22~0_combout\);

-- Location: FF_X57_Y4_N15
\U_INPORT1|input[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[9]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(9));

-- Location: LCCOMB_X57_Y4_N14
\U_RDMUX|Mux22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux22~1_combout\ = (\U_RDMUX|Mux22~0_combout\) # ((!\U_DELAYREG|input\(1) & (\U_INPORT1|input\(9) & \U_DELAYREG|input\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_RDMUX|Mux22~0_combout\,
	datac => \U_INPORT1|input\(9),
	datad => \U_DELAYREG|input\(0),
	combout => \U_RDMUX|Mux22~1_combout\);

-- Location: IOIBUF_X58_Y0_N8
\INDATA[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(10),
	o => \INDATA[10]~input_o\);

-- Location: FF_X57_Y4_N9
\U_INPORT0|input[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[10]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(10));

-- Location: LCCOMB_X57_Y4_N8
\U_RDMUX|Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux21~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & ((\U_SRAM|altsyncram_component|auto_generated|q_a\(10)))) # (!\U_DELAYREG|input\(1) & (\U_INPORT0|input\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT0|input\(10),
	datad => \U_SRAM|altsyncram_component|auto_generated|q_a\(10),
	combout => \U_RDMUX|Mux21~0_combout\);

-- Location: FF_X57_Y4_N3
\U_INPORT1|input[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[10]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(10));

-- Location: LCCOMB_X57_Y4_N2
\U_RDMUX|Mux21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux21~1_combout\ = (\U_RDMUX|Mux21~0_combout\) # ((!\U_DELAYREG|input\(1) & (\U_INPORT1|input\(10) & \U_DELAYREG|input\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_RDMUX|Mux21~0_combout\,
	datac => \U_INPORT1|input\(10),
	datad => \U_DELAYREG|input\(0),
	combout => \U_RDMUX|Mux21~1_combout\);

-- Location: IOIBUF_X69_Y0_N8
\INDATA[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(11),
	o => \INDATA[11]~input_o\);

-- Location: FF_X57_Y4_N23
\U_INPORT1|input[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[11]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(11));

-- Location: FF_X57_Y4_N13
\U_INPORT0|input[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[11]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(11));

-- Location: LCCOMB_X57_Y4_N12
\U_RDMUX|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux20~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & (\U_SRAM|altsyncram_component|auto_generated|q_a\(11))) # (!\U_DELAYREG|input\(1) & ((\U_INPORT0|input\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_SRAM|altsyncram_component|auto_generated|q_a\(11),
	datac => \U_INPORT0|input\(11),
	datad => \U_DELAYREG|input\(0),
	combout => \U_RDMUX|Mux20~0_combout\);

-- Location: LCCOMB_X57_Y4_N22
\U_RDMUX|Mux20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux20~1_combout\ = (\U_RDMUX|Mux20~0_combout\) # ((!\U_DELAYREG|input\(1) & (\U_DELAYREG|input\(0) & \U_INPORT1|input\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT1|input\(11),
	datad => \U_RDMUX|Mux20~0_combout\,
	combout => \U_RDMUX|Mux20~1_combout\);

-- Location: IOIBUF_X58_Y0_N15
\INDATA[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(12),
	o => \INDATA[12]~input_o\);

-- Location: FF_X57_Y4_N19
\U_INPORT1|input[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[12]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(12));

-- Location: FF_X57_Y4_N1
\U_INPORT0|input[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[12]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(12));

-- Location: LCCOMB_X57_Y4_N0
\U_RDMUX|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux19~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & ((\U_SRAM|altsyncram_component|auto_generated|q_a\(12)))) # (!\U_DELAYREG|input\(1) & (\U_INPORT0|input\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT0|input\(12),
	datad => \U_SRAM|altsyncram_component|auto_generated|q_a\(12),
	combout => \U_RDMUX|Mux19~0_combout\);

-- Location: LCCOMB_X57_Y4_N18
\U_RDMUX|Mux19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux19~1_combout\ = (\U_RDMUX|Mux19~0_combout\) # ((!\U_DELAYREG|input\(1) & (\U_DELAYREG|input\(0) & \U_INPORT1|input\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT1|input\(12),
	datad => \U_RDMUX|Mux19~0_combout\,
	combout => \U_RDMUX|Mux19~1_combout\);

-- Location: IOIBUF_X62_Y0_N8
\INDATA[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(13),
	o => \INDATA[13]~input_o\);

-- Location: FF_X57_Y4_N7
\U_INPORT1|input[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[13]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(13));

-- Location: FF_X57_Y4_N21
\U_INPORT0|input[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[13]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(13));

-- Location: LCCOMB_X57_Y4_N20
\U_RDMUX|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux18~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & ((\U_SRAM|altsyncram_component|auto_generated|q_a\(13)))) # (!\U_DELAYREG|input\(1) & (\U_INPORT0|input\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT0|input\(13),
	datad => \U_SRAM|altsyncram_component|auto_generated|q_a\(13),
	combout => \U_RDMUX|Mux18~0_combout\);

-- Location: LCCOMB_X57_Y4_N6
\U_RDMUX|Mux18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux18~1_combout\ = (\U_RDMUX|Mux18~0_combout\) # ((!\U_DELAYREG|input\(1) & (\U_DELAYREG|input\(0) & \U_INPORT1|input\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT1|input\(13),
	datad => \U_RDMUX|Mux18~0_combout\,
	combout => \U_RDMUX|Mux18~1_combout\);

-- Location: IOIBUF_X69_Y0_N1
\INDATA[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(14),
	o => \INDATA[14]~input_o\);

-- Location: FF_X57_Y4_N27
\U_INPORT1|input[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[14]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(14));

-- Location: IOIBUF_X34_Y39_N15
\WrData[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(14),
	o => \WrData[14]~input_o\);

-- Location: IOIBUF_X78_Y37_N1
\WrData[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(15),
	o => \WrData[15]~input_o\);

-- Location: IOIBUF_X78_Y30_N22
\WrData[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(16),
	o => \WrData[16]~input_o\);

-- Location: IOIBUF_X36_Y39_N29
\WrData[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(17),
	o => \WrData[17]~input_o\);

-- Location: IOIBUF_X78_Y15_N8
\WrData[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(18),
	o => \WrData[18]~input_o\);

-- Location: IOIBUF_X78_Y15_N1
\WrData[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(19),
	o => \WrData[19]~input_o\);

-- Location: IOIBUF_X78_Y33_N8
\WrData[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(20),
	o => \WrData[20]~input_o\);

-- Location: IOIBUF_X78_Y24_N1
\WrData[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(21),
	o => \WrData[21]~input_o\);

-- Location: IOIBUF_X78_Y25_N8
\WrData[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(22),
	o => \WrData[22]~input_o\);

-- Location: IOIBUF_X78_Y25_N22
\WrData[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(23),
	o => \WrData[23]~input_o\);

-- Location: IOIBUF_X78_Y29_N1
\WrData[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(24),
	o => \WrData[24]~input_o\);

-- Location: IOIBUF_X78_Y25_N15
\WrData[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(25),
	o => \WrData[25]~input_o\);

-- Location: IOIBUF_X78_Y30_N8
\WrData[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(26),
	o => \WrData[26]~input_o\);

-- Location: IOIBUF_X78_Y29_N22
\WrData[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(27),
	o => \WrData[27]~input_o\);

-- Location: IOIBUF_X54_Y0_N29
\WrData[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(28),
	o => \WrData[28]~input_o\);

-- Location: IOIBUF_X78_Y29_N8
\WrData[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(29),
	o => \WrData[29]~input_o\);

-- Location: IOIBUF_X78_Y16_N1
\WrData[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(30),
	o => \WrData[30]~input_o\);

-- Location: IOIBUF_X78_Y36_N1
\WrData[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrData(31),
	o => \WrData[31]~input_o\);

-- Location: M9K_X53_Y15_N0
\U_SRAM|altsyncram_component|auto_generated|ram_block1a14\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "sram:U_SRAM|altsyncram:altsyncram_component|altsyncram_3bp3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U_MEMLOGIC|wr_en~1_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_SRAM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: FF_X57_Y4_N17
\U_INPORT0|input[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[14]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(14));

-- Location: LCCOMB_X57_Y4_N16
\U_RDMUX|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux17~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & (\U_SRAM|altsyncram_component|auto_generated|q_a\(14))) # (!\U_DELAYREG|input\(1) & ((\U_INPORT0|input\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_SRAM|altsyncram_component|auto_generated|q_a\(14),
	datac => \U_INPORT0|input\(14),
	datad => \U_DELAYREG|input\(0),
	combout => \U_RDMUX|Mux17~0_combout\);

-- Location: LCCOMB_X57_Y4_N26
\U_RDMUX|Mux17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux17~1_combout\ = (\U_RDMUX|Mux17~0_combout\) # ((!\U_DELAYREG|input\(1) & (\U_DELAYREG|input\(0) & \U_INPORT1|input\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT1|input\(14),
	datad => \U_RDMUX|Mux17~0_combout\,
	combout => \U_RDMUX|Mux17~1_combout\);

-- Location: IOIBUF_X49_Y0_N1
\INDATA[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(15),
	o => \INDATA[15]~input_o\);

-- Location: FF_X47_Y4_N9
\U_INPORT0|input[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[15]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(15));

-- Location: LCCOMB_X47_Y4_N8
\U_RDMUX|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux16~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & ((\U_SRAM|altsyncram_component|auto_generated|q_a\(15)))) # (!\U_DELAYREG|input\(1) & (\U_INPORT0|input\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT0|input\(15),
	datad => \U_SRAM|altsyncram_component|auto_generated|q_a\(15),
	combout => \U_RDMUX|Mux16~0_combout\);

-- Location: FF_X47_Y4_N3
\U_INPORT1|input[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[15]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(15));

-- Location: LCCOMB_X47_Y4_N2
\U_RDMUX|Mux16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux16~1_combout\ = (\U_RDMUX|Mux16~0_combout\) # ((!\U_DELAYREG|input\(1) & (\U_INPORT1|input\(15) & \U_DELAYREG|input\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_RDMUX|Mux16~0_combout\,
	datac => \U_INPORT1|input\(15),
	datad => \U_DELAYREG|input\(0),
	combout => \U_RDMUX|Mux16~1_combout\);

-- Location: IOIBUF_X51_Y0_N22
\INDATA[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(16),
	o => \INDATA[16]~input_o\);

-- Location: FF_X47_Y4_N5
\U_INPORT0|input[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[16]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(16));

-- Location: LCCOMB_X47_Y4_N4
\U_RDMUX|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux15~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & (\U_SRAM|altsyncram_component|auto_generated|q_a\(16))) # (!\U_DELAYREG|input\(1) & ((\U_INPORT0|input\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SRAM|altsyncram_component|auto_generated|q_a\(16),
	datab => \U_DELAYREG|input\(1),
	datac => \U_INPORT0|input\(16),
	datad => \U_DELAYREG|input\(0),
	combout => \U_RDMUX|Mux15~0_combout\);

-- Location: FF_X47_Y4_N31
\U_INPORT1|input[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[16]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(16));

-- Location: LCCOMB_X47_Y4_N30
\U_RDMUX|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux15~1_combout\ = (\U_RDMUX|Mux15~0_combout\) # ((!\U_DELAYREG|input\(1) & (\U_INPORT1|input\(16) & \U_DELAYREG|input\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_RDMUX|Mux15~0_combout\,
	datac => \U_INPORT1|input\(16),
	datad => \U_DELAYREG|input\(0),
	combout => \U_RDMUX|Mux15~1_combout\);

-- Location: IOIBUF_X40_Y0_N22
\INDATA[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(17),
	o => \INDATA[17]~input_o\);

-- Location: FF_X47_Y4_N19
\U_INPORT1|input[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[17]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(17));

-- Location: FF_X47_Y4_N25
\U_INPORT0|input[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[17]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(17));

-- Location: LCCOMB_X47_Y4_N24
\U_RDMUX|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux14~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & ((\U_SRAM|altsyncram_component|auto_generated|q_a\(17)))) # (!\U_DELAYREG|input\(1) & (\U_INPORT0|input\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT0|input\(17),
	datad => \U_SRAM|altsyncram_component|auto_generated|q_a\(17),
	combout => \U_RDMUX|Mux14~0_combout\);

-- Location: LCCOMB_X47_Y4_N18
\U_RDMUX|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux14~1_combout\ = (\U_RDMUX|Mux14~0_combout\) # ((!\U_DELAYREG|input\(1) & (\U_DELAYREG|input\(0) & \U_INPORT1|input\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT1|input\(17),
	datad => \U_RDMUX|Mux14~0_combout\,
	combout => \U_RDMUX|Mux14~1_combout\);

-- Location: IOIBUF_X54_Y0_N22
\INDATA[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(18),
	o => \INDATA[18]~input_o\);

-- Location: FF_X47_Y4_N15
\U_INPORT1|input[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[18]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(18));

-- Location: FF_X47_Y4_N21
\U_INPORT0|input[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[18]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(18));

-- Location: LCCOMB_X47_Y4_N20
\U_RDMUX|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux13~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & ((\U_SRAM|altsyncram_component|auto_generated|q_a\(18)))) # (!\U_DELAYREG|input\(1) & (\U_INPORT0|input\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT0|input\(18),
	datad => \U_SRAM|altsyncram_component|auto_generated|q_a\(18),
	combout => \U_RDMUX|Mux13~0_combout\);

-- Location: LCCOMB_X47_Y4_N14
\U_RDMUX|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux13~1_combout\ = (\U_RDMUX|Mux13~0_combout\) # ((!\U_DELAYREG|input\(1) & (\U_DELAYREG|input\(0) & \U_INPORT1|input\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT1|input\(18),
	datad => \U_RDMUX|Mux13~0_combout\,
	combout => \U_RDMUX|Mux13~1_combout\);

-- Location: IOIBUF_X40_Y0_N15
\INDATA[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(19),
	o => \INDATA[19]~input_o\);

-- Location: FF_X47_Y4_N11
\U_INPORT1|input[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[19]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(19));

-- Location: FF_X47_Y4_N17
\U_INPORT0|input[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[19]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(19));

-- Location: LCCOMB_X47_Y4_N16
\U_RDMUX|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux12~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & ((\U_SRAM|altsyncram_component|auto_generated|q_a\(19)))) # (!\U_DELAYREG|input\(1) & (\U_INPORT0|input\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT0|input\(19),
	datad => \U_SRAM|altsyncram_component|auto_generated|q_a\(19),
	combout => \U_RDMUX|Mux12~0_combout\);

-- Location: LCCOMB_X47_Y4_N10
\U_RDMUX|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux12~1_combout\ = (\U_RDMUX|Mux12~0_combout\) # ((!\U_DELAYREG|input\(1) & (\U_DELAYREG|input\(0) & \U_INPORT1|input\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT1|input\(19),
	datad => \U_RDMUX|Mux12~0_combout\,
	combout => \U_RDMUX|Mux12~1_combout\);

-- Location: IOIBUF_X40_Y0_N8
\INDATA[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(20),
	o => \INDATA[20]~input_o\);

-- Location: FF_X47_Y4_N23
\U_INPORT1|input[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[20]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(20));

-- Location: FF_X47_Y4_N29
\U_INPORT0|input[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[20]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(20));

-- Location: LCCOMB_X47_Y4_N28
\U_RDMUX|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux11~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & ((\U_SRAM|altsyncram_component|auto_generated|q_a\(20)))) # (!\U_DELAYREG|input\(1) & (\U_INPORT0|input\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT0|input\(20),
	datad => \U_SRAM|altsyncram_component|auto_generated|q_a\(20),
	combout => \U_RDMUX|Mux11~0_combout\);

-- Location: LCCOMB_X47_Y4_N22
\U_RDMUX|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux11~1_combout\ = (\U_RDMUX|Mux11~0_combout\) # ((!\U_DELAYREG|input\(1) & (\U_DELAYREG|input\(0) & \U_INPORT1|input\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT1|input\(20),
	datad => \U_RDMUX|Mux11~0_combout\,
	combout => \U_RDMUX|Mux11~1_combout\);

-- Location: IOIBUF_X49_Y0_N29
\INDATA[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(21),
	o => \INDATA[21]~input_o\);

-- Location: FF_X47_Y4_N27
\U_INPORT1|input[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[21]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(21));

-- Location: FF_X47_Y4_N1
\U_INPORT0|input[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[21]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(21));

-- Location: LCCOMB_X47_Y4_N0
\U_RDMUX|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux10~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & ((\U_SRAM|altsyncram_component|auto_generated|q_a\(21)))) # (!\U_DELAYREG|input\(1) & (\U_INPORT0|input\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT0|input\(21),
	datad => \U_SRAM|altsyncram_component|auto_generated|q_a\(21),
	combout => \U_RDMUX|Mux10~0_combout\);

-- Location: LCCOMB_X47_Y4_N26
\U_RDMUX|Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux10~1_combout\ = (\U_RDMUX|Mux10~0_combout\) # ((!\U_DELAYREG|input\(1) & (\U_DELAYREG|input\(0) & \U_INPORT1|input\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT1|input\(21),
	datad => \U_RDMUX|Mux10~0_combout\,
	combout => \U_RDMUX|Mux10~1_combout\);

-- Location: IOIBUF_X78_Y3_N15
\INDATA[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(22),
	o => \INDATA[22]~input_o\);

-- Location: FF_X52_Y15_N3
\U_INPORT1|input[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[22]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(22));

-- Location: FF_X52_Y15_N25
\U_INPORT0|input[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[22]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(22));

-- Location: LCCOMB_X52_Y15_N24
\U_RDMUX|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux9~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & ((\U_SRAM|altsyncram_component|auto_generated|q_a\(22)))) # (!\U_DELAYREG|input\(1) & (\U_INPORT0|input\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(0),
	datab => \U_DELAYREG|input\(1),
	datac => \U_INPORT0|input\(22),
	datad => \U_SRAM|altsyncram_component|auto_generated|q_a\(22),
	combout => \U_RDMUX|Mux9~0_combout\);

-- Location: LCCOMB_X52_Y15_N2
\U_RDMUX|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux9~1_combout\ = (\U_RDMUX|Mux9~0_combout\) # ((\U_DELAYREG|input\(0) & (!\U_DELAYREG|input\(1) & \U_INPORT1|input\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(0),
	datab => \U_DELAYREG|input\(1),
	datac => \U_INPORT1|input\(22),
	datad => \U_RDMUX|Mux9~0_combout\,
	combout => \U_RDMUX|Mux9~1_combout\);

-- Location: IOIBUF_X69_Y0_N15
\INDATA[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(23),
	o => \INDATA[23]~input_o\);

-- Location: FF_X57_Y4_N31
\U_INPORT1|input[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[23]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(23));

-- Location: FF_X57_Y4_N29
\U_INPORT0|input[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[23]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(23));

-- Location: LCCOMB_X57_Y4_N28
\U_RDMUX|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux8~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & ((\U_SRAM|altsyncram_component|auto_generated|q_a\(23)))) # (!\U_DELAYREG|input\(1) & (\U_INPORT0|input\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT0|input\(23),
	datad => \U_SRAM|altsyncram_component|auto_generated|q_a\(23),
	combout => \U_RDMUX|Mux8~0_combout\);

-- Location: LCCOMB_X57_Y4_N30
\U_RDMUX|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux8~1_combout\ = (\U_RDMUX|Mux8~0_combout\) # ((!\U_DELAYREG|input\(1) & (\U_DELAYREG|input\(0) & \U_INPORT1|input\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT1|input\(23),
	datad => \U_RDMUX|Mux8~0_combout\,
	combout => \U_RDMUX|Mux8~1_combout\);

-- Location: IOIBUF_X51_Y0_N8
\INDATA[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(24),
	o => \INDATA[24]~input_o\);

-- Location: FF_X47_Y4_N7
\U_INPORT1|input[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[24]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(24));

-- Location: FF_X47_Y4_N13
\U_INPORT0|input[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[24]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(24));

-- Location: LCCOMB_X47_Y4_N12
\U_RDMUX|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux7~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & ((\U_SRAM|altsyncram_component|auto_generated|q_a\(24)))) # (!\U_DELAYREG|input\(1) & (\U_INPORT0|input\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT0|input\(24),
	datad => \U_SRAM|altsyncram_component|auto_generated|q_a\(24),
	combout => \U_RDMUX|Mux7~0_combout\);

-- Location: LCCOMB_X47_Y4_N6
\U_RDMUX|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux7~1_combout\ = (\U_RDMUX|Mux7~0_combout\) # ((!\U_DELAYREG|input\(1) & (\U_DELAYREG|input\(0) & \U_INPORT1|input\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(1),
	datab => \U_DELAYREG|input\(0),
	datac => \U_INPORT1|input\(24),
	datad => \U_RDMUX|Mux7~0_combout\,
	combout => \U_RDMUX|Mux7~1_combout\);

-- Location: IOIBUF_X0_Y15_N22
\INDATA[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(25),
	o => \INDATA[25]~input_o\);

-- Location: FF_X52_Y15_N15
\U_INPORT1|input[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[25]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(25));

-- Location: FF_X52_Y15_N13
\U_INPORT0|input[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[25]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(25));

-- Location: LCCOMB_X52_Y15_N12
\U_RDMUX|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux6~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & (\U_SRAM|altsyncram_component|auto_generated|q_a\(25))) # (!\U_DELAYREG|input\(1) & ((\U_INPORT0|input\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(0),
	datab => \U_SRAM|altsyncram_component|auto_generated|q_a\(25),
	datac => \U_INPORT0|input\(25),
	datad => \U_DELAYREG|input\(1),
	combout => \U_RDMUX|Mux6~0_combout\);

-- Location: LCCOMB_X52_Y15_N14
\U_RDMUX|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux6~1_combout\ = (\U_RDMUX|Mux6~0_combout\) # ((\U_DELAYREG|input\(0) & (!\U_DELAYREG|input\(1) & \U_INPORT1|input\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(0),
	datab => \U_DELAYREG|input\(1),
	datac => \U_INPORT1|input\(25),
	datad => \U_RDMUX|Mux6~0_combout\,
	combout => \U_RDMUX|Mux6~1_combout\);

-- Location: IOIBUF_X78_Y16_N23
\INDATA[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(26),
	o => \INDATA[26]~input_o\);

-- Location: FF_X52_Y15_N11
\U_INPORT1|input[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[26]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(26));

-- Location: FF_X52_Y15_N1
\U_INPORT0|input[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[26]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(26));

-- Location: LCCOMB_X52_Y15_N0
\U_RDMUX|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux5~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & ((\U_SRAM|altsyncram_component|auto_generated|q_a\(26)))) # (!\U_DELAYREG|input\(1) & (\U_INPORT0|input\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(0),
	datab => \U_DELAYREG|input\(1),
	datac => \U_INPORT0|input\(26),
	datad => \U_SRAM|altsyncram_component|auto_generated|q_a\(26),
	combout => \U_RDMUX|Mux5~0_combout\);

-- Location: LCCOMB_X52_Y15_N10
\U_RDMUX|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux5~1_combout\ = (\U_RDMUX|Mux5~0_combout\) # ((\U_DELAYREG|input\(0) & (!\U_DELAYREG|input\(1) & \U_INPORT1|input\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(0),
	datab => \U_DELAYREG|input\(1),
	datac => \U_INPORT1|input\(26),
	datad => \U_RDMUX|Mux5~0_combout\,
	combout => \U_RDMUX|Mux5~1_combout\);

-- Location: IOIBUF_X56_Y0_N15
\INDATA[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(27),
	o => \INDATA[27]~input_o\);

-- Location: FF_X52_Y15_N5
\U_INPORT0|input[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[27]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(27));

-- Location: LCCOMB_X52_Y15_N4
\U_RDMUX|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux4~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & ((\U_SRAM|altsyncram_component|auto_generated|q_a\(27)))) # (!\U_DELAYREG|input\(1) & (\U_INPORT0|input\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(0),
	datab => \U_DELAYREG|input\(1),
	datac => \U_INPORT0|input\(27),
	datad => \U_SRAM|altsyncram_component|auto_generated|q_a\(27),
	combout => \U_RDMUX|Mux4~0_combout\);

-- Location: FF_X52_Y15_N31
\U_INPORT1|input[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[27]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(27));

-- Location: LCCOMB_X52_Y15_N30
\U_RDMUX|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux4~1_combout\ = (\U_RDMUX|Mux4~0_combout\) # ((\U_DELAYREG|input\(0) & (\U_INPORT1|input\(27) & !\U_DELAYREG|input\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(0),
	datab => \U_RDMUX|Mux4~0_combout\,
	datac => \U_INPORT1|input\(27),
	datad => \U_DELAYREG|input\(1),
	combout => \U_RDMUX|Mux4~1_combout\);

-- Location: IOIBUF_X78_Y18_N1
\INDATA[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(28),
	o => \INDATA[28]~input_o\);

-- Location: FF_X52_Y15_N19
\U_INPORT1|input[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[28]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(28));

-- Location: FF_X52_Y15_N17
\U_INPORT0|input[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[28]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(28));

-- Location: LCCOMB_X52_Y15_N16
\U_RDMUX|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux3~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & ((\U_SRAM|altsyncram_component|auto_generated|q_a\(28)))) # (!\U_DELAYREG|input\(1) & (\U_INPORT0|input\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(0),
	datab => \U_DELAYREG|input\(1),
	datac => \U_INPORT0|input\(28),
	datad => \U_SRAM|altsyncram_component|auto_generated|q_a\(28),
	combout => \U_RDMUX|Mux3~0_combout\);

-- Location: LCCOMB_X52_Y15_N18
\U_RDMUX|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux3~1_combout\ = (\U_RDMUX|Mux3~0_combout\) # ((\U_DELAYREG|input\(0) & (!\U_DELAYREG|input\(1) & \U_INPORT1|input\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(0),
	datab => \U_DELAYREG|input\(1),
	datac => \U_INPORT1|input\(28),
	datad => \U_RDMUX|Mux3~0_combout\,
	combout => \U_RDMUX|Mux3~1_combout\);

-- Location: IOIBUF_X51_Y0_N15
\INDATA[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(29),
	o => \INDATA[29]~input_o\);

-- Location: FF_X52_Y15_N7
\U_INPORT1|input[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[29]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(29));

-- Location: FF_X52_Y15_N21
\U_INPORT0|input[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[29]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(29));

-- Location: LCCOMB_X52_Y15_N20
\U_RDMUX|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux2~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & ((\U_SRAM|altsyncram_component|auto_generated|q_a\(29)))) # (!\U_DELAYREG|input\(1) & (\U_INPORT0|input\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(0),
	datab => \U_DELAYREG|input\(1),
	datac => \U_INPORT0|input\(29),
	datad => \U_SRAM|altsyncram_component|auto_generated|q_a\(29),
	combout => \U_RDMUX|Mux2~0_combout\);

-- Location: LCCOMB_X52_Y15_N6
\U_RDMUX|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux2~1_combout\ = (\U_RDMUX|Mux2~0_combout\) # ((\U_DELAYREG|input\(0) & (!\U_DELAYREG|input\(1) & \U_INPORT1|input\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(0),
	datab => \U_DELAYREG|input\(1),
	datac => \U_INPORT1|input\(29),
	datad => \U_RDMUX|Mux2~0_combout\,
	combout => \U_RDMUX|Mux2~1_combout\);

-- Location: IOIBUF_X49_Y54_N1
\INDATA[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(30),
	o => \INDATA[30]~input_o\);

-- Location: FF_X52_Y15_N9
\U_INPORT0|input[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[30]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(30));

-- Location: LCCOMB_X52_Y15_N8
\U_RDMUX|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux1~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & (\U_SRAM|altsyncram_component|auto_generated|q_a\(30))) # (!\U_DELAYREG|input\(1) & ((\U_INPORT0|input\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(0),
	datab => \U_SRAM|altsyncram_component|auto_generated|q_a\(30),
	datac => \U_INPORT0|input\(30),
	datad => \U_DELAYREG|input\(1),
	combout => \U_RDMUX|Mux1~0_combout\);

-- Location: FF_X52_Y15_N27
\U_INPORT1|input[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[30]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(30));

-- Location: LCCOMB_X52_Y15_N26
\U_RDMUX|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux1~1_combout\ = (\U_RDMUX|Mux1~0_combout\) # ((\U_DELAYREG|input\(0) & (\U_INPORT1|input\(30) & !\U_DELAYREG|input\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(0),
	datab => \U_RDMUX|Mux1~0_combout\,
	datac => \U_INPORT1|input\(30),
	datad => \U_DELAYREG|input\(1),
	combout => \U_RDMUX|Mux1~1_combout\);

-- Location: IOIBUF_X78_Y15_N15
\INDATA[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(31),
	o => \INDATA[31]~input_o\);

-- Location: FF_X52_Y15_N23
\U_INPORT1|input[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[31]~input_o\,
	sload => VCC,
	ena => \IN1_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT1|input\(31));

-- Location: FF_X52_Y15_N29
\U_INPORT0|input[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \INDATA[31]~input_o\,
	sload => VCC,
	ena => \IN0_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_INPORT0|input\(31));

-- Location: LCCOMB_X52_Y15_N28
\U_RDMUX|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux0~0_combout\ = (!\U_DELAYREG|input\(0) & ((\U_DELAYREG|input\(1) & (\U_SRAM|altsyncram_component|auto_generated|q_a\(31))) # (!\U_DELAYREG|input\(1) & ((\U_INPORT0|input\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(0),
	datab => \U_SRAM|altsyncram_component|auto_generated|q_a\(31),
	datac => \U_INPORT0|input\(31),
	datad => \U_DELAYREG|input\(1),
	combout => \U_RDMUX|Mux0~0_combout\);

-- Location: LCCOMB_X52_Y15_N22
\U_RDMUX|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_RDMUX|Mux0~1_combout\ = (\U_RDMUX|Mux0~0_combout\) # ((\U_DELAYREG|input\(0) & (!\U_DELAYREG|input\(1) & \U_INPORT1|input\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DELAYREG|input\(0),
	datab => \U_DELAYREG|input\(1),
	datac => \U_INPORT1|input\(31),
	datad => \U_RDMUX|Mux0~0_combout\,
	combout => \U_RDMUX|Mux0~1_combout\);

-- Location: LCCOMB_X77_Y31_N0
\U_OUTPORT|input[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[0]~feeder_combout\ = \WrData[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WrData[0]~input_o\,
	combout => \U_OUTPORT|input[0]~feeder_combout\);

-- Location: IOIBUF_X0_Y18_N22
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: LCCOMB_X30_Y1_N0
\U_MEMLOGIC|OutWr_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEMLOGIC|OutWr_en~0_combout\ = (\MemWrite~input_o\ & \U_MEMLOGIC|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemWrite~input_o\,
	datad => \U_MEMLOGIC|Equal1~0_combout\,
	combout => \U_MEMLOGIC|OutWr_en~0_combout\);

-- Location: FF_X77_Y31_N1
\U_OUTPORT|input[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(0));

-- Location: LCCOMB_X50_Y15_N24
\U_OUTPORT|input[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[1]~feeder_combout\ = \WrData[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WrData[1]~input_o\,
	combout => \U_OUTPORT|input[1]~feeder_combout\);

-- Location: FF_X50_Y15_N25
\U_OUTPORT|input[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(1));

-- Location: LCCOMB_X77_Y31_N2
\U_OUTPORT|input[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[2]~feeder_combout\ = \WrData[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WrData[2]~input_o\,
	combout => \U_OUTPORT|input[2]~feeder_combout\);

-- Location: FF_X77_Y31_N3
\U_OUTPORT|input[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(2));

-- Location: LCCOMB_X77_Y24_N16
\U_OUTPORT|input[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[3]~feeder_combout\ = \WrData[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WrData[3]~input_o\,
	combout => \U_OUTPORT|input[3]~feeder_combout\);

-- Location: FF_X77_Y24_N17
\U_OUTPORT|input[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(3));

-- Location: LCCOMB_X50_Y15_N26
\U_OUTPORT|input[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[4]~feeder_combout\ = \WrData[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WrData[4]~input_o\,
	combout => \U_OUTPORT|input[4]~feeder_combout\);

-- Location: FF_X50_Y15_N27
\U_OUTPORT|input[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(4));

-- Location: LCCOMB_X50_Y15_N4
\U_OUTPORT|input[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[5]~feeder_combout\ = \WrData[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WrData[5]~input_o\,
	combout => \U_OUTPORT|input[5]~feeder_combout\);

-- Location: FF_X50_Y15_N5
\U_OUTPORT|input[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(5));

-- Location: LCCOMB_X77_Y31_N4
\U_OUTPORT|input[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[6]~feeder_combout\ = \WrData[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WrData[6]~input_o\,
	combout => \U_OUTPORT|input[6]~feeder_combout\);

-- Location: FF_X77_Y31_N5
\U_OUTPORT|input[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(6));

-- Location: LCCOMB_X50_Y15_N6
\U_OUTPORT|input[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[7]~feeder_combout\ = \WrData[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WrData[7]~input_o\,
	combout => \U_OUTPORT|input[7]~feeder_combout\);

-- Location: FF_X50_Y15_N7
\U_OUTPORT|input[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(7));

-- Location: LCCOMB_X50_Y15_N0
\U_OUTPORT|input[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[8]~feeder_combout\ = \WrData[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WrData[8]~input_o\,
	combout => \U_OUTPORT|input[8]~feeder_combout\);

-- Location: FF_X50_Y15_N1
\U_OUTPORT|input[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[8]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(8));

-- Location: LCCOMB_X77_Y21_N0
\U_OUTPORT|input[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[9]~feeder_combout\ = \WrData[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WrData[9]~input_o\,
	combout => \U_OUTPORT|input[9]~feeder_combout\);

-- Location: FF_X77_Y21_N1
\U_OUTPORT|input[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[9]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(9));

-- Location: LCCOMB_X77_Y31_N30
\U_OUTPORT|input[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[10]~feeder_combout\ = \WrData[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WrData[10]~input_o\,
	combout => \U_OUTPORT|input[10]~feeder_combout\);

-- Location: FF_X77_Y31_N31
\U_OUTPORT|input[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[10]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(10));

-- Location: LCCOMB_X50_Y15_N18
\U_OUTPORT|input[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[11]~feeder_combout\ = \WrData[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WrData[11]~input_o\,
	combout => \U_OUTPORT|input[11]~feeder_combout\);

-- Location: FF_X50_Y15_N19
\U_OUTPORT|input[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[11]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(11));

-- Location: LCCOMB_X50_Y15_N20
\U_OUTPORT|input[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[12]~feeder_combout\ = \WrData[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WrData[12]~input_o\,
	combout => \U_OUTPORT|input[12]~feeder_combout\);

-- Location: FF_X50_Y15_N21
\U_OUTPORT|input[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[12]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(12));

-- Location: LCCOMB_X50_Y15_N30
\U_OUTPORT|input[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[13]~feeder_combout\ = \WrData[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WrData[13]~input_o\,
	combout => \U_OUTPORT|input[13]~feeder_combout\);

-- Location: FF_X50_Y15_N31
\U_OUTPORT|input[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[13]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(13));

-- Location: LCCOMB_X50_Y15_N8
\U_OUTPORT|input[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[14]~feeder_combout\ = \WrData[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WrData[14]~input_o\,
	combout => \U_OUTPORT|input[14]~feeder_combout\);

-- Location: FF_X50_Y15_N9
\U_OUTPORT|input[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[14]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(14));

-- Location: LCCOMB_X77_Y31_N16
\U_OUTPORT|input[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[15]~feeder_combout\ = \WrData[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WrData[15]~input_o\,
	combout => \U_OUTPORT|input[15]~feeder_combout\);

-- Location: FF_X77_Y31_N17
\U_OUTPORT|input[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[15]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(15));

-- Location: LCCOMB_X77_Y31_N26
\U_OUTPORT|input[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[16]~feeder_combout\ = \WrData[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WrData[16]~input_o\,
	combout => \U_OUTPORT|input[16]~feeder_combout\);

-- Location: FF_X77_Y31_N27
\U_OUTPORT|input[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[16]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(16));

-- Location: LCCOMB_X50_Y15_N2
\U_OUTPORT|input[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[17]~feeder_combout\ = \WrData[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WrData[17]~input_o\,
	combout => \U_OUTPORT|input[17]~feeder_combout\);

-- Location: FF_X50_Y15_N3
\U_OUTPORT|input[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[17]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(17));

-- Location: LCCOMB_X50_Y15_N12
\U_OUTPORT|input[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[18]~feeder_combout\ = \WrData[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WrData[18]~input_o\,
	combout => \U_OUTPORT|input[18]~feeder_combout\);

-- Location: FF_X50_Y15_N13
\U_OUTPORT|input[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[18]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(18));

-- Location: LCCOMB_X50_Y15_N22
\U_OUTPORT|input[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[19]~feeder_combout\ = \WrData[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WrData[19]~input_o\,
	combout => \U_OUTPORT|input[19]~feeder_combout\);

-- Location: FF_X50_Y15_N23
\U_OUTPORT|input[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[19]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(19));

-- Location: LCCOMB_X77_Y31_N28
\U_OUTPORT|input[20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[20]~feeder_combout\ = \WrData[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WrData[20]~input_o\,
	combout => \U_OUTPORT|input[20]~feeder_combout\);

-- Location: FF_X77_Y31_N29
\U_OUTPORT|input[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[20]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(20));

-- Location: LCCOMB_X77_Y31_N22
\U_OUTPORT|input[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[21]~feeder_combout\ = \WrData[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WrData[21]~input_o\,
	combout => \U_OUTPORT|input[21]~feeder_combout\);

-- Location: FF_X77_Y31_N23
\U_OUTPORT|input[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[21]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(21));

-- Location: LCCOMB_X77_Y31_N8
\U_OUTPORT|input[22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[22]~feeder_combout\ = \WrData[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WrData[22]~input_o\,
	combout => \U_OUTPORT|input[22]~feeder_combout\);

-- Location: FF_X77_Y31_N9
\U_OUTPORT|input[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[22]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(22));

-- Location: LCCOMB_X77_Y31_N18
\U_OUTPORT|input[23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[23]~feeder_combout\ = \WrData[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WrData[23]~input_o\,
	combout => \U_OUTPORT|input[23]~feeder_combout\);

-- Location: FF_X77_Y31_N19
\U_OUTPORT|input[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[23]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(23));

-- Location: LCCOMB_X77_Y31_N20
\U_OUTPORT|input[24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[24]~feeder_combout\ = \WrData[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WrData[24]~input_o\,
	combout => \U_OUTPORT|input[24]~feeder_combout\);

-- Location: FF_X77_Y31_N21
\U_OUTPORT|input[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[24]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(24));

-- Location: LCCOMB_X77_Y31_N14
\U_OUTPORT|input[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[25]~feeder_combout\ = \WrData[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WrData[25]~input_o\,
	combout => \U_OUTPORT|input[25]~feeder_combout\);

-- Location: FF_X77_Y31_N15
\U_OUTPORT|input[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[25]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(25));

-- Location: LCCOMB_X77_Y31_N24
\U_OUTPORT|input[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[26]~feeder_combout\ = \WrData[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WrData[26]~input_o\,
	combout => \U_OUTPORT|input[26]~feeder_combout\);

-- Location: FF_X77_Y31_N25
\U_OUTPORT|input[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[26]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(26));

-- Location: LCCOMB_X77_Y31_N10
\U_OUTPORT|input[27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[27]~feeder_combout\ = \WrData[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WrData[27]~input_o\,
	combout => \U_OUTPORT|input[27]~feeder_combout\);

-- Location: FF_X77_Y31_N11
\U_OUTPORT|input[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[27]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(27));

-- Location: LCCOMB_X50_Y15_N16
\U_OUTPORT|input[28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[28]~feeder_combout\ = \WrData[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WrData[28]~input_o\,
	combout => \U_OUTPORT|input[28]~feeder_combout\);

-- Location: FF_X50_Y15_N17
\U_OUTPORT|input[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[28]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(28));

-- Location: LCCOMB_X77_Y31_N12
\U_OUTPORT|input[29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[29]~feeder_combout\ = \WrData[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WrData[29]~input_o\,
	combout => \U_OUTPORT|input[29]~feeder_combout\);

-- Location: FF_X77_Y31_N13
\U_OUTPORT|input[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[29]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(29));

-- Location: LCCOMB_X50_Y15_N10
\U_OUTPORT|input[30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[30]~feeder_combout\ = \WrData[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WrData[30]~input_o\,
	combout => \U_OUTPORT|input[30]~feeder_combout\);

-- Location: FF_X50_Y15_N11
\U_OUTPORT|input[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[30]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(30));

-- Location: LCCOMB_X77_Y31_N6
\U_OUTPORT|input[31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_OUTPORT|input[31]~feeder_combout\ = \WrData[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WrData[31]~input_o\,
	combout => \U_OUTPORT|input[31]~feeder_combout\);

-- Location: FF_X77_Y31_N7
\U_OUTPORT|input[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_OUTPORT|input[31]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_MEMLOGIC|OutWr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_OUTPORT|input\(31));

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_RdData(0) <= \RdData[0]~output_o\;

ww_RdData(1) <= \RdData[1]~output_o\;

ww_RdData(2) <= \RdData[2]~output_o\;

ww_RdData(3) <= \RdData[3]~output_o\;

ww_RdData(4) <= \RdData[4]~output_o\;

ww_RdData(5) <= \RdData[5]~output_o\;

ww_RdData(6) <= \RdData[6]~output_o\;

ww_RdData(7) <= \RdData[7]~output_o\;

ww_RdData(8) <= \RdData[8]~output_o\;

ww_RdData(9) <= \RdData[9]~output_o\;

ww_RdData(10) <= \RdData[10]~output_o\;

ww_RdData(11) <= \RdData[11]~output_o\;

ww_RdData(12) <= \RdData[12]~output_o\;

ww_RdData(13) <= \RdData[13]~output_o\;

ww_RdData(14) <= \RdData[14]~output_o\;

ww_RdData(15) <= \RdData[15]~output_o\;

ww_RdData(16) <= \RdData[16]~output_o\;

ww_RdData(17) <= \RdData[17]~output_o\;

ww_RdData(18) <= \RdData[18]~output_o\;

ww_RdData(19) <= \RdData[19]~output_o\;

ww_RdData(20) <= \RdData[20]~output_o\;

ww_RdData(21) <= \RdData[21]~output_o\;

ww_RdData(22) <= \RdData[22]~output_o\;

ww_RdData(23) <= \RdData[23]~output_o\;

ww_RdData(24) <= \RdData[24]~output_o\;

ww_RdData(25) <= \RdData[25]~output_o\;

ww_RdData(26) <= \RdData[26]~output_o\;

ww_RdData(27) <= \RdData[27]~output_o\;

ww_RdData(28) <= \RdData[28]~output_o\;

ww_RdData(29) <= \RdData[29]~output_o\;

ww_RdData(30) <= \RdData[30]~output_o\;

ww_RdData(31) <= \RdData[31]~output_o\;

ww_Outport(0) <= \Outport[0]~output_o\;

ww_Outport(1) <= \Outport[1]~output_o\;

ww_Outport(2) <= \Outport[2]~output_o\;

ww_Outport(3) <= \Outport[3]~output_o\;

ww_Outport(4) <= \Outport[4]~output_o\;

ww_Outport(5) <= \Outport[5]~output_o\;

ww_Outport(6) <= \Outport[6]~output_o\;

ww_Outport(7) <= \Outport[7]~output_o\;

ww_Outport(8) <= \Outport[8]~output_o\;

ww_Outport(9) <= \Outport[9]~output_o\;

ww_Outport(10) <= \Outport[10]~output_o\;

ww_Outport(11) <= \Outport[11]~output_o\;

ww_Outport(12) <= \Outport[12]~output_o\;

ww_Outport(13) <= \Outport[13]~output_o\;

ww_Outport(14) <= \Outport[14]~output_o\;

ww_Outport(15) <= \Outport[15]~output_o\;

ww_Outport(16) <= \Outport[16]~output_o\;

ww_Outport(17) <= \Outport[17]~output_o\;

ww_Outport(18) <= \Outport[18]~output_o\;

ww_Outport(19) <= \Outport[19]~output_o\;

ww_Outport(20) <= \Outport[20]~output_o\;

ww_Outport(21) <= \Outport[21]~output_o\;

ww_Outport(22) <= \Outport[22]~output_o\;

ww_Outport(23) <= \Outport[23]~output_o\;

ww_Outport(24) <= \Outport[24]~output_o\;

ww_Outport(25) <= \Outport[25]~output_o\;

ww_Outport(26) <= \Outport[26]~output_o\;

ww_Outport(27) <= \Outport[27]~output_o\;

ww_Outport(28) <= \Outport[28]~output_o\;

ww_Outport(29) <= \Outport[29]~output_o\;

ww_Outport(30) <= \Outport[30]~output_o\;

ww_Outport(31) <= \Outport[31]~output_o\;
END structure;


