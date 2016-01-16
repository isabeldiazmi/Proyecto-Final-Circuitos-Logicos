-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Web Edition"

-- DATE "12/03/2015 13:31:22"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FinalCandado IS
    PORT (
	ABCD : OUT std_logic_vector(3 DOWNTO 0);
	CLK_IN : IN std_logic;
	RESET : IN std_logic;
	EFGH : IN std_logic_vector(3 DOWNTO 0);
	selector : OUT std_logic_vector(3 DOWNTO 0)
	);
END FinalCandado;

-- Design Ports Information
-- ABCD[3]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCD[2]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCD[1]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCD[0]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EFGH[3]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EFGH[2]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EFGH[1]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EFGH[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[3]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_IN	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FinalCandado IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ABCD : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK_IN : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_EFGH : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_selector : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|auxiliar~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_IN~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|Add0~19\ : std_logic;
SIGNAL \inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst2|Add0~21\ : std_logic;
SIGNAL \inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst2|Add0~23\ : std_logic;
SIGNAL \inst2|Add0~24_combout\ : std_logic;
SIGNAL \inst2|Add0~25\ : std_logic;
SIGNAL \inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst2|Add0~27\ : std_logic;
SIGNAL \inst2|Add0~28_combout\ : std_logic;
SIGNAL \inst2|Add0~29\ : std_logic;
SIGNAL \inst2|Add0~30_combout\ : std_logic;
SIGNAL \inst2|Add0~31\ : std_logic;
SIGNAL \inst2|Add0~32_combout\ : std_logic;
SIGNAL \inst2|Add0~33\ : std_logic;
SIGNAL \inst2|Add0~34_combout\ : std_logic;
SIGNAL \inst2|Add0~35\ : std_logic;
SIGNAL \inst2|Add0~36_combout\ : std_logic;
SIGNAL \inst2|auxiliar~q\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|Equal0~5_combout\ : std_logic;
SIGNAL \inst2|auxiliar~0_combout\ : std_logic;
SIGNAL \inst|contador60~1_combout\ : std_logic;
SIGNAL \inst|contador60~2_combout\ : std_logic;
SIGNAL \inst2|contador~0_combout\ : std_logic;
SIGNAL \inst2|contador~1_combout\ : std_logic;
SIGNAL \inst2|contador~2_combout\ : std_logic;
SIGNAL \inst2|contador~3_combout\ : std_logic;
SIGNAL \inst2|contador~4_combout\ : std_logic;
SIGNAL \inst2|contador~5_combout\ : std_logic;
SIGNAL \inst2|contador~6_combout\ : std_logic;
SIGNAL \inst2|contador~7_combout\ : std_logic;
SIGNAL \inst2|contador~8_combout\ : std_logic;
SIGNAL \EFGH[3]~input_o\ : std_logic;
SIGNAL \EFGH[2]~input_o\ : std_logic;
SIGNAL \EFGH[1]~input_o\ : std_logic;
SIGNAL \EFGH[0]~input_o\ : std_logic;
SIGNAL \CLK_IN~input_o\ : std_logic;
SIGNAL \inst2|auxiliar~clkctrl_outclk\ : std_logic;
SIGNAL \CLK_IN~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|auxiliar~feeder_combout\ : std_logic;
SIGNAL \ABCD[3]~output_o\ : std_logic;
SIGNAL \ABCD[2]~output_o\ : std_logic;
SIGNAL \ABCD[1]~output_o\ : std_logic;
SIGNAL \ABCD[0]~output_o\ : std_logic;
SIGNAL \selector[3]~output_o\ : std_logic;
SIGNAL \selector[2]~output_o\ : std_logic;
SIGNAL \selector[1]~output_o\ : std_logic;
SIGNAL \selector[0]~output_o\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|contador60~4_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|contador60~3_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|contador60~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|Equal1~2_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|selector[0]~0_combout\ : std_logic;
SIGNAL \inst|Add2~3_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Add2~1_combout\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|contador60\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst2|contador\ : std_logic_vector(18 DOWNTO 0);

BEGIN

ABCD <= ww_ABCD;
ww_CLK_IN <= CLK_IN;
ww_RESET <= RESET;
ww_EFGH <= EFGH;
selector <= ww_selector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|auxiliar~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|auxiliar~q\);

\CLK_IN~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_IN~input_o\);

-- Location: LCCOMB_X8_Y33_N14
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|contador60\(3) & (!\inst|Add0~5\)) # (!\inst|contador60\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|contador60\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador60\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X8_Y33_N16
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|contador60\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|contador60\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|contador60\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador60\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X8_Y33_N18
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = \inst|Add0~9\ $ (\inst|contador60\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|contador60\(5),
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\);

-- Location: LCCOMB_X40_Y18_N14
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|contador\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X40_Y18_N16
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|contador\(1) & (!\inst2|Add0~1\)) # (!\inst2|contador\(1) & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst2|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X40_Y18_N18
\inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|contador\(2) & (\inst2|Add0~3\ $ (GND))) # (!\inst2|contador\(2) & (!\inst2|Add0~3\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst2|contador\(2) & !\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X40_Y18_N20
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|contador\(3) & (!\inst2|Add0~5\)) # (!\inst2|contador\(3) & ((\inst2|Add0~5\) # (GND)))
-- \inst2|Add0~7\ = CARRY((!\inst2|Add0~5\) # (!\inst2|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X40_Y18_N22
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|contador\(4) & (\inst2|Add0~7\ $ (GND))) # (!\inst2|contador\(4) & (!\inst2|Add0~7\ & VCC))
-- \inst2|Add0~9\ = CARRY((\inst2|contador\(4) & !\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X40_Y18_N24
\inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|contador\(5) & (!\inst2|Add0~9\)) # (!\inst2|contador\(5) & ((\inst2|Add0~9\) # (GND)))
-- \inst2|Add0~11\ = CARRY((!\inst2|Add0~9\) # (!\inst2|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X40_Y18_N26
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|contador\(6) & (\inst2|Add0~11\ $ (GND))) # (!\inst2|contador\(6) & (!\inst2|Add0~11\ & VCC))
-- \inst2|Add0~13\ = CARRY((\inst2|contador\(6) & !\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X40_Y18_N28
\inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|contador\(7) & (!\inst2|Add0~13\)) # (!\inst2|contador\(7) & ((\inst2|Add0~13\) # (GND)))
-- \inst2|Add0~15\ = CARRY((!\inst2|Add0~13\) # (!\inst2|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(7),
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCCOMB_X40_Y18_N30
\inst2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|contador\(8) & (\inst2|Add0~15\ $ (GND))) # (!\inst2|contador\(8) & (!\inst2|Add0~15\ & VCC))
-- \inst2|Add0~17\ = CARRY((\inst2|contador\(8) & !\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(8),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: LCCOMB_X40_Y17_N0
\inst2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = (\inst2|contador\(9) & (!\inst2|Add0~17\)) # (!\inst2|contador\(9) & ((\inst2|Add0~17\) # (GND)))
-- \inst2|Add0~19\ = CARRY((!\inst2|Add0~17\) # (!\inst2|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(9),
	datad => VCC,
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\,
	cout => \inst2|Add0~19\);

-- Location: LCCOMB_X40_Y17_N2
\inst2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = (\inst2|contador\(10) & (\inst2|Add0~19\ $ (GND))) # (!\inst2|contador\(10) & (!\inst2|Add0~19\ & VCC))
-- \inst2|Add0~21\ = CARRY((\inst2|contador\(10) & !\inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(10),
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~20_combout\,
	cout => \inst2|Add0~21\);

-- Location: LCCOMB_X40_Y17_N4
\inst2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~22_combout\ = (\inst2|contador\(11) & (!\inst2|Add0~21\)) # (!\inst2|contador\(11) & ((\inst2|Add0~21\) # (GND)))
-- \inst2|Add0~23\ = CARRY((!\inst2|Add0~21\) # (!\inst2|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(11),
	datad => VCC,
	cin => \inst2|Add0~21\,
	combout => \inst2|Add0~22_combout\,
	cout => \inst2|Add0~23\);

-- Location: LCCOMB_X40_Y17_N6
\inst2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~24_combout\ = (\inst2|contador\(12) & (\inst2|Add0~23\ $ (GND))) # (!\inst2|contador\(12) & (!\inst2|Add0~23\ & VCC))
-- \inst2|Add0~25\ = CARRY((\inst2|contador\(12) & !\inst2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(12),
	datad => VCC,
	cin => \inst2|Add0~23\,
	combout => \inst2|Add0~24_combout\,
	cout => \inst2|Add0~25\);

-- Location: LCCOMB_X40_Y17_N8
\inst2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~26_combout\ = (\inst2|contador\(13) & (!\inst2|Add0~25\)) # (!\inst2|contador\(13) & ((\inst2|Add0~25\) # (GND)))
-- \inst2|Add0~27\ = CARRY((!\inst2|Add0~25\) # (!\inst2|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(13),
	datad => VCC,
	cin => \inst2|Add0~25\,
	combout => \inst2|Add0~26_combout\,
	cout => \inst2|Add0~27\);

-- Location: LCCOMB_X40_Y17_N10
\inst2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~28_combout\ = (\inst2|contador\(14) & (\inst2|Add0~27\ $ (GND))) # (!\inst2|contador\(14) & (!\inst2|Add0~27\ & VCC))
-- \inst2|Add0~29\ = CARRY((\inst2|contador\(14) & !\inst2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(14),
	datad => VCC,
	cin => \inst2|Add0~27\,
	combout => \inst2|Add0~28_combout\,
	cout => \inst2|Add0~29\);

-- Location: LCCOMB_X40_Y17_N12
\inst2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~30_combout\ = (\inst2|contador\(15) & (!\inst2|Add0~29\)) # (!\inst2|contador\(15) & ((\inst2|Add0~29\) # (GND)))
-- \inst2|Add0~31\ = CARRY((!\inst2|Add0~29\) # (!\inst2|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(15),
	datad => VCC,
	cin => \inst2|Add0~29\,
	combout => \inst2|Add0~30_combout\,
	cout => \inst2|Add0~31\);

-- Location: LCCOMB_X40_Y17_N14
\inst2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~32_combout\ = (\inst2|contador\(16) & (\inst2|Add0~31\ $ (GND))) # (!\inst2|contador\(16) & (!\inst2|Add0~31\ & VCC))
-- \inst2|Add0~33\ = CARRY((\inst2|contador\(16) & !\inst2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(16),
	datad => VCC,
	cin => \inst2|Add0~31\,
	combout => \inst2|Add0~32_combout\,
	cout => \inst2|Add0~33\);

-- Location: LCCOMB_X40_Y17_N16
\inst2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~34_combout\ = (\inst2|contador\(17) & (!\inst2|Add0~33\)) # (!\inst2|contador\(17) & ((\inst2|Add0~33\) # (GND)))
-- \inst2|Add0~35\ = CARRY((!\inst2|Add0~33\) # (!\inst2|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(17),
	datad => VCC,
	cin => \inst2|Add0~33\,
	combout => \inst2|Add0~34_combout\,
	cout => \inst2|Add0~35\);

-- Location: LCCOMB_X40_Y17_N18
\inst2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~36_combout\ = \inst2|Add0~35\ $ (!\inst2|contador\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|contador\(18),
	cin => \inst2|Add0~35\,
	combout => \inst2|Add0~36_combout\);

-- Location: FF_X41_Y17_N5
\inst2|auxiliar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputclkctrl_outclk\,
	d => \inst2|auxiliar~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|auxiliar~q\);

-- Location: FF_X8_Y33_N7
\inst|contador60[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|auxiliar~clkctrl_outclk\,
	d => \inst|contador60~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador60\(5));

-- Location: FF_X8_Y33_N29
\inst|contador60[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|auxiliar~clkctrl_outclk\,
	d => \inst|contador60~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador60\(4));

-- Location: LCCOMB_X8_Y33_N22
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst|contador60\(5) & (!\inst|contador60\(0) & (!\inst|contador60\(1) & \inst|contador60\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador60\(5),
	datab => \inst|contador60\(0),
	datac => \inst|contador60\(1),
	datad => \inst|contador60\(4),
	combout => \inst|Equal0~1_combout\);

-- Location: FF_X40_Y18_N9
\inst2|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputclkctrl_outclk\,
	d => \inst2|contador~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(3));

-- Location: FF_X40_Y18_N15
\inst2|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputclkctrl_outclk\,
	d => \inst2|Add0~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(0));

-- Location: FF_X40_Y17_N19
\inst2|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputclkctrl_outclk\,
	d => \inst2|Add0~36_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(18));

-- Location: FF_X40_Y17_N17
\inst2|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputclkctrl_outclk\,
	d => \inst2|Add0~34_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(17));

-- Location: FF_X40_Y17_N15
\inst2|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputclkctrl_outclk\,
	d => \inst2|Add0~32_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(16));

-- Location: LCCOMB_X41_Y17_N10
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst2|contador\(16) & (!\inst2|contador\(18) & (!\inst2|contador\(17) & \inst2|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(16),
	datab => \inst2|contador\(18),
	datac => \inst2|contador\(17),
	datad => \inst2|contador\(0),
	combout => \inst2|Equal0~0_combout\);

-- Location: FF_X40_Y17_N29
\inst2|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputclkctrl_outclk\,
	d => \inst2|contador~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(14));

-- Location: FF_X40_Y17_N27
\inst2|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputclkctrl_outclk\,
	d => \inst2|contador~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(13));

-- Location: FF_X40_Y17_N13
\inst2|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputclkctrl_outclk\,
	d => \inst2|Add0~30_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(15));

-- Location: FF_X40_Y17_N7
\inst2|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputclkctrl_outclk\,
	d => \inst2|Add0~24_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(12));

-- Location: LCCOMB_X40_Y17_N20
\inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (!\inst2|contador\(15) & (\inst2|contador\(14) & (\inst2|contador\(13) & !\inst2|contador\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(15),
	datab => \inst2|contador\(14),
	datac => \inst2|contador\(13),
	datad => \inst2|contador\(12),
	combout => \inst2|Equal0~1_combout\);

-- Location: FF_X40_Y17_N31
\inst2|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputclkctrl_outclk\,
	d => \inst2|contador~3_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(10));

-- Location: FF_X40_Y18_N3
\inst2|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputclkctrl_outclk\,
	d => \inst2|contador~4_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(8));

-- Location: FF_X40_Y17_N5
\inst2|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputclkctrl_outclk\,
	d => \inst2|Add0~22_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(11));

-- Location: FF_X40_Y17_N1
\inst2|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputclkctrl_outclk\,
	d => \inst2|Add0~18_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(9));

-- Location: LCCOMB_X41_Y17_N30
\inst2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (!\inst2|contador\(9) & (\inst2|contador\(10) & (\inst2|contador\(8) & !\inst2|contador\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(9),
	datab => \inst2|contador\(10),
	datac => \inst2|contador\(8),
	datad => \inst2|contador\(11),
	combout => \inst2|Equal0~2_combout\);

-- Location: FF_X40_Y18_N5
\inst2|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputclkctrl_outclk\,
	d => \inst2|contador~5_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(7));

-- Location: FF_X40_Y18_N11
\inst2|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputclkctrl_outclk\,
	d => \inst2|contador~6_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(5));

-- Location: FF_X40_Y18_N1
\inst2|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputclkctrl_outclk\,
	d => \inst2|contador~7_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(4));

-- Location: FF_X40_Y18_N27
\inst2|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputclkctrl_outclk\,
	d => \inst2|Add0~12_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(6));

-- Location: LCCOMB_X40_Y18_N6
\inst2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (\inst2|contador\(5) & (\inst2|contador\(7) & (!\inst2|contador\(6) & \inst2|contador\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(5),
	datab => \inst2|contador\(7),
	datac => \inst2|contador\(6),
	datad => \inst2|contador\(4),
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X41_Y17_N18
\inst2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (\inst2|Equal0~0_combout\ & (\inst2|Equal0~1_combout\ & (\inst2|Equal0~2_combout\ & \inst2|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~0_combout\,
	datab => \inst2|Equal0~1_combout\,
	datac => \inst2|Equal0~2_combout\,
	datad => \inst2|Equal0~3_combout\,
	combout => \inst2|Equal0~4_combout\);

-- Location: FF_X40_Y18_N19
\inst2|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputclkctrl_outclk\,
	d => \inst2|Add0~4_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(2));

-- Location: FF_X40_Y18_N13
\inst2|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputclkctrl_outclk\,
	d => \inst2|contador~8_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(1));

-- Location: LCCOMB_X41_Y17_N0
\inst2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~5_combout\ = (!\inst2|contador\(2) & (!\inst2|contador\(1) & (\inst2|contador\(3) & \inst2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(2),
	datab => \inst2|contador\(1),
	datac => \inst2|contador\(3),
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Equal0~5_combout\);

-- Location: LCCOMB_X41_Y17_N22
\inst2|auxiliar~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|auxiliar~0_combout\ = \inst2|auxiliar~q\ $ (\inst2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxiliar~q\,
	datad => \inst2|Equal0~5_combout\,
	combout => \inst2|auxiliar~0_combout\);

-- Location: LCCOMB_X8_Y33_N6
\inst|contador60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador60~1_combout\ = (\inst|Add0~10_combout\ & (((!\inst|contador60\(2)) # (!\inst|contador60\(3))) # (!\inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|contador60\(3),
	datac => \inst|contador60\(2),
	datad => \inst|Add0~10_combout\,
	combout => \inst|contador60~1_combout\);

-- Location: LCCOMB_X8_Y33_N28
\inst|contador60~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador60~2_combout\ = (\inst|Add0~8_combout\ & (((!\inst|contador60\(2)) # (!\inst|contador60\(3))) # (!\inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|contador60\(3),
	datac => \inst|contador60\(2),
	datad => \inst|Add0~8_combout\,
	combout => \inst|contador60~2_combout\);

-- Location: LCCOMB_X40_Y18_N8
\inst2|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador~0_combout\ = (!\inst2|Equal0~5_combout\ & \inst2|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~5_combout\,
	datad => \inst2|Add0~6_combout\,
	combout => \inst2|contador~0_combout\);

-- Location: LCCOMB_X40_Y17_N28
\inst2|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador~1_combout\ = (!\inst2|Equal0~5_combout\ & \inst2|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~5_combout\,
	datad => \inst2|Add0~28_combout\,
	combout => \inst2|contador~1_combout\);

-- Location: LCCOMB_X40_Y17_N26
\inst2|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador~2_combout\ = (!\inst2|Equal0~5_combout\ & \inst2|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~5_combout\,
	datad => \inst2|Add0~26_combout\,
	combout => \inst2|contador~2_combout\);

-- Location: LCCOMB_X40_Y17_N30
\inst2|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador~3_combout\ = (!\inst2|Equal0~5_combout\ & \inst2|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~5_combout\,
	datad => \inst2|Add0~20_combout\,
	combout => \inst2|contador~3_combout\);

-- Location: LCCOMB_X40_Y18_N2
\inst2|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador~4_combout\ = (\inst2|Add0~16_combout\ & !\inst2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~16_combout\,
	datac => \inst2|Equal0~5_combout\,
	combout => \inst2|contador~4_combout\);

-- Location: LCCOMB_X40_Y18_N4
\inst2|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador~5_combout\ = (!\inst2|Equal0~5_combout\ & \inst2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~5_combout\,
	datad => \inst2|Add0~14_combout\,
	combout => \inst2|contador~5_combout\);

-- Location: LCCOMB_X40_Y18_N10
\inst2|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador~6_combout\ = (!\inst2|Equal0~5_combout\ & \inst2|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~5_combout\,
	datad => \inst2|Add0~10_combout\,
	combout => \inst2|contador~6_combout\);

-- Location: LCCOMB_X40_Y18_N0
\inst2|contador~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador~7_combout\ = (\inst2|Add0~8_combout\ & !\inst2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datac => \inst2|Equal0~5_combout\,
	combout => \inst2|contador~7_combout\);

-- Location: LCCOMB_X40_Y18_N12
\inst2|contador~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador~8_combout\ = (!\inst2|Equal0~5_combout\ & \inst2|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~5_combout\,
	datad => \inst2|Add0~2_combout\,
	combout => \inst2|contador~8_combout\);

-- Location: IOIBUF_X27_Y0_N22
\CLK_IN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_IN,
	o => \CLK_IN~input_o\);

-- Location: CLKCTRL_G7
\inst2|auxiliar~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|auxiliar~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|auxiliar~clkctrl_outclk\);

-- Location: CLKCTRL_G18
\CLK_IN~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_IN~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_IN~inputclkctrl_outclk\);

-- Location: LCCOMB_X41_Y17_N4
\inst2|auxiliar~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|auxiliar~feeder_combout\ = \inst2|auxiliar~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|auxiliar~0_combout\,
	combout => \inst2|auxiliar~feeder_combout\);

-- Location: IOOBUF_X7_Y34_N2
\ABCD[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \ABCD[3]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\ABCD[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~1_combout\,
	devoe => ww_devoe,
	o => \ABCD[2]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\ABCD[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~2_combout\,
	devoe => ww_devoe,
	o => \ABCD[1]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\ABCD[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \ABCD[0]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\selector[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Add2~1_combout\,
	devoe => ww_devoe,
	o => \selector[3]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\selector[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Add2~2_combout\,
	devoe => ww_devoe,
	o => \selector[2]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\selector[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Add2~3_combout\,
	devoe => ww_devoe,
	o => \selector[1]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\selector[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|selector[0]~0_combout\,
	devoe => ww_devoe,
	o => \selector[0]~output_o\);

-- Location: LCCOMB_X8_Y33_N10
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|contador60\(1) & (!\inst|Add0~1\)) # (!\inst|contador60\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|contador60\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador60\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X8_Y33_N12
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|contador60\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|contador60\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|contador60\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador60\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X8_Y33_N30
\inst|contador60~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador60~4_combout\ = (\inst|Add0~4_combout\ & (((!\inst|contador60\(2)) # (!\inst|contador60\(3))) # (!\inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|contador60\(3),
	datac => \inst|contador60\(2),
	datad => \inst|Add0~4_combout\,
	combout => \inst|contador60~4_combout\);

-- Location: IOIBUF_X53_Y14_N1
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: FF_X8_Y33_N31
\inst|contador60[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|auxiliar~clkctrl_outclk\,
	d => \inst|contador60~4_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador60\(2));

-- Location: LCCOMB_X8_Y33_N20
\inst|contador60~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador60~3_combout\ = (\inst|Add0~6_combout\ & (((!\inst|contador60\(3)) # (!\inst|contador60\(2))) # (!\inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|contador60\(2),
	datac => \inst|contador60\(3),
	datad => \inst|Add0~6_combout\,
	combout => \inst|contador60~3_combout\);

-- Location: FF_X8_Y33_N21
\inst|contador60[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|auxiliar~clkctrl_outclk\,
	d => \inst|contador60~3_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador60\(3));

-- Location: LCCOMB_X8_Y33_N8
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|contador60\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|contador60\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador60\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X8_Y33_N0
\inst|contador60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|contador60~0_combout\ = (\inst|Add0~0_combout\ & (((!\inst|contador60\(2)) # (!\inst|contador60\(3))) # (!\inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|contador60\(3),
	datac => \inst|Add0~0_combout\,
	datad => \inst|contador60\(2),
	combout => \inst|contador60~0_combout\);

-- Location: FF_X8_Y33_N1
\inst|contador60[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|auxiliar~clkctrl_outclk\,
	d => \inst|contador60~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador60\(0));

-- Location: FF_X8_Y33_N11
\inst|contador60[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|auxiliar~clkctrl_outclk\,
	d => \inst|Add0~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador60\(1));

-- Location: LCCOMB_X8_Y33_N2
\inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\inst|contador60\(1) & \inst|contador60\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador60\(1),
	datac => \inst|contador60\(0),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X8_Y33_N24
\inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (\inst|contador60\(1) & !\inst|contador60\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador60\(1),
	datac => \inst|contador60\(0),
	combout => \inst|Equal1~1_combout\);

-- Location: LCCOMB_X8_Y33_N26
\inst|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~2_combout\ = (!\inst|contador60\(1) & \inst|contador60\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador60\(1),
	datac => \inst|contador60\(0),
	combout => \inst|Equal1~2_combout\);

-- Location: LCCOMB_X8_Y33_N4
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|contador60\(1) & !\inst|contador60\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador60\(1),
	datac => \inst|contador60\(0),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X41_Y33_N2
\inst|selector[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|selector[0]~0_combout\ = \inst|selector[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|selector[0]~0_combout\,
	combout => \inst|selector[0]~0_combout\);

-- Location: LCCOMB_X41_Y33_N0
\inst|Add2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~3_combout\ = \inst|selector[0]~0_combout\ $ (\inst|Add2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|selector[0]~0_combout\,
	datad => \inst|Add2~3_combout\,
	combout => \inst|Add2~3_combout\);

-- Location: LCCOMB_X41_Y33_N4
\inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = (\inst|Add2~2_combout\ & (((\inst|selector[0]~0_combout\ & !\inst|Add2~3_combout\)) # (!\inst|contador60\(0)))) # (!\inst|Add2~2_combout\ & (((\inst|contador60\(0)) # (\inst|Add2~3_combout\)) # (!\inst|selector[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~2_combout\,
	datab => \inst|selector[0]~0_combout\,
	datac => \inst|contador60\(0),
	datad => \inst|Add2~3_combout\,
	combout => \inst|Add2~0_combout\);

-- Location: LCCOMB_X38_Y33_N0
\inst|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~1_combout\ = \inst|Add2~1_combout\ $ (\inst|contador60\(1) $ (!\inst|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add2~1_combout\,
	datac => \inst|contador60\(1),
	datad => \inst|Add2~0_combout\,
	combout => \inst|Add2~1_combout\);

-- Location: LCCOMB_X41_Y33_N14
\inst|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = \inst|Add2~2_combout\ $ (\inst|contador60\(0) $ (((\inst|selector[0]~0_combout\ & !\inst|Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~2_combout\,
	datab => \inst|selector[0]~0_combout\,
	datac => \inst|contador60\(0),
	datad => \inst|Add2~3_combout\,
	combout => \inst|Add2~2_combout\);

-- Location: IOIBUF_X5_Y34_N15
\EFGH[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EFGH(3),
	o => \EFGH[3]~input_o\);

-- Location: IOIBUF_X14_Y34_N22
\EFGH[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EFGH(2),
	o => \EFGH[2]~input_o\);

-- Location: IOIBUF_X11_Y34_N1
\EFGH[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EFGH(1),
	o => \EFGH[1]~input_o\);

-- Location: IOIBUF_X9_Y34_N22
\EFGH[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EFGH(0),
	o => \EFGH[0]~input_o\);

ww_ABCD(3) <= \ABCD[3]~output_o\;

ww_ABCD(2) <= \ABCD[2]~output_o\;

ww_ABCD(1) <= \ABCD[1]~output_o\;

ww_ABCD(0) <= \ABCD[0]~output_o\;

ww_selector(3) <= \selector[3]~output_o\;

ww_selector(2) <= \selector[2]~output_o\;

ww_selector(1) <= \selector[1]~output_o\;

ww_selector(0) <= \selector[0]~output_o\;
END structure;


