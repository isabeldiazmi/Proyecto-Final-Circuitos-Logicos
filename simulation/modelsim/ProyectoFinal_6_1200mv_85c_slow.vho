-- Copyright (C) 1991-2013 Altera Corporation
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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "12/13/2015 21:20:19"

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

ENTITY 	ProyectoFinal IS
    PORT (
	ren1 : OUT std_logic;
	clock : IN std_logic;
	col1 : IN std_logic;
	col2 : IN std_logic;
	col3 : IN std_logic;
	col4 : IN std_logic;
	ren2 : OUT std_logic;
	ren3 : OUT std_logic;
	ren4 : OUT std_logic;
	A : OUT std_logic;
	RESET : IN std_logic;
	B : OUT std_logic;
	C : OUT std_logic;
	D : OUT std_logic;
	E : OUT std_logic;
	F : OUT std_logic;
	G : OUT std_logic;
	piso : OUT std_logic_vector(3 DOWNTO 0)
	);
END ProyectoFinal;

-- Design Ports Information
-- ren1	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ren2	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ren3	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ren4	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso[3]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col2	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col4	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col3	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col1	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ProyectoFinal IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ren1 : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_col1 : std_logic;
SIGNAL ww_col2 : std_logic;
SIGNAL ww_col3 : std_logic;
SIGNAL ww_col4 : std_logic;
SIGNAL ww_ren2 : std_logic;
SIGNAL ww_ren3 : std_logic;
SIGNAL ww_ren4 : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL ww_piso : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|reloj_aux~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|auxiliar~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|T~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Add0~24_combout\ : std_logic;
SIGNAL \inst2|Add0~28_combout\ : std_logic;
SIGNAL \inst2|Add0~30_combout\ : std_logic;
SIGNAL \inst7|Add0~0_combout\ : std_logic;
SIGNAL \inst7|Add0~1\ : std_logic;
SIGNAL \inst7|Add0~2_combout\ : std_logic;
SIGNAL \inst7|Add0~3\ : std_logic;
SIGNAL \inst7|Add0~4_combout\ : std_logic;
SIGNAL \inst7|Add0~5\ : std_logic;
SIGNAL \inst7|Add0~6_combout\ : std_logic;
SIGNAL \inst7|Add0~7\ : std_logic;
SIGNAL \inst7|Add0~8_combout\ : std_logic;
SIGNAL \inst7|Add0~9\ : std_logic;
SIGNAL \inst7|Add0~10_combout\ : std_logic;
SIGNAL \inst7|Add0~11\ : std_logic;
SIGNAL \inst7|Add0~12_combout\ : std_logic;
SIGNAL \inst7|Add0~13\ : std_logic;
SIGNAL \inst7|Add0~14_combout\ : std_logic;
SIGNAL \inst7|Add0~15\ : std_logic;
SIGNAL \inst7|Add0~16_combout\ : std_logic;
SIGNAL \inst7|Add0~17\ : std_logic;
SIGNAL \inst7|Add0~18_combout\ : std_logic;
SIGNAL \inst7|Add0~19\ : std_logic;
SIGNAL \inst7|Add0~20_combout\ : std_logic;
SIGNAL \inst7|Add0~21\ : std_logic;
SIGNAL \inst7|Add0~22_combout\ : std_logic;
SIGNAL \inst7|Add0~23\ : std_logic;
SIGNAL \inst7|Add0~24_combout\ : std_logic;
SIGNAL \inst7|Add0~25\ : std_logic;
SIGNAL \inst7|Add0~26_combout\ : std_logic;
SIGNAL \inst7|Add0~27\ : std_logic;
SIGNAL \inst7|Add0~28_combout\ : std_logic;
SIGNAL \inst7|Add0~29\ : std_logic;
SIGNAL \inst7|Add0~30_combout\ : std_logic;
SIGNAL \inst7|Add0~31\ : std_logic;
SIGNAL \inst7|Add0~32_combout\ : std_logic;
SIGNAL \inst7|Add0~33\ : std_logic;
SIGNAL \inst7|Add0~34_combout\ : std_logic;
SIGNAL \inst7|Add0~35\ : std_logic;
SIGNAL \inst7|Add0~36_combout\ : std_logic;
SIGNAL \inst7|Add0~37\ : std_logic;
SIGNAL \inst7|Add0~38_combout\ : std_logic;
SIGNAL \inst7|Add0~39\ : std_logic;
SIGNAL \inst7|Add0~40_combout\ : std_logic;
SIGNAL \inst7|Add0~41\ : std_logic;
SIGNAL \inst7|Add0~42_combout\ : std_logic;
SIGNAL \inst7|Add0~43\ : std_logic;
SIGNAL \inst7|Add0~44_combout\ : std_logic;
SIGNAL \inst7|Add0~45\ : std_logic;
SIGNAL \inst7|Add0~46_combout\ : std_logic;
SIGNAL \inst7|Add0~47\ : std_logic;
SIGNAL \inst7|Add0~48_combout\ : std_logic;
SIGNAL \inst|estadoActual.piso1~q\ : std_logic;
SIGNAL \inst2|Selector1~1_combout\ : std_logic;
SIGNAL \inst7|auxiliar~q\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|T~combout\ : std_logic;
SIGNAL \inst7|Equal0~0_combout\ : std_logic;
SIGNAL \inst7|Equal0~1_combout\ : std_logic;
SIGNAL \inst7|Equal0~2_combout\ : std_logic;
SIGNAL \inst7|Equal0~3_combout\ : std_logic;
SIGNAL \inst7|Equal0~4_combout\ : std_logic;
SIGNAL \inst7|Equal0~5_combout\ : std_logic;
SIGNAL \inst7|Equal0~6_combout\ : std_logic;
SIGNAL \inst7|Equal0~7_combout\ : std_logic;
SIGNAL \inst7|auxiliar~0_combout\ : std_logic;
SIGNAL \inst2|contador~0_combout\ : std_logic;
SIGNAL \inst2|contador~6_combout\ : std_logic;
SIGNAL \inst7|contador~0_combout\ : std_logic;
SIGNAL \inst7|contador~1_combout\ : std_logic;
SIGNAL \inst7|contador~2_combout\ : std_logic;
SIGNAL \inst7|contador~3_combout\ : std_logic;
SIGNAL \inst7|contador~4_combout\ : std_logic;
SIGNAL \inst7|contador~5_combout\ : std_logic;
SIGNAL \inst7|contador~6_combout\ : std_logic;
SIGNAL \inst7|contador~7_combout\ : std_logic;
SIGNAL \inst7|contador~8_combout\ : std_logic;
SIGNAL \inst7|contador~9_combout\ : std_logic;
SIGNAL \inst7|contador~10_combout\ : std_logic;
SIGNAL \inst7|contador~11_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst7|auxiliar~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|T~clkctrl_outclk\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst7|auxiliar~feeder_combout\ : std_logic;
SIGNAL \ren1~output_o\ : std_logic;
SIGNAL \ren2~output_o\ : std_logic;
SIGNAL \ren3~output_o\ : std_logic;
SIGNAL \ren4~output_o\ : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \E~output_o\ : std_logic;
SIGNAL \F~output_o\ : std_logic;
SIGNAL \G~output_o\ : std_logic;
SIGNAL \piso[3]~output_o\ : std_logic;
SIGNAL \piso[2]~output_o\ : std_logic;
SIGNAL \piso[1]~output_o\ : std_logic;
SIGNAL \piso[0]~output_o\ : std_logic;
SIGNAL \inst2|contador~4_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|contador~5_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|contador~3_combout\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|contador~2_combout\ : std_logic;
SIGNAL \inst2|Add0~19\ : std_logic;
SIGNAL \inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst2|Add0~21\ : std_logic;
SIGNAL \inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst2|Add0~23\ : std_logic;
SIGNAL \inst2|Add0~25\ : std_logic;
SIGNAL \inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst2|contador~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Add0~27\ : std_logic;
SIGNAL \inst2|Add0~29\ : std_logic;
SIGNAL \inst2|Add0~31\ : std_logic;
SIGNAL \inst2|Add0~33\ : std_logic;
SIGNAL \inst2|Add0~34_combout\ : std_logic;
SIGNAL \inst2|Add0~32_combout\ : std_logic;
SIGNAL \inst2|Add0~35\ : std_logic;
SIGNAL \inst2|Add0~36_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|Equal0~5_combout\ : std_logic;
SIGNAL \inst2|reloj_aux~0_combout\ : std_logic;
SIGNAL \inst2|reloj_aux~feeder_combout\ : std_logic;
SIGNAL \inst2|reloj_aux~q\ : std_logic;
SIGNAL \inst2|reloj_aux~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|estado_Actual.S1~0_combout\ : std_logic;
SIGNAL \inst2|estado_Actual.S1~q\ : std_logic;
SIGNAL \inst2|estado_Actual.S2~feeder_combout\ : std_logic;
SIGNAL \inst2|estado_Actual.S2~q\ : std_logic;
SIGNAL \inst2|estado_Actual.S3~q\ : std_logic;
SIGNAL \inst2|estado_Actual.S0~0_combout\ : std_logic;
SIGNAL \inst2|estado_Actual.S0~q\ : std_logic;
SIGNAL \col1~input_o\ : std_logic;
SIGNAL \inst2|Selector2~3_combout\ : std_logic;
SIGNAL \col3~input_o\ : std_logic;
SIGNAL \inst2|Selector2~1_combout\ : std_logic;
SIGNAL \inst2|Selector2~2_combout\ : std_logic;
SIGNAL \inst2|Selector2~4_combout\ : std_logic;
SIGNAL \col4~input_o\ : std_logic;
SIGNAL \col2~input_o\ : std_logic;
SIGNAL \inst2|Selector0~0_combout\ : std_logic;
SIGNAL \inst2|Selector0~1_combout\ : std_logic;
SIGNAL \inst2|Selector1~0_combout\ : std_logic;
SIGNAL \inst2|Selector1~2_combout\ : std_logic;
SIGNAL \inst2|Selector1~3_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|aux[3]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst2|Selector3~2_combout\ : std_logic;
SIGNAL \inst2|Selector3~0_combout\ : std_logic;
SIGNAL \inst2|Selector2~0_combout\ : std_logic;
SIGNAL \inst2|Selector3~1_combout\ : std_logic;
SIGNAL \inst2|Selector3~3_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|Selector4~1_combout\ : std_logic;
SIGNAL \inst|estadoActual.piso2~q\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|estadoActual.piso4~q\ : std_logic;
SIGNAL \inst|Selector2~1_combout\ : std_logic;
SIGNAL \inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst|estadoActual.piso3~q\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|Selector1~1_combout\ : std_logic;
SIGNAL \inst9|34~combout\ : std_logic;
SIGNAL \inst9|35~2_combout\ : std_logic;
SIGNAL \inst9|49~2_combout\ : std_logic;
SIGNAL \inst9|36~2_combout\ : std_logic;
SIGNAL \inst9|32~combout\ : std_logic;
SIGNAL \inst9|37~2_combout\ : std_logic;
SIGNAL \inst9|33~combout\ : std_logic;
SIGNAL \inst|Selector2~2_combout\ : std_logic;
SIGNAL \inst2|contador\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst7|contador\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst3|aux\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|ALT_INV_estado_Actual.S0~q\ : std_logic;

BEGIN

ren1 <= ww_ren1;
ww_clock <= clock;
ww_col1 <= col1;
ww_col2 <= col2;
ww_col3 <= col3;
ww_col4 <= col4;
ren2 <= ww_ren2;
ren3 <= ww_ren3;
ren4 <= ww_ren4;
A <= ww_A;
ww_RESET <= RESET;
B <= ww_B;
C <= ww_C;
D <= ww_D;
E <= ww_E;
F <= ww_F;
G <= ww_G;
piso <= ww_piso;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|reloj_aux~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|reloj_aux~q\);

\inst7|auxiliar~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|auxiliar~q\);

\inst2|T~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|T~combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\inst2|ALT_INV_estado_Actual.S0~q\ <= NOT \inst2|estado_Actual.S0~q\;

-- Location: LCCOMB_X24_Y18_N14
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

-- Location: LCCOMB_X24_Y18_N22
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|contador\(4) & (\inst2|Add0~7\ $ (GND))) # (!\inst2|contador\(4) & (!\inst2|Add0~7\ & VCC))
-- \inst2|Add0~9\ = CARRY((\inst2|contador\(4) & !\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X24_Y17_N6
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

-- Location: LCCOMB_X24_Y17_N10
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

-- Location: LCCOMB_X24_Y17_N12
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

-- Location: LCCOMB_X51_Y14_N8
\inst7|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~0_combout\ = \inst7|contador\(0) $ (VCC)
-- \inst7|Add0~1\ = CARRY(\inst7|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|contador\(0),
	datad => VCC,
	combout => \inst7|Add0~0_combout\,
	cout => \inst7|Add0~1\);

-- Location: LCCOMB_X51_Y14_N10
\inst7|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~2_combout\ = (\inst7|contador\(1) & (!\inst7|Add0~1\)) # (!\inst7|contador\(1) & ((\inst7|Add0~1\) # (GND)))
-- \inst7|Add0~3\ = CARRY((!\inst7|Add0~1\) # (!\inst7|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador\(1),
	datad => VCC,
	cin => \inst7|Add0~1\,
	combout => \inst7|Add0~2_combout\,
	cout => \inst7|Add0~3\);

-- Location: LCCOMB_X51_Y14_N12
\inst7|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~4_combout\ = (\inst7|contador\(2) & (\inst7|Add0~3\ $ (GND))) # (!\inst7|contador\(2) & (!\inst7|Add0~3\ & VCC))
-- \inst7|Add0~5\ = CARRY((\inst7|contador\(2) & !\inst7|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador\(2),
	datad => VCC,
	cin => \inst7|Add0~3\,
	combout => \inst7|Add0~4_combout\,
	cout => \inst7|Add0~5\);

-- Location: LCCOMB_X51_Y14_N14
\inst7|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~6_combout\ = (\inst7|contador\(3) & (!\inst7|Add0~5\)) # (!\inst7|contador\(3) & ((\inst7|Add0~5\) # (GND)))
-- \inst7|Add0~7\ = CARRY((!\inst7|Add0~5\) # (!\inst7|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|contador\(3),
	datad => VCC,
	cin => \inst7|Add0~5\,
	combout => \inst7|Add0~6_combout\,
	cout => \inst7|Add0~7\);

-- Location: LCCOMB_X51_Y14_N16
\inst7|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~8_combout\ = (\inst7|contador\(4) & (\inst7|Add0~7\ $ (GND))) # (!\inst7|contador\(4) & (!\inst7|Add0~7\ & VCC))
-- \inst7|Add0~9\ = CARRY((\inst7|contador\(4) & !\inst7|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|contador\(4),
	datad => VCC,
	cin => \inst7|Add0~7\,
	combout => \inst7|Add0~8_combout\,
	cout => \inst7|Add0~9\);

-- Location: LCCOMB_X51_Y14_N18
\inst7|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~10_combout\ = (\inst7|contador\(5) & (!\inst7|Add0~9\)) # (!\inst7|contador\(5) & ((\inst7|Add0~9\) # (GND)))
-- \inst7|Add0~11\ = CARRY((!\inst7|Add0~9\) # (!\inst7|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|contador\(5),
	datad => VCC,
	cin => \inst7|Add0~9\,
	combout => \inst7|Add0~10_combout\,
	cout => \inst7|Add0~11\);

-- Location: LCCOMB_X51_Y14_N20
\inst7|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~12_combout\ = (\inst7|contador\(6) & (\inst7|Add0~11\ $ (GND))) # (!\inst7|contador\(6) & (!\inst7|Add0~11\ & VCC))
-- \inst7|Add0~13\ = CARRY((\inst7|contador\(6) & !\inst7|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|contador\(6),
	datad => VCC,
	cin => \inst7|Add0~11\,
	combout => \inst7|Add0~12_combout\,
	cout => \inst7|Add0~13\);

-- Location: LCCOMB_X51_Y14_N22
\inst7|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~14_combout\ = (\inst7|contador\(7) & (!\inst7|Add0~13\)) # (!\inst7|contador\(7) & ((\inst7|Add0~13\) # (GND)))
-- \inst7|Add0~15\ = CARRY((!\inst7|Add0~13\) # (!\inst7|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador\(7),
	datad => VCC,
	cin => \inst7|Add0~13\,
	combout => \inst7|Add0~14_combout\,
	cout => \inst7|Add0~15\);

-- Location: LCCOMB_X51_Y14_N24
\inst7|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~16_combout\ = (\inst7|contador\(8) & (\inst7|Add0~15\ $ (GND))) # (!\inst7|contador\(8) & (!\inst7|Add0~15\ & VCC))
-- \inst7|Add0~17\ = CARRY((\inst7|contador\(8) & !\inst7|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|contador\(8),
	datad => VCC,
	cin => \inst7|Add0~15\,
	combout => \inst7|Add0~16_combout\,
	cout => \inst7|Add0~17\);

-- Location: LCCOMB_X51_Y14_N26
\inst7|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~18_combout\ = (\inst7|contador\(9) & (!\inst7|Add0~17\)) # (!\inst7|contador\(9) & ((\inst7|Add0~17\) # (GND)))
-- \inst7|Add0~19\ = CARRY((!\inst7|Add0~17\) # (!\inst7|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador\(9),
	datad => VCC,
	cin => \inst7|Add0~17\,
	combout => \inst7|Add0~18_combout\,
	cout => \inst7|Add0~19\);

-- Location: LCCOMB_X51_Y14_N28
\inst7|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~20_combout\ = (\inst7|contador\(10) & (\inst7|Add0~19\ $ (GND))) # (!\inst7|contador\(10) & (!\inst7|Add0~19\ & VCC))
-- \inst7|Add0~21\ = CARRY((\inst7|contador\(10) & !\inst7|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|contador\(10),
	datad => VCC,
	cin => \inst7|Add0~19\,
	combout => \inst7|Add0~20_combout\,
	cout => \inst7|Add0~21\);

-- Location: LCCOMB_X51_Y14_N30
\inst7|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~22_combout\ = (\inst7|contador\(11) & (!\inst7|Add0~21\)) # (!\inst7|contador\(11) & ((\inst7|Add0~21\) # (GND)))
-- \inst7|Add0~23\ = CARRY((!\inst7|Add0~21\) # (!\inst7|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador\(11),
	datad => VCC,
	cin => \inst7|Add0~21\,
	combout => \inst7|Add0~22_combout\,
	cout => \inst7|Add0~23\);

-- Location: LCCOMB_X51_Y13_N0
\inst7|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~24_combout\ = (\inst7|contador\(12) & (\inst7|Add0~23\ $ (GND))) # (!\inst7|contador\(12) & (!\inst7|Add0~23\ & VCC))
-- \inst7|Add0~25\ = CARRY((\inst7|contador\(12) & !\inst7|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|contador\(12),
	datad => VCC,
	cin => \inst7|Add0~23\,
	combout => \inst7|Add0~24_combout\,
	cout => \inst7|Add0~25\);

-- Location: LCCOMB_X51_Y13_N2
\inst7|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~26_combout\ = (\inst7|contador\(13) & (!\inst7|Add0~25\)) # (!\inst7|contador\(13) & ((\inst7|Add0~25\) # (GND)))
-- \inst7|Add0~27\ = CARRY((!\inst7|Add0~25\) # (!\inst7|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador\(13),
	datad => VCC,
	cin => \inst7|Add0~25\,
	combout => \inst7|Add0~26_combout\,
	cout => \inst7|Add0~27\);

-- Location: LCCOMB_X51_Y13_N4
\inst7|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~28_combout\ = (\inst7|contador\(14) & (\inst7|Add0~27\ $ (GND))) # (!\inst7|contador\(14) & (!\inst7|Add0~27\ & VCC))
-- \inst7|Add0~29\ = CARRY((\inst7|contador\(14) & !\inst7|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador\(14),
	datad => VCC,
	cin => \inst7|Add0~27\,
	combout => \inst7|Add0~28_combout\,
	cout => \inst7|Add0~29\);

-- Location: LCCOMB_X51_Y13_N6
\inst7|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~30_combout\ = (\inst7|contador\(15) & (!\inst7|Add0~29\)) # (!\inst7|contador\(15) & ((\inst7|Add0~29\) # (GND)))
-- \inst7|Add0~31\ = CARRY((!\inst7|Add0~29\) # (!\inst7|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador\(15),
	datad => VCC,
	cin => \inst7|Add0~29\,
	combout => \inst7|Add0~30_combout\,
	cout => \inst7|Add0~31\);

-- Location: LCCOMB_X51_Y13_N8
\inst7|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~32_combout\ = (\inst7|contador\(16) & (\inst7|Add0~31\ $ (GND))) # (!\inst7|contador\(16) & (!\inst7|Add0~31\ & VCC))
-- \inst7|Add0~33\ = CARRY((\inst7|contador\(16) & !\inst7|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador\(16),
	datad => VCC,
	cin => \inst7|Add0~31\,
	combout => \inst7|Add0~32_combout\,
	cout => \inst7|Add0~33\);

-- Location: LCCOMB_X51_Y13_N10
\inst7|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~34_combout\ = (\inst7|contador\(17) & (!\inst7|Add0~33\)) # (!\inst7|contador\(17) & ((\inst7|Add0~33\) # (GND)))
-- \inst7|Add0~35\ = CARRY((!\inst7|Add0~33\) # (!\inst7|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador\(17),
	datad => VCC,
	cin => \inst7|Add0~33\,
	combout => \inst7|Add0~34_combout\,
	cout => \inst7|Add0~35\);

-- Location: LCCOMB_X51_Y13_N12
\inst7|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~36_combout\ = (\inst7|contador\(18) & (\inst7|Add0~35\ $ (GND))) # (!\inst7|contador\(18) & (!\inst7|Add0~35\ & VCC))
-- \inst7|Add0~37\ = CARRY((\inst7|contador\(18) & !\inst7|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|contador\(18),
	datad => VCC,
	cin => \inst7|Add0~35\,
	combout => \inst7|Add0~36_combout\,
	cout => \inst7|Add0~37\);

-- Location: LCCOMB_X51_Y13_N14
\inst7|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~38_combout\ = (\inst7|contador\(19) & (!\inst7|Add0~37\)) # (!\inst7|contador\(19) & ((\inst7|Add0~37\) # (GND)))
-- \inst7|Add0~39\ = CARRY((!\inst7|Add0~37\) # (!\inst7|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|contador\(19),
	datad => VCC,
	cin => \inst7|Add0~37\,
	combout => \inst7|Add0~38_combout\,
	cout => \inst7|Add0~39\);

-- Location: LCCOMB_X51_Y13_N16
\inst7|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~40_combout\ = (\inst7|contador\(20) & (\inst7|Add0~39\ $ (GND))) # (!\inst7|contador\(20) & (!\inst7|Add0~39\ & VCC))
-- \inst7|Add0~41\ = CARRY((\inst7|contador\(20) & !\inst7|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|contador\(20),
	datad => VCC,
	cin => \inst7|Add0~39\,
	combout => \inst7|Add0~40_combout\,
	cout => \inst7|Add0~41\);

-- Location: LCCOMB_X51_Y13_N18
\inst7|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~42_combout\ = (\inst7|contador\(21) & (!\inst7|Add0~41\)) # (!\inst7|contador\(21) & ((\inst7|Add0~41\) # (GND)))
-- \inst7|Add0~43\ = CARRY((!\inst7|Add0~41\) # (!\inst7|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador\(21),
	datad => VCC,
	cin => \inst7|Add0~41\,
	combout => \inst7|Add0~42_combout\,
	cout => \inst7|Add0~43\);

-- Location: LCCOMB_X51_Y13_N20
\inst7|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~44_combout\ = (\inst7|contador\(22) & (\inst7|Add0~43\ $ (GND))) # (!\inst7|contador\(22) & (!\inst7|Add0~43\ & VCC))
-- \inst7|Add0~45\ = CARRY((\inst7|contador\(22) & !\inst7|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|contador\(22),
	datad => VCC,
	cin => \inst7|Add0~43\,
	combout => \inst7|Add0~44_combout\,
	cout => \inst7|Add0~45\);

-- Location: LCCOMB_X51_Y13_N22
\inst7|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~46_combout\ = (\inst7|contador\(23) & (!\inst7|Add0~45\)) # (!\inst7|contador\(23) & ((\inst7|Add0~45\) # (GND)))
-- \inst7|Add0~47\ = CARRY((!\inst7|Add0~45\) # (!\inst7|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador\(23),
	datad => VCC,
	cin => \inst7|Add0~45\,
	combout => \inst7|Add0~46_combout\,
	cout => \inst7|Add0~47\);

-- Location: LCCOMB_X51_Y13_N24
\inst7|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~48_combout\ = \inst7|Add0~47\ $ (!\inst7|contador\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|contador\(24),
	cin => \inst7|Add0~47\,
	combout => \inst7|Add0~48_combout\);

-- Location: FF_X46_Y33_N5
\inst|estadoActual.piso1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|auxiliar~clkctrl_outclk\,
	d => \inst|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estadoActual.piso1~q\);

-- Location: LCCOMB_X47_Y33_N30
\inst2|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector1~1_combout\ = (\col1~input_o\) # ((!\col2~input_o\ & ((\col4~input_o\) # (\col3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col1~input_o\,
	datab => \col4~input_o\,
	datac => \col2~input_o\,
	datad => \col3~input_o\,
	combout => \inst2|Selector1~1_combout\);

-- Location: FF_X52_Y14_N27
\inst7|auxiliar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|auxiliar~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|auxiliar~q\);

-- Location: LCCOMB_X46_Y33_N4
\inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = ((!\inst|estadoActual.piso2~q\ & \inst|estadoActual.piso1~q\)) # (!\inst|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estadoActual.piso2~q\,
	datac => \inst|estadoActual.piso1~q\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Selector3~0_combout\);

-- Location: FF_X24_Y17_N29
\inst2|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(15));

-- Location: FF_X24_Y17_N7
\inst2|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(12));

-- Location: LCCOMB_X24_Y18_N10
\inst2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (!\inst2|contador\(0) & (\inst2|contador\(8) & (!\inst2|contador\(10) & \inst2|contador\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(0),
	datab => \inst2|contador\(8),
	datac => \inst2|contador\(10),
	datad => \inst2|contador\(9),
	combout => \inst2|Equal0~2_combout\);

-- Location: FF_X24_Y18_N7
\inst2|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(4));

-- Location: LCCOMB_X50_Y33_N14
\inst2|T\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|T~combout\ = LCELL((\col2~input_o\) # ((\col4~input_o\) # ((\col3~input_o\) # (\col1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col2~input_o\,
	datab => \col4~input_o\,
	datac => \col3~input_o\,
	datad => \col1~input_o\,
	combout => \inst2|T~combout\);

-- Location: FF_X51_Y14_N9
\inst7|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|Add0~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(0));

-- Location: FF_X52_Y13_N25
\inst7|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|contador~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(24));

-- Location: FF_X52_Y13_N23
\inst7|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|contador~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(22));

-- Location: FF_X51_Y13_N23
\inst7|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|Add0~46_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(23));

-- Location: LCCOMB_X52_Y13_N8
\inst7|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~0_combout\ = (\inst7|contador\(22) & (\inst7|contador\(24) & (\inst7|contador\(0) & !\inst7|contador\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador\(22),
	datab => \inst7|contador\(24),
	datac => \inst7|contador\(0),
	datad => \inst7|contador\(23),
	combout => \inst7|Equal0~0_combout\);

-- Location: FF_X51_Y13_N27
\inst7|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|contador~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(21));

-- Location: FF_X52_Y13_N19
\inst7|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|contador~3_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(20));

-- Location: FF_X52_Y13_N13
\inst7|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|contador~4_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(19));

-- Location: FF_X51_Y13_N29
\inst7|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|contador~5_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(18));

-- Location: LCCOMB_X52_Y13_N14
\inst7|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~1_combout\ = (\inst7|contador\(19) & (\inst7|contador\(20) & (\inst7|contador\(21) & \inst7|contador\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador\(19),
	datab => \inst7|contador\(20),
	datac => \inst7|contador\(21),
	datad => \inst7|contador\(18),
	combout => \inst7|Equal0~1_combout\);

-- Location: FF_X51_Y13_N31
\inst7|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|contador~6_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(16));

-- Location: FF_X52_Y13_N17
\inst7|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|contador~7_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(14));

-- Location: FF_X51_Y13_N11
\inst7|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|Add0~34_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(17));

-- Location: FF_X51_Y13_N7
\inst7|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|Add0~30_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(15));

-- Location: LCCOMB_X52_Y13_N26
\inst7|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~2_combout\ = (!\inst7|contador\(17) & (\inst7|contador\(14) & (!\inst7|contador\(15) & \inst7|contador\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador\(17),
	datab => \inst7|contador\(14),
	datac => \inst7|contador\(15),
	datad => \inst7|contador\(16),
	combout => \inst7|Equal0~2_combout\);

-- Location: FF_X52_Y13_N21
\inst7|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|contador~8_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(13));

-- Location: FF_X52_Y13_N31
\inst7|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|contador~9_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(12));

-- Location: FF_X52_Y13_N1
\inst7|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|contador~10_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(11));

-- Location: FF_X51_Y14_N29
\inst7|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|Add0~20_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(10));

-- Location: LCCOMB_X52_Y13_N10
\inst7|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~3_combout\ = (\inst7|contador\(12) & (\inst7|contador\(11) & (!\inst7|contador\(10) & \inst7|contador\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador\(12),
	datab => \inst7|contador\(11),
	datac => \inst7|contador\(10),
	datad => \inst7|contador\(13),
	combout => \inst7|Equal0~3_combout\);

-- Location: LCCOMB_X52_Y13_N28
\inst7|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~4_combout\ = (\inst7|Equal0~2_combout\ & (\inst7|Equal0~1_combout\ & (\inst7|Equal0~0_combout\ & \inst7|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~2_combout\,
	datab => \inst7|Equal0~1_combout\,
	datac => \inst7|Equal0~0_combout\,
	datad => \inst7|Equal0~3_combout\,
	combout => \inst7|Equal0~4_combout\);

-- Location: FF_X51_Y14_N27
\inst7|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|Add0~18_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(9));

-- Location: FF_X51_Y14_N25
\inst7|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|Add0~16_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(8));

-- Location: FF_X51_Y14_N23
\inst7|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|Add0~14_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(7));

-- Location: FF_X51_Y14_N5
\inst7|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|contador~11_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(6));

-- Location: LCCOMB_X51_Y14_N2
\inst7|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~5_combout\ = (!\inst7|contador\(7) & (!\inst7|contador\(6) & (!\inst7|contador\(9) & !\inst7|contador\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador\(7),
	datab => \inst7|contador\(6),
	datac => \inst7|contador\(9),
	datad => \inst7|contador\(8),
	combout => \inst7|Equal0~5_combout\);

-- Location: FF_X51_Y14_N11
\inst7|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|Add0~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(1));

-- Location: FF_X51_Y14_N19
\inst7|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|Add0~10_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(5));

-- Location: FF_X51_Y14_N17
\inst7|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|Add0~8_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(4));

-- Location: FF_X51_Y14_N15
\inst7|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|Add0~6_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(3));

-- Location: FF_X51_Y14_N13
\inst7|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|Add0~4_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|contador\(2));

-- Location: LCCOMB_X51_Y14_N0
\inst7|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~6_combout\ = (\inst7|contador\(3) & (\inst7|contador\(4) & (\inst7|contador\(2) & \inst7|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador\(3),
	datab => \inst7|contador\(4),
	datac => \inst7|contador\(2),
	datad => \inst7|contador\(5),
	combout => \inst7|Equal0~6_combout\);

-- Location: LCCOMB_X51_Y14_N6
\inst7|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~7_combout\ = (\inst7|Equal0~5_combout\ & (\inst7|Equal0~6_combout\ & (\inst7|contador\(1) & \inst7|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~5_combout\,
	datab => \inst7|Equal0~6_combout\,
	datac => \inst7|contador\(1),
	datad => \inst7|Equal0~4_combout\,
	combout => \inst7|Equal0~7_combout\);

-- Location: LCCOMB_X52_Y14_N20
\inst7|auxiliar~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|auxiliar~0_combout\ = \inst7|auxiliar~q\ $ (\inst7|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|auxiliar~q\,
	datac => \inst7|Equal0~7_combout\,
	combout => \inst7|auxiliar~0_combout\);

-- Location: LCCOMB_X24_Y17_N28
\inst2|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador~0_combout\ = (!\inst2|Equal0~5_combout\ & \inst2|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~5_combout\,
	datad => \inst2|Add0~30_combout\,
	combout => \inst2|contador~0_combout\);

-- Location: LCCOMB_X24_Y18_N6
\inst2|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador~6_combout\ = (\inst2|Add0~8_combout\ & !\inst2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~8_combout\,
	datad => \inst2|Equal0~5_combout\,
	combout => \inst2|contador~6_combout\);

-- Location: LCCOMB_X52_Y13_N24
\inst7|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|contador~0_combout\ = (!\inst7|Equal0~7_combout\ & \inst7|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Equal0~7_combout\,
	datad => \inst7|Add0~48_combout\,
	combout => \inst7|contador~0_combout\);

-- Location: LCCOMB_X52_Y13_N22
\inst7|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|contador~1_combout\ = (!\inst7|Equal0~7_combout\ & \inst7|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Equal0~7_combout\,
	datad => \inst7|Add0~44_combout\,
	combout => \inst7|contador~1_combout\);

-- Location: LCCOMB_X51_Y13_N26
\inst7|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|contador~2_combout\ = (!\inst7|Equal0~7_combout\ & \inst7|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Equal0~7_combout\,
	datad => \inst7|Add0~42_combout\,
	combout => \inst7|contador~2_combout\);

-- Location: LCCOMB_X52_Y13_N18
\inst7|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|contador~3_combout\ = (\inst7|Add0~40_combout\ & !\inst7|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add0~40_combout\,
	datad => \inst7|Equal0~7_combout\,
	combout => \inst7|contador~3_combout\);

-- Location: LCCOMB_X52_Y13_N12
\inst7|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|contador~4_combout\ = (!\inst7|Equal0~7_combout\ & \inst7|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Equal0~7_combout\,
	datad => \inst7|Add0~38_combout\,
	combout => \inst7|contador~4_combout\);

-- Location: LCCOMB_X51_Y13_N28
\inst7|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|contador~5_combout\ = (\inst7|Add0~36_combout\ & !\inst7|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~36_combout\,
	datad => \inst7|Equal0~7_combout\,
	combout => \inst7|contador~5_combout\);

-- Location: LCCOMB_X51_Y13_N30
\inst7|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|contador~6_combout\ = (\inst7|Add0~32_combout\ & !\inst7|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add0~32_combout\,
	datad => \inst7|Equal0~7_combout\,
	combout => \inst7|contador~6_combout\);

-- Location: LCCOMB_X52_Y13_N16
\inst7|contador~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|contador~7_combout\ = (!\inst7|Equal0~7_combout\ & \inst7|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Equal0~7_combout\,
	datad => \inst7|Add0~28_combout\,
	combout => \inst7|contador~7_combout\);

-- Location: LCCOMB_X52_Y13_N20
\inst7|contador~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|contador~8_combout\ = (\inst7|Add0~26_combout\ & !\inst7|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~26_combout\,
	datac => \inst7|Equal0~7_combout\,
	combout => \inst7|contador~8_combout\);

-- Location: LCCOMB_X52_Y13_N30
\inst7|contador~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|contador~9_combout\ = (\inst7|Add0~24_combout\ & !\inst7|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~24_combout\,
	datac => \inst7|Equal0~7_combout\,
	combout => \inst7|contador~9_combout\);

-- Location: LCCOMB_X52_Y13_N0
\inst7|contador~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|contador~10_combout\ = (\inst7|Add0~22_combout\ & !\inst7|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~22_combout\,
	datac => \inst7|Equal0~7_combout\,
	combout => \inst7|contador~10_combout\);

-- Location: LCCOMB_X51_Y14_N4
\inst7|contador~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|contador~11_combout\ = (\inst7|Add0~12_combout\ & !\inst7|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add0~12_combout\,
	datad => \inst7|Equal0~7_combout\,
	combout => \inst7|contador~11_combout\);

-- Location: IOIBUF_X27_Y0_N22
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

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

-- Location: CLKCTRL_G6
\inst7|auxiliar~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|auxiliar~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|auxiliar~clkctrl_outclk\);

-- Location: CLKCTRL_G7
\inst2|T~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|T~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|T~clkctrl_outclk\);

-- Location: CLKCTRL_G18
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X52_Y14_N26
\inst7|auxiliar~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|auxiliar~feeder_combout\ = \inst7|auxiliar~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|auxiliar~0_combout\,
	combout => \inst7|auxiliar~feeder_combout\);

-- Location: IOOBUF_X43_Y34_N23
\ren1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_estado_Actual.S0~q\,
	devoe => ww_devoe,
	o => \ren1~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\ren2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|estado_Actual.S1~q\,
	devoe => ww_devoe,
	o => \ren2~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\ren3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|estado_Actual.S2~q\,
	devoe => ww_devoe,
	o => \ren3~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\ren4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|estado_Actual.S3~q\,
	devoe => ww_devoe,
	o => \ren4~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\A~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|34~combout\,
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|35~2_combout\,
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|49~2_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\D~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|36~2_combout\,
	devoe => ww_devoe,
	o => \D~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\E~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|32~combout\,
	devoe => ww_devoe,
	o => \E~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\F~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|37~2_combout\,
	devoe => ww_devoe,
	o => \F~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\G~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|33~combout\,
	devoe => ww_devoe,
	o => \G~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\piso[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \piso[3]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\piso[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Selector0~0_combout\,
	devoe => ww_devoe,
	o => \piso[2]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\piso[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Selector1~1_combout\,
	devoe => ww_devoe,
	o => \piso[1]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\piso[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Selector2~2_combout\,
	devoe => ww_devoe,
	o => \piso[0]~output_o\);

-- Location: LCCOMB_X24_Y18_N4
\inst2|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador~4_combout\ = (\inst2|Add0~0_combout\ & !\inst2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~0_combout\,
	datad => \inst2|Equal0~5_combout\,
	combout => \inst2|contador~4_combout\);

-- Location: FF_X24_Y18_N5
\inst2|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(0));

-- Location: LCCOMB_X24_Y18_N16
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|contador\(1) & (!\inst2|Add0~1\)) # (!\inst2|contador\(1) & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst2|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: FF_X24_Y18_N17
\inst2|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(1));

-- Location: LCCOMB_X24_Y18_N18
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

-- Location: FF_X24_Y18_N19
\inst2|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(2));

-- Location: LCCOMB_X24_Y18_N20
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

-- Location: FF_X24_Y18_N21
\inst2|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(3));

-- Location: LCCOMB_X24_Y18_N24
\inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|contador\(5) & (!\inst2|Add0~9\)) # (!\inst2|contador\(5) & ((\inst2|Add0~9\) # (GND)))
-- \inst2|Add0~11\ = CARRY((!\inst2|Add0~9\) # (!\inst2|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: FF_X24_Y18_N25
\inst2|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(5));

-- Location: LCCOMB_X24_Y18_N26
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|contador\(6) & (\inst2|Add0~11\ $ (GND))) # (!\inst2|contador\(6) & (!\inst2|Add0~11\ & VCC))
-- \inst2|Add0~13\ = CARRY((\inst2|contador\(6) & !\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X24_Y18_N0
\inst2|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador~5_combout\ = (\inst2|Add0~12_combout\ & !\inst2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~12_combout\,
	datad => \inst2|Equal0~5_combout\,
	combout => \inst2|contador~5_combout\);

-- Location: FF_X24_Y18_N1
\inst2|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(6));

-- Location: LCCOMB_X24_Y18_N28
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

-- Location: FF_X24_Y18_N29
\inst2|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(7));

-- Location: LCCOMB_X24_Y18_N8
\inst2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (\inst2|contador\(4) & (!\inst2|contador\(7) & (!\inst2|contador\(5) & \inst2|contador\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(4),
	datab => \inst2|contador\(7),
	datac => \inst2|contador\(5),
	datad => \inst2|contador\(6),
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y18_N30
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

-- Location: LCCOMB_X25_Y18_N8
\inst2|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador~3_combout\ = (!\inst2|Equal0~5_combout\ & \inst2|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~5_combout\,
	datad => \inst2|Add0~16_combout\,
	combout => \inst2|contador~3_combout\);

-- Location: FF_X25_Y18_N9
\inst2|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(8));

-- Location: LCCOMB_X24_Y17_N0
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

-- Location: LCCOMB_X24_Y17_N20
\inst2|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador~2_combout\ = (\inst2|Add0~18_combout\ & !\inst2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~18_combout\,
	datad => \inst2|Equal0~5_combout\,
	combout => \inst2|contador~2_combout\);

-- Location: FF_X24_Y17_N21
\inst2|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(9));

-- Location: LCCOMB_X24_Y17_N2
\inst2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = (\inst2|contador\(10) & (\inst2|Add0~19\ $ (GND))) # (!\inst2|contador\(10) & (!\inst2|Add0~19\ & VCC))
-- \inst2|Add0~21\ = CARRY((\inst2|contador\(10) & !\inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(10),
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~20_combout\,
	cout => \inst2|Add0~21\);

-- Location: FF_X24_Y17_N3
\inst2|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(10));

-- Location: LCCOMB_X24_Y17_N4
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

-- Location: FF_X24_Y17_N5
\inst2|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(11));

-- Location: LCCOMB_X24_Y17_N8
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

-- Location: FF_X24_Y17_N9
\inst2|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(13));

-- Location: LCCOMB_X24_Y17_N24
\inst2|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador~1_combout\ = (\inst2|Add0~28_combout\ & !\inst2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~28_combout\,
	datad => \inst2|Equal0~5_combout\,
	combout => \inst2|contador~1_combout\);

-- Location: FF_X24_Y17_N25
\inst2|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(14));

-- Location: LCCOMB_X24_Y17_N22
\inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (!\inst2|contador\(12) & (!\inst2|contador\(11) & (!\inst2|contador\(13) & \inst2|contador\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(12),
	datab => \inst2|contador\(11),
	datac => \inst2|contador\(13),
	datad => \inst2|contador\(14),
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y17_N14
\inst2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~32_combout\ = (\inst2|contador\(16) & (\inst2|Add0~31\ $ (GND))) # (!\inst2|contador\(16) & (!\inst2|Add0~31\ & VCC))
-- \inst2|Add0~33\ = CARRY((\inst2|contador\(16) & !\inst2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(16),
	datad => VCC,
	cin => \inst2|Add0~31\,
	combout => \inst2|Add0~32_combout\,
	cout => \inst2|Add0~33\);

-- Location: LCCOMB_X24_Y17_N16
\inst2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~34_combout\ = (\inst2|contador\(17) & (!\inst2|Add0~33\)) # (!\inst2|contador\(17) & ((\inst2|Add0~33\) # (GND)))
-- \inst2|Add0~35\ = CARRY((!\inst2|Add0~33\) # (!\inst2|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(17),
	datad => VCC,
	cin => \inst2|Add0~33\,
	combout => \inst2|Add0~34_combout\,
	cout => \inst2|Add0~35\);

-- Location: FF_X24_Y17_N17
\inst2|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(17));

-- Location: FF_X24_Y17_N15
\inst2|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(16));

-- Location: LCCOMB_X24_Y17_N18
\inst2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~36_combout\ = \inst2|contador\(18) $ (!\inst2|Add0~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(18),
	cin => \inst2|Add0~35\,
	combout => \inst2|Add0~36_combout\);

-- Location: FF_X24_Y17_N19
\inst2|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(18));

-- Location: LCCOMB_X24_Y17_N30
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (\inst2|contador\(15) & (!\inst2|contador\(17) & (!\inst2|contador\(16) & !\inst2|contador\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(15),
	datab => \inst2|contador\(17),
	datac => \inst2|contador\(16),
	datad => \inst2|contador\(18),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y18_N2
\inst2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (\inst2|Equal0~2_combout\ & (\inst2|Equal0~3_combout\ & (\inst2|Equal0~1_combout\ & \inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~2_combout\,
	datab => \inst2|Equal0~3_combout\,
	datac => \inst2|Equal0~1_combout\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y18_N12
\inst2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~5_combout\ = (!\inst2|contador\(2) & (!\inst2|contador\(3) & (!\inst2|contador\(1) & \inst2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(2),
	datab => \inst2|contador\(3),
	datac => \inst2|contador\(1),
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Equal0~5_combout\);

-- Location: LCCOMB_X25_Y18_N18
\inst2|reloj_aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|reloj_aux~0_combout\ = \inst2|reloj_aux~q\ $ (\inst2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|reloj_aux~q\,
	datad => \inst2|Equal0~5_combout\,
	combout => \inst2|reloj_aux~0_combout\);

-- Location: LCCOMB_X25_Y18_N16
\inst2|reloj_aux~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|reloj_aux~feeder_combout\ = \inst2|reloj_aux~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|reloj_aux~0_combout\,
	combout => \inst2|reloj_aux~feeder_combout\);

-- Location: FF_X25_Y18_N17
\inst2|reloj_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|reloj_aux~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|reloj_aux~q\);

-- Location: CLKCTRL_G14
\inst2|reloj_aux~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|reloj_aux~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|reloj_aux~clkctrl_outclk\);

-- Location: LCCOMB_X47_Y33_N2
\inst2|estado_Actual.S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|estado_Actual.S1~0_combout\ = !\inst2|estado_Actual.S0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|estado_Actual.S0~q\,
	combout => \inst2|estado_Actual.S1~0_combout\);

-- Location: FF_X47_Y33_N3
\inst2|estado_Actual.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|reloj_aux~clkctrl_outclk\,
	d => \inst2|estado_Actual.S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|estado_Actual.S1~q\);

-- Location: LCCOMB_X47_Y33_N28
\inst2|estado_Actual.S2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|estado_Actual.S2~feeder_combout\ = \inst2|estado_Actual.S1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|estado_Actual.S1~q\,
	combout => \inst2|estado_Actual.S2~feeder_combout\);

-- Location: FF_X47_Y33_N29
\inst2|estado_Actual.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|reloj_aux~clkctrl_outclk\,
	d => \inst2|estado_Actual.S2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|estado_Actual.S2~q\);

-- Location: FF_X47_Y33_N15
\inst2|estado_Actual.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|reloj_aux~clkctrl_outclk\,
	asdata => \inst2|estado_Actual.S2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|estado_Actual.S3~q\);

-- Location: LCCOMB_X47_Y33_N20
\inst2|estado_Actual.S0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|estado_Actual.S0~0_combout\ = !\inst2|estado_Actual.S3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|estado_Actual.S3~q\,
	combout => \inst2|estado_Actual.S0~0_combout\);

-- Location: FF_X47_Y33_N21
\inst2|estado_Actual.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|reloj_aux~clkctrl_outclk\,
	d => \inst2|estado_Actual.S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|estado_Actual.S0~q\);

-- Location: IOIBUF_X51_Y34_N22
\col1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_col1,
	o => \col1~input_o\);

-- Location: LCCOMB_X47_Y33_N10
\inst2|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector2~3_combout\ = (\col2~input_o\ & (!\col1~input_o\ & (!\inst2|estado_Actual.S0~q\))) # (!\col2~input_o\ & (((\inst2|estado_Actual.S0~q\ & \inst2|estado_Actual.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col2~input_o\,
	datab => \col1~input_o\,
	datac => \inst2|estado_Actual.S0~q\,
	datad => \inst2|estado_Actual.S1~q\,
	combout => \inst2|Selector2~3_combout\);

-- Location: IOIBUF_X38_Y34_N1
\col3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_col3,
	o => \col3~input_o\);

-- Location: LCCOMB_X47_Y33_N14
\inst2|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector2~1_combout\ = (!\col2~input_o\ & \col3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col2~input_o\,
	datad => \col3~input_o\,
	combout => \inst2|Selector2~1_combout\);

-- Location: LCCOMB_X47_Y33_N24
\inst2|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector2~2_combout\ = (\col1~input_o\ & (((\inst2|estado_Actual.S2~q\) # (\inst2|estado_Actual.S3~q\)))) # (!\col1~input_o\ & (\inst2|Selector2~1_combout\ & ((\inst2|estado_Actual.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col1~input_o\,
	datab => \inst2|Selector2~1_combout\,
	datac => \inst2|estado_Actual.S2~q\,
	datad => \inst2|estado_Actual.S3~q\,
	combout => \inst2|Selector2~2_combout\);

-- Location: LCCOMB_X46_Y33_N30
\inst2|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector2~4_combout\ = (\inst2|Selector2~2_combout\) # ((\inst2|Selector2~0_combout\ & ((\inst2|Selector2~3_combout\) # (!\inst2|estado_Actual.S0~q\))) # (!\inst2|Selector2~0_combout\ & (!\inst2|estado_Actual.S0~q\ & \inst2|Selector2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector2~0_combout\,
	datab => \inst2|estado_Actual.S0~q\,
	datac => \inst2|Selector2~3_combout\,
	datad => \inst2|Selector2~2_combout\,
	combout => \inst2|Selector2~4_combout\);

-- Location: IOIBUF_X45_Y34_N8
\col4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_col4,
	o => \col4~input_o\);

-- Location: IOIBUF_X43_Y34_N15
\col2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_col2,
	o => \col2~input_o\);

-- Location: LCCOMB_X47_Y33_N16
\inst2|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector0~0_combout\ = (\col3~input_o\ & (((\inst2|estado_Actual.S2~q\)))) # (!\col3~input_o\ & ((\col2~input_o\ & ((\inst2|estado_Actual.S2~q\))) # (!\col2~input_o\ & (\col4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col3~input_o\,
	datab => \col4~input_o\,
	datac => \col2~input_o\,
	datad => \inst2|estado_Actual.S2~q\,
	combout => \inst2|Selector0~0_combout\);

-- Location: LCCOMB_X47_Y33_N26
\inst2|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector0~1_combout\ = (\col1~input_o\ & (((\inst2|estado_Actual.S3~q\)))) # (!\col1~input_o\ & ((\inst2|Selector0~0_combout\) # ((\inst2|Selector2~1_combout\ & \inst2|estado_Actual.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col1~input_o\,
	datab => \inst2|Selector2~1_combout\,
	datac => \inst2|estado_Actual.S3~q\,
	datad => \inst2|Selector0~0_combout\,
	combout => \inst2|Selector0~1_combout\);

-- Location: LCCOMB_X47_Y33_N4
\inst2|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector1~0_combout\ = (\inst2|estado_Actual.S1~q\ & ((\col2~input_o\) # ((\col3~input_o\) # (\col1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col2~input_o\,
	datab => \col3~input_o\,
	datac => \col1~input_o\,
	datad => \inst2|estado_Actual.S1~q\,
	combout => \inst2|Selector1~0_combout\);

-- Location: LCCOMB_X47_Y33_N8
\inst2|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector1~2_combout\ = (\col1~input_o\) # ((\inst2|Selector1~1_combout\ & ((\inst2|estado_Actual.S3~q\) # (!\col3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector1~1_combout\,
	datab => \col3~input_o\,
	datac => \col1~input_o\,
	datad => \inst2|estado_Actual.S3~q\,
	combout => \inst2|Selector1~2_combout\);

-- Location: LCCOMB_X47_Y33_N6
\inst2|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector1~3_combout\ = (\inst2|Selector1~0_combout\) # ((\inst2|Selector1~2_combout\ & ((\inst2|estado_Actual.S2~q\) # (\inst2|estado_Actual.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado_Actual.S2~q\,
	datab => \inst2|estado_Actual.S3~q\,
	datac => \inst2|Selector1~0_combout\,
	datad => \inst2|Selector1~2_combout\,
	combout => \inst2|Selector1~3_combout\);

-- Location: LCCOMB_X46_Y33_N24
\inst3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (\inst2|Selector3~3_combout\) # ((\inst2|Selector0~1_combout\) # ((\inst2|Selector1~3_combout\) # (\inst2|Selector2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector3~3_combout\,
	datab => \inst2|Selector0~1_combout\,
	datac => \inst2|Selector1~3_combout\,
	datad => \inst2|Selector2~4_combout\,
	combout => \inst3|Equal0~0_combout\);

-- Location: FF_X46_Y33_N9
\inst3|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|T~clkctrl_outclk\,
	asdata => \inst2|Selector2~4_combout\,
	sload => VCC,
	ena => \inst3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|aux\(1));

-- Location: FF_X46_Y33_N15
\inst3|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|T~clkctrl_outclk\,
	asdata => \inst2|Selector1~3_combout\,
	sload => VCC,
	ena => \inst3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|aux\(2));

-- Location: LCCOMB_X46_Y33_N2
\inst3|aux[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|aux[3]~feeder_combout\ = \inst2|Selector0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Selector0~1_combout\,
	combout => \inst3|aux[3]~feeder_combout\);

-- Location: FF_X46_Y33_N3
\inst3|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|T~clkctrl_outclk\,
	d => \inst3|aux[3]~feeder_combout\,
	ena => \inst3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|aux\(3));

-- Location: LCCOMB_X46_Y33_N0
\inst|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = (!\inst3|aux\(1) & (!\inst3|aux\(2) & \inst3|aux\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|aux\(1),
	datac => \inst3|aux\(2),
	datad => \inst3|aux\(3),
	combout => \inst|Equal2~0_combout\);

-- Location: LCCOMB_X47_Y33_N22
\inst2|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector3~2_combout\ = (\col1~input_o\ & (((!\inst2|estado_Actual.S2~q\ & \inst2|estado_Actual.S0~q\)))) # (!\col1~input_o\ & (\inst2|Selector2~1_combout\ & ((\inst2|estado_Actual.S2~q\) # (!\inst2|estado_Actual.S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col1~input_o\,
	datab => \inst2|Selector2~1_combout\,
	datac => \inst2|estado_Actual.S2~q\,
	datad => \inst2|estado_Actual.S0~q\,
	combout => \inst2|Selector3~2_combout\);

-- Location: LCCOMB_X47_Y33_N12
\inst2|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector3~0_combout\ = (\inst2|estado_Actual.S1~q\ & ((\col2~input_o\) # ((!\col3~input_o\ & \col4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col3~input_o\,
	datab => \col4~input_o\,
	datac => \col2~input_o\,
	datad => \inst2|estado_Actual.S1~q\,
	combout => \inst2|Selector3~0_combout\);

-- Location: LCCOMB_X46_Y33_N14
\inst2|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector2~0_combout\ = (!\col1~input_o\ & ((\col3~input_o\) # (\col4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col3~input_o\,
	datab => \col1~input_o\,
	datad => \col4~input_o\,
	combout => \inst2|Selector2~0_combout\);

-- Location: LCCOMB_X46_Y33_N8
\inst2|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector3~1_combout\ = (!\col2~input_o\ & (\inst2|estado_Actual.S3~q\ & \inst2|Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col2~input_o\,
	datab => \inst2|estado_Actual.S3~q\,
	datad => \inst2|Selector2~0_combout\,
	combout => \inst2|Selector3~1_combout\);

-- Location: LCCOMB_X46_Y33_N12
\inst2|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector3~3_combout\ = (\inst2|Selector3~1_combout\) # ((\col1~input_o\ & (!\inst2|Selector3~2_combout\)) # (!\col1~input_o\ & ((\inst2|Selector3~2_combout\) # (\inst2|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col1~input_o\,
	datab => \inst2|Selector3~2_combout\,
	datac => \inst2|Selector3~0_combout\,
	datad => \inst2|Selector3~1_combout\,
	combout => \inst2|Selector3~3_combout\);

-- Location: FF_X46_Y33_N17
\inst3|aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|T~clkctrl_outclk\,
	asdata => \inst2|Selector3~3_combout\,
	sload => VCC,
	ena => \inst3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|aux\(0));

-- Location: LCCOMB_X46_Y33_N20
\inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (!\inst3|aux\(3) & (\inst3|aux\(2) & (\inst3|aux\(1) & !\inst3|aux\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|aux\(3),
	datab => \inst3|aux\(2),
	datac => \inst3|aux\(1),
	datad => \inst3|aux\(0),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X46_Y33_N18
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst3|aux\(1) & (\inst3|aux\(0) & (\inst3|aux\(2) & !\inst3|aux\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|aux\(1),
	datab => \inst3|aux\(0),
	datac => \inst3|aux\(2),
	datad => \inst3|aux\(3),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y33_N10
\inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (\inst|estadoActual.piso1~q\ & (\inst|Equal1~0_combout\ & (\inst|estadoActual.piso2~q\))) # (!\inst|estadoActual.piso1~q\ & (((\inst|Equal1~0_combout\ & \inst|estadoActual.piso2~q\)) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estadoActual.piso1~q\,
	datab => \inst|Equal1~0_combout\,
	datac => \inst|estadoActual.piso2~q\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Selector4~0_combout\);

-- Location: LCCOMB_X46_Y33_N22
\inst|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector4~1_combout\ = (\inst|Selector4~0_combout\) # ((\inst|estadoActual.piso3~q\ & !\inst|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estadoActual.piso3~q\,
	datab => \inst|Equal2~0_combout\,
	datad => \inst|Selector4~0_combout\,
	combout => \inst|Selector4~1_combout\);

-- Location: FF_X46_Y33_N23
\inst|estadoActual.piso2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|auxiliar~clkctrl_outclk\,
	d => \inst|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estadoActual.piso2~q\);

-- Location: LCCOMB_X45_Y33_N10
\inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (\inst|estadoActual.piso1~q\ & (\inst|estadoActual.piso2~q\ & (!\inst|Equal1~0_combout\))) # (!\inst|estadoActual.piso1~q\ & ((\inst|Equal0~0_combout\) # ((\inst|estadoActual.piso2~q\ & !\inst|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estadoActual.piso1~q\,
	datab => \inst|estadoActual.piso2~q\,
	datac => \inst|Equal1~0_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Selector2~0_combout\);

-- Location: LCCOMB_X46_Y33_N28
\inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\inst|Equal2~0_combout\ & (\inst3|aux\(0) & ((\inst|estadoActual.piso3~q\) # (\inst|estadoActual.piso4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estadoActual.piso3~q\,
	datab => \inst|Equal2~0_combout\,
	datac => \inst|estadoActual.piso4~q\,
	datad => \inst3|aux\(0),
	combout => \inst|Selector0~0_combout\);

-- Location: FF_X46_Y33_N29
\inst|estadoActual.piso4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|auxiliar~clkctrl_outclk\,
	d => \inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estadoActual.piso4~q\);

-- Location: LCCOMB_X46_Y33_N6
\inst|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~1_combout\ = (\inst|Equal2~0_combout\ & ((\inst3|aux\(0)) # ((!\inst|estadoActual.piso3~q\ & !\inst|estadoActual.piso4~q\)))) # (!\inst|Equal2~0_combout\ & (((!\inst|estadoActual.piso4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|aux\(0),
	datab => \inst|Equal2~0_combout\,
	datac => \inst|estadoActual.piso3~q\,
	datad => \inst|estadoActual.piso4~q\,
	combout => \inst|Selector2~1_combout\);

-- Location: LCCOMB_X46_Y33_N26
\inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = ((\inst|estadoActual.piso2~q\ & (!\inst|Equal0~0_combout\ & !\inst|Equal1~0_combout\))) # (!\inst|Selector2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estadoActual.piso2~q\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Equal1~0_combout\,
	datad => \inst|Selector2~1_combout\,
	combout => \inst|Selector5~0_combout\);

-- Location: FF_X46_Y33_N27
\inst|estadoActual.piso3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|auxiliar~clkctrl_outclk\,
	d => \inst|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estadoActual.piso3~q\);

-- Location: LCCOMB_X46_Y33_N16
\inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\inst|Equal2~0_combout\ & (!\inst3|aux\(0) & ((\inst|estadoActual.piso4~q\) # (\inst|estadoActual.piso3~q\)))) # (!\inst|Equal2~0_combout\ & ((\inst|estadoActual.piso4~q\) # ((\inst|estadoActual.piso3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~0_combout\,
	datab => \inst|estadoActual.piso4~q\,
	datac => \inst3|aux\(0),
	datad => \inst|estadoActual.piso3~q\,
	combout => \inst|Selector1~0_combout\);

-- Location: LCCOMB_X45_Y33_N12
\inst|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector1~1_combout\ = (\inst|Selector1~0_combout\) # ((!\inst|Equal0~0_combout\ & ((\inst|estadoActual.piso2~q\) # (!\inst|estadoActual.piso1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estadoActual.piso1~q\,
	datab => \inst|Selector1~0_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|estadoActual.piso2~q\,
	combout => \inst|Selector1~1_combout\);

-- Location: LCCOMB_X45_Y33_N22
\inst9|34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|34~combout\ = (\inst|Selector0~0_combout\ & (!\inst|Selector2~0_combout\ & ((\inst|Selector2~1_combout\)))) # (!\inst|Selector0~0_combout\ & (!\inst|Selector1~1_combout\ & ((\inst|Selector2~0_combout\) # (!\inst|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector2~0_combout\,
	datab => \inst|Selector1~1_combout\,
	datac => \inst|Selector0~0_combout\,
	datad => \inst|Selector2~1_combout\,
	combout => \inst9|34~combout\);

-- Location: LCCOMB_X45_Y33_N24
\inst9|35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|35~2_combout\ = (\inst|Selector0~0_combout\ & (\inst|Selector1~1_combout\ $ (((\inst|Selector2~0_combout\) # (!\inst|Selector2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector2~0_combout\,
	datab => \inst|Selector1~1_combout\,
	datac => \inst|Selector0~0_combout\,
	datad => \inst|Selector2~1_combout\,
	combout => \inst9|35~2_combout\);

-- Location: LCCOMB_X45_Y33_N26
\inst9|49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|49~2_combout\ = (!\inst|Selector2~0_combout\ & (\inst|Selector1~1_combout\ & (!\inst|Selector0~0_combout\ & \inst|Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector2~0_combout\,
	datab => \inst|Selector1~1_combout\,
	datac => \inst|Selector0~0_combout\,
	datad => \inst|Selector2~1_combout\,
	combout => \inst9|49~2_combout\);

-- Location: LCCOMB_X45_Y33_N4
\inst9|36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|36~2_combout\ = (\inst|Selector1~1_combout\ & (\inst|Selector0~0_combout\ & ((\inst|Selector2~0_combout\) # (!\inst|Selector2~1_combout\)))) # (!\inst|Selector1~1_combout\ & (\inst|Selector0~0_combout\ $ (((\inst|Selector2~0_combout\) # 
-- (!\inst|Selector2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector2~0_combout\,
	datab => \inst|Selector1~1_combout\,
	datac => \inst|Selector0~0_combout\,
	datad => \inst|Selector2~1_combout\,
	combout => \inst9|36~2_combout\);

-- Location: LCCOMB_X45_Y33_N2
\inst9|32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|32~combout\ = (\inst|Selector2~0_combout\) # (((!\inst|Selector1~1_combout\ & \inst|Selector0~0_combout\)) # (!\inst|Selector2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector2~0_combout\,
	datab => \inst|Selector1~1_combout\,
	datac => \inst|Selector0~0_combout\,
	datad => \inst|Selector2~1_combout\,
	combout => \inst9|32~combout\);

-- Location: LCCOMB_X45_Y33_N20
\inst9|37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|37~2_combout\ = (\inst|Selector1~1_combout\ & ((\inst|Selector2~0_combout\) # ((!\inst|Selector2~1_combout\) # (!\inst|Selector0~0_combout\)))) # (!\inst|Selector1~1_combout\ & (!\inst|Selector0~0_combout\ & ((\inst|Selector2~0_combout\) # 
-- (!\inst|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector2~0_combout\,
	datab => \inst|Selector1~1_combout\,
	datac => \inst|Selector0~0_combout\,
	datad => \inst|Selector2~1_combout\,
	combout => \inst9|37~2_combout\);

-- Location: LCCOMB_X45_Y33_N18
\inst9|33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|33~combout\ = (\inst|Selector1~1_combout\ & (\inst|Selector0~0_combout\ & ((\inst|Selector2~0_combout\) # (!\inst|Selector2~1_combout\)))) # (!\inst|Selector1~1_combout\ & (((!\inst|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector2~0_combout\,
	datab => \inst|Selector1~1_combout\,
	datac => \inst|Selector0~0_combout\,
	datad => \inst|Selector2~1_combout\,
	combout => \inst9|33~combout\);

-- Location: LCCOMB_X45_Y33_N0
\inst|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~2_combout\ = (\inst|Selector2~0_combout\) # (!\inst|Selector2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector2~1_combout\,
	datad => \inst|Selector2~0_combout\,
	combout => \inst|Selector2~2_combout\);

ww_ren1 <= \ren1~output_o\;

ww_ren2 <= \ren2~output_o\;

ww_ren3 <= \ren3~output_o\;

ww_ren4 <= \ren4~output_o\;

ww_A <= \A~output_o\;

ww_B <= \B~output_o\;

ww_C <= \C~output_o\;

ww_D <= \D~output_o\;

ww_E <= \E~output_o\;

ww_F <= \F~output_o\;

ww_G <= \G~output_o\;

ww_piso(3) <= \piso[3]~output_o\;

ww_piso(2) <= \piso[2]~output_o\;

ww_piso(1) <= \piso[1]~output_o\;

ww_piso(0) <= \piso[0]~output_o\;
END structure;


