-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Tue Jan 14 11:58:09 2025
-- Host        : GBNicoArch running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/nicoth/projects/TurtleCore/ip_repo/src/turtle_top_level/ip/turtle_top_level_turtle_processing_un_0_0/turtle_top_level_turtle_processing_un_0_0_sim_netlist.vhdl
-- Design      : turtle_top_level_turtle_processing_un_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity turtle_top_level_turtle_processing_un_0_0_alu is
  port (
    data2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_registers_reg[0][3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_registers_reg[0][7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_registers[1][4]_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_registers_reg[1][7]_i_16\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_registers_reg[1][7]_i_16_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of turtle_top_level_turtle_processing_un_0_0_alu : entity is "alu";
end turtle_top_level_turtle_processing_un_0_0_alu;

architecture STRUCTURE of turtle_top_level_turtle_processing_un_0_0_alu is
  signal \s_result0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \s_result0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \s_result0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \s_result0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \s_result0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \s_result0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \s_result0_inferred__0/i__carry_n_3\ : STD_LOGIC;
begin
\s_registers[1][1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA55AA56AAAAAAAA"
    )
        port map (
      I0 => Q(3),
      I1 => \s_registers_reg[1][7]_i_16\(0),
      I2 => \s_registers_reg[1][7]_i_16\(1),
      I3 => \s_registers_reg[1][7]_i_16\(3),
      I4 => \s_registers_reg[1][7]_i_16\(2),
      I5 => \s_registers_reg[1][7]_i_16_0\(3),
      O => \s_registers_reg[0][3]\(3)
    );
\s_registers[1][1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA55AA56AAAAAAAA"
    )
        port map (
      I0 => Q(2),
      I1 => \s_registers_reg[1][7]_i_16\(0),
      I2 => \s_registers_reg[1][7]_i_16\(1),
      I3 => \s_registers_reg[1][7]_i_16\(3),
      I4 => \s_registers_reg[1][7]_i_16\(2),
      I5 => \s_registers_reg[1][7]_i_16_0\(2),
      O => \s_registers_reg[0][3]\(2)
    );
\s_registers[1][1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA55AA56AAAAAAAA"
    )
        port map (
      I0 => Q(1),
      I1 => \s_registers_reg[1][7]_i_16\(0),
      I2 => \s_registers_reg[1][7]_i_16\(1),
      I3 => \s_registers_reg[1][7]_i_16\(3),
      I4 => \s_registers_reg[1][7]_i_16\(2),
      I5 => \s_registers_reg[1][7]_i_16_0\(1),
      O => \s_registers_reg[0][3]\(1)
    );
\s_registers[1][1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555AA55A9"
    )
        port map (
      I0 => Q(0),
      I1 => \s_registers_reg[1][7]_i_16\(0),
      I2 => \s_registers_reg[1][7]_i_16\(1),
      I3 => \s_registers_reg[1][7]_i_16\(3),
      I4 => \s_registers_reg[1][7]_i_16\(2),
      I5 => \s_registers_reg[1][7]_i_16_0\(0),
      O => \s_registers_reg[0][3]\(0)
    );
\s_registers[1][7]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA55AA56AAAAAAAA"
    )
        port map (
      I0 => Q(7),
      I1 => \s_registers_reg[1][7]_i_16\(0),
      I2 => \s_registers_reg[1][7]_i_16\(1),
      I3 => \s_registers_reg[1][7]_i_16\(3),
      I4 => \s_registers_reg[1][7]_i_16\(2),
      I5 => \s_registers_reg[1][7]_i_16_0\(7),
      O => \s_registers_reg[0][7]\(3)
    );
\s_registers[1][7]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA55AA56AAAAAAAA"
    )
        port map (
      I0 => Q(6),
      I1 => \s_registers_reg[1][7]_i_16\(0),
      I2 => \s_registers_reg[1][7]_i_16\(1),
      I3 => \s_registers_reg[1][7]_i_16\(3),
      I4 => \s_registers_reg[1][7]_i_16\(2),
      I5 => \s_registers_reg[1][7]_i_16_0\(6),
      O => \s_registers_reg[0][7]\(2)
    );
\s_registers[1][7]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA55AA56AAAAAAAA"
    )
        port map (
      I0 => Q(5),
      I1 => \s_registers_reg[1][7]_i_16\(0),
      I2 => \s_registers_reg[1][7]_i_16\(1),
      I3 => \s_registers_reg[1][7]_i_16\(3),
      I4 => \s_registers_reg[1][7]_i_16\(2),
      I5 => \s_registers_reg[1][7]_i_16_0\(5),
      O => \s_registers_reg[0][7]\(1)
    );
\s_registers[1][7]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA55AA56AAAAAAAA"
    )
        port map (
      I0 => Q(4),
      I1 => \s_registers_reg[1][7]_i_16\(0),
      I2 => \s_registers_reg[1][7]_i_16\(1),
      I3 => \s_registers_reg[1][7]_i_16\(3),
      I4 => \s_registers_reg[1][7]_i_16\(2),
      I5 => \s_registers_reg[1][7]_i_16_0\(4),
      O => \s_registers_reg[0][7]\(0)
    );
\s_result0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_result0_inferred__0/i__carry_n_0\,
      CO(2) => \s_result0_inferred__0/i__carry_n_1\,
      CO(1) => \s_result0_inferred__0/i__carry_n_2\,
      CO(0) => \s_result0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => Q(3 downto 0),
      O(3 downto 0) => data2(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\s_result0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_result0_inferred__0/i__carry_n_0\,
      CO(3) => CO(0),
      CO(2) => \s_result0_inferred__0/i__carry__0_n_1\,
      CO(1) => \s_result0_inferred__0/i__carry__0_n_2\,
      CO(0) => \s_result0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(7 downto 4),
      O(3 downto 0) => data2(7 downto 4),
      S(3 downto 0) => \s_registers[1][4]_i_3\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity turtle_top_level_turtle_processing_un_0_0_counter_register is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_counter_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \i_data_bus[7]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_sequential_s_current_state_reg[2]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_counter : out STD_LOGIC_VECTOR ( 13 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_addr_reg[5]\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_addr_new_reg[13]\ : in STD_LOGIC;
    i_data_bus : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \s_addr_reg[5]_0\ : in STD_LOGIC;
    \s_addr_reg[5]_1\ : in STD_LOGIC;
    \s_counter_reg[15]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_counter_reg[15]_2\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_clk : in STD_LOGIC;
    \s_counter_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of turtle_top_level_turtle_processing_un_0_0_counter_register : entity is "counter_register";
end turtle_top_level_turtle_processing_un_0_0_counter_register;

architecture STRUCTURE of turtle_top_level_turtle_processing_un_0_0_counter_register is
  signal \s_addr[5]_i_3_n_0\ : STD_LOGIC;
  signal \s_counter_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \s_counter_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \s_counter_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \s_counter_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \^s_counter_reg[15]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \s_counter_reg[15]_i_4_n_2\ : STD_LOGIC;
  signal \s_counter_reg[15]_i_4_n_3\ : STD_LOGIC;
  signal \s_counter_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_counter_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \s_counter_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \s_counter_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \s_counter_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \s_counter_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \s_counter_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \s_counter_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \NLW_s_counter_reg[15]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_s_counter_reg[15]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_s_counter_reg[4]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of o_rw_INST_0_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_addr_new[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_addr_new[13]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_addr_new[14]_i_1\ : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \s_counter_reg[12]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \s_counter_reg[12]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \s_counter_reg[15]_i_4\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \s_counter_reg[15]_i_4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \s_counter_reg[4]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \s_counter_reg[4]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \s_counter_reg[8]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \s_counter_reg[8]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  \s_counter_reg[15]_0\(15 downto 0) <= \^s_counter_reg[15]_0\(15 downto 0);
o_rw_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(1),
      O => \FSM_sequential_s_current_state_reg[2]\
    );
\s_addr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8F00"
    )
        port map (
      I0 => Q(1),
      I1 => \^s_counter_reg[15]_0\(5),
      I2 => Q(2),
      I3 => \s_addr_reg[5]\,
      I4 => \s_addr[5]_i_3_n_0\,
      O => D(0)
    );
\s_addr[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA000000A300"
    )
        port map (
      I0 => \^s_counter_reg[15]_0\(5),
      I1 => \s_addr_reg[5]_0\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \s_addr_reg[5]_1\,
      O => \s_addr[5]_i_3_n_0\
    );
\s_addr_new[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020FFEF"
    )
        port map (
      I0 => i_data_bus(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => \^s_counter_reg[15]_0\(0),
      O => \i_data_bus[7]\(0)
    );
\s_addr_new[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => O(0),
      I1 => \s_addr_new_reg[13]\,
      I2 => i_data_bus(2),
      O => \i_data_bus[7]\(2)
    );
\s_addr_new[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => O(1),
      I1 => \s_addr_new_reg[13]\,
      I2 => i_data_bus(3),
      O => \i_data_bus[7]\(3)
    );
\s_addr_new[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      O => E(0)
    );
\s_addr_new[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => O(2),
      I1 => \s_addr_new_reg[13]\,
      I2 => i_data_bus(4),
      O => \i_data_bus[7]\(4)
    );
\s_addr_new[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFEFFFEF0020"
    )
        port map (
      I0 => i_data_bus(1),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => \^s_counter_reg[15]_0\(0),
      I5 => \^s_counter_reg[15]_0\(1),
      O => \i_data_bus[7]\(1)
    );
\s_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_counter_reg[15]_1\(0),
      CLR => \s_counter_reg[0]_0\,
      D => \s_counter_reg[15]_2\(0),
      Q => \^s_counter_reg[15]_0\(0)
    );
\s_counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_counter_reg[15]_1\(0),
      CLR => \s_counter_reg[0]_0\,
      D => \s_counter_reg[15]_2\(10),
      Q => \^s_counter_reg[15]_0\(10)
    );
\s_counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_counter_reg[15]_1\(0),
      CLR => \s_counter_reg[0]_0\,
      D => \s_counter_reg[15]_2\(11),
      Q => \^s_counter_reg[15]_0\(11)
    );
\s_counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_counter_reg[15]_1\(0),
      CLR => \s_counter_reg[0]_0\,
      D => \s_counter_reg[15]_2\(12),
      Q => \^s_counter_reg[15]_0\(12)
    );
\s_counter_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_counter_reg[8]_i_2_n_0\,
      CO(3) => \s_counter_reg[12]_i_2_n_0\,
      CO(2) => \s_counter_reg[12]_i_2_n_1\,
      CO(1) => \s_counter_reg[12]_i_2_n_2\,
      CO(0) => \s_counter_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_counter(10 downto 7),
      S(3 downto 0) => \^s_counter_reg[15]_0\(12 downto 9)
    );
\s_counter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_counter_reg[15]_1\(0),
      CLR => \s_counter_reg[0]_0\,
      D => \s_counter_reg[15]_2\(13),
      Q => \^s_counter_reg[15]_0\(13)
    );
\s_counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_counter_reg[15]_1\(0),
      CLR => \s_counter_reg[0]_0\,
      D => \s_counter_reg[15]_2\(14),
      Q => \^s_counter_reg[15]_0\(14)
    );
\s_counter_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_counter_reg[15]_1\(0),
      CLR => \s_counter_reg[0]_0\,
      D => \s_counter_reg[15]_2\(15),
      Q => \^s_counter_reg[15]_0\(15)
    );
\s_counter_reg[15]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_counter_reg[12]_i_2_n_0\,
      CO(3 downto 2) => \NLW_s_counter_reg[15]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \s_counter_reg[15]_i_4_n_2\,
      CO(0) => \s_counter_reg[15]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_s_counter_reg[15]_i_4_O_UNCONNECTED\(3),
      O(2 downto 0) => s_counter(13 downto 11),
      S(3) => '0',
      S(2 downto 0) => \^s_counter_reg[15]_0\(15 downto 13)
    );
\s_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_counter_reg[15]_1\(0),
      CLR => \s_counter_reg[0]_0\,
      D => \s_counter_reg[15]_2\(1),
      Q => \^s_counter_reg[15]_0\(1)
    );
\s_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_counter_reg[15]_1\(0),
      CLR => \s_counter_reg[0]_0\,
      D => \s_counter_reg[15]_2\(2),
      Q => \^s_counter_reg[15]_0\(2)
    );
\s_counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_counter_reg[15]_1\(0),
      CLR => \s_counter_reg[0]_0\,
      D => \s_counter_reg[15]_2\(3),
      Q => \^s_counter_reg[15]_0\(3)
    );
\s_counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_counter_reg[15]_1\(0),
      CLR => \s_counter_reg[0]_0\,
      D => \s_counter_reg[15]_2\(4),
      Q => \^s_counter_reg[15]_0\(4)
    );
\s_counter_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_counter_reg[4]_i_2_n_0\,
      CO(2) => \s_counter_reg[4]_i_2_n_1\,
      CO(1) => \s_counter_reg[4]_i_2_n_2\,
      CO(0) => \s_counter_reg[4]_i_2_n_3\,
      CYINIT => \^s_counter_reg[15]_0\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => s_counter(2 downto 0),
      O(0) => \NLW_s_counter_reg[4]_i_2_O_UNCONNECTED\(0),
      S(3 downto 0) => \^s_counter_reg[15]_0\(4 downto 1)
    );
\s_counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_counter_reg[15]_1\(0),
      CLR => \s_counter_reg[0]_0\,
      D => \s_counter_reg[15]_2\(5),
      Q => \^s_counter_reg[15]_0\(5)
    );
\s_counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_counter_reg[15]_1\(0),
      CLR => \s_counter_reg[0]_0\,
      D => \s_counter_reg[15]_2\(6),
      Q => \^s_counter_reg[15]_0\(6)
    );
\s_counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_counter_reg[15]_1\(0),
      CLR => \s_counter_reg[0]_0\,
      D => \s_counter_reg[15]_2\(7),
      Q => \^s_counter_reg[15]_0\(7)
    );
\s_counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_counter_reg[15]_1\(0),
      CLR => \s_counter_reg[0]_0\,
      D => \s_counter_reg[15]_2\(8),
      Q => \^s_counter_reg[15]_0\(8)
    );
\s_counter_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_counter_reg[4]_i_2_n_0\,
      CO(3) => \s_counter_reg[8]_i_2_n_0\,
      CO(2) => \s_counter_reg[8]_i_2_n_1\,
      CO(1) => \s_counter_reg[8]_i_2_n_2\,
      CO(0) => \s_counter_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_counter(6 downto 3),
      S(3 downto 0) => \^s_counter_reg[15]_0\(8 downto 5)
    );
\s_counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_counter_reg[15]_1\(0),
      CLR => \s_counter_reg[0]_0\,
      D => \s_counter_reg[15]_2\(9),
      Q => \^s_counter_reg[15]_0\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \turtle_top_level_turtle_processing_un_0_0_counter_register__parameterized1\ is
  port (
    s_counter_reg : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_counter_reg[3]_0\ : out STD_LOGIC;
    \s_counter_reg[4]_0\ : out STD_LOGIC;
    \s_counter_reg[7]_0\ : out STD_LOGIC;
    \s_counter_reg[5]_0\ : out STD_LOGIC;
    \s_ir_reg[3]\ : out STD_LOGIC;
    \s_counter_reg[2]_0\ : out STD_LOGIC;
    \s_counter_reg[3]_1\ : out STD_LOGIC;
    \s_counter_reg[3]_2\ : out STD_LOGIC;
    \s_counter_reg[5]_1\ : out STD_LOGIC;
    s_stack_en : in STD_LOGIC;
    i_clk : in STD_LOGIC;
    \s_counter_reg[7]_1\ : in STD_LOGIC;
    \s_counter_reg[4]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_addr_reg[2]_i_4_0\ : in STD_LOGIC;
    \s_addr_reg[2]_i_4_1\ : in STD_LOGIC;
    \s_addr_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_addr_reg[2]\ : in STD_LOGIC;
    \s_addr_reg[2]_i_4_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \turtle_top_level_turtle_processing_un_0_0_counter_register__parameterized1\ : entity is "counter_register";
end \turtle_top_level_turtle_processing_un_0_0_counter_register__parameterized1\;

architecture STRUCTURE of \turtle_top_level_turtle_processing_un_0_0_counter_register__parameterized1\ is
  signal minusOp : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \s_addr[2]_i_6_n_0\ : STD_LOGIC;
  signal \s_addr[2]_i_7_n_0\ : STD_LOGIC;
  signal \s_counter0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \s_counter0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \s_counter0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \s_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \s_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \s_counter0_carry__0_n_5\ : STD_LOGIC;
  signal \s_counter0_carry__0_n_6\ : STD_LOGIC;
  signal \s_counter0_carry__0_n_7\ : STD_LOGIC;
  signal s_counter0_carry_i_1_n_0 : STD_LOGIC;
  signal s_counter0_carry_i_2_n_0 : STD_LOGIC;
  signal s_counter0_carry_i_3_n_0 : STD_LOGIC;
  signal s_counter0_carry_i_4_n_0 : STD_LOGIC;
  signal s_counter0_carry_n_0 : STD_LOGIC;
  signal s_counter0_carry_n_1 : STD_LOGIC;
  signal s_counter0_carry_n_2 : STD_LOGIC;
  signal s_counter0_carry_n_3 : STD_LOGIC;
  signal s_counter0_carry_n_4 : STD_LOGIC;
  signal s_counter0_carry_n_5 : STD_LOGIC;
  signal s_counter0_carry_n_6 : STD_LOGIC;
  signal s_counter0_carry_n_7 : STD_LOGIC;
  signal \^s_counter_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_counter_reg[5]_0\ : STD_LOGIC;
  signal \NLW_s_counter0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_s_counter0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_addr[3]_i_8\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s_addr[4]_i_2\ : label is "soft_lutpair37";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of s_counter0_carry : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of s_counter0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \s_counter0_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \s_counter0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  s_counter_reg(7 downto 0) <= \^s_counter_reg\(7 downto 0);
  \s_counter_reg[5]_0\ <= \^s_counter_reg[5]_0\;
\s_addr[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9FFA900"
    )
        port map (
      I0 => \^s_counter_reg\(2),
      I1 => \^s_counter_reg\(0),
      I2 => \^s_counter_reg\(1),
      I3 => \s_addr_reg[2]\,
      I4 => \s_addr_reg[3]\(0),
      O => \s_counter_reg[2]_0\
    );
\s_addr[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4447444477747777"
    )
        port map (
      I0 => \s_addr_reg[3]\(0),
      I1 => \s_addr_reg[2]_i_4_2\,
      I2 => \^s_counter_reg\(0),
      I3 => \^s_counter_reg\(1),
      I4 => Q(0),
      I5 => \^s_counter_reg\(2),
      O => \s_addr[2]_i_6_n_0\
    );
\s_addr[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00005600FFFF56FF"
    )
        port map (
      I0 => \^s_counter_reg\(2),
      I1 => \^s_counter_reg\(0),
      I2 => \^s_counter_reg\(1),
      I3 => \s_addr_reg[2]_i_4_0\,
      I4 => \s_addr_reg[2]_i_4_1\,
      I5 => \s_addr_reg[3]\(0),
      O => \s_addr[2]_i_7_n_0\
    );
\s_addr[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA9FFFFAAA90000"
    )
        port map (
      I0 => \^s_counter_reg\(3),
      I1 => \^s_counter_reg\(2),
      I2 => \^s_counter_reg\(1),
      I3 => \^s_counter_reg\(0),
      I4 => \s_addr_reg[2]\,
      I5 => \s_addr_reg[3]\(1),
      O => \s_counter_reg[3]_1\
    );
\s_addr[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5556"
    )
        port map (
      I0 => \^s_counter_reg\(3),
      I1 => \^s_counter_reg\(2),
      I2 => \^s_counter_reg\(1),
      I3 => \^s_counter_reg\(0),
      O => \s_counter_reg[3]_0\
    );
\s_addr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555556"
    )
        port map (
      I0 => \^s_counter_reg\(4),
      I1 => \^s_counter_reg\(3),
      I2 => \^s_counter_reg\(0),
      I3 => \^s_counter_reg\(1),
      I4 => \^s_counter_reg\(2),
      O => \s_counter_reg[4]_0\
    );
\s_addr[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000FFFEFFFF"
    )
        port map (
      I0 => \^s_counter_reg\(3),
      I1 => \^s_counter_reg\(0),
      I2 => \^s_counter_reg\(1),
      I3 => \^s_counter_reg\(2),
      I4 => Q(0),
      I5 => \^s_counter_reg\(4),
      O => \s_counter_reg[3]_2\
    );
\s_addr[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555556"
    )
        port map (
      I0 => \^s_counter_reg\(5),
      I1 => \^s_counter_reg\(2),
      I2 => \^s_counter_reg\(1),
      I3 => \^s_counter_reg\(0),
      I4 => \^s_counter_reg\(3),
      I5 => \^s_counter_reg\(4),
      O => \s_counter_reg[5]_1\
    );
\s_addr[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^s_counter_reg\(5),
      I1 => \^s_counter_reg\(2),
      I2 => \^s_counter_reg\(1),
      I3 => \^s_counter_reg\(0),
      I4 => \^s_counter_reg\(3),
      I5 => \^s_counter_reg\(4),
      O => \^s_counter_reg[5]_0\
    );
\s_addr[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => \^s_counter_reg\(7),
      I1 => \^s_counter_reg\(6),
      I2 => \^s_counter_reg[5]_0\,
      O => \s_counter_reg[7]_0\
    );
\s_addr_reg[2]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_addr[2]_i_6_n_0\,
      I1 => \s_addr[2]_i_7_n_0\,
      O => \s_ir_reg[3]\,
      S => Q(1)
    );
s_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => s_counter0_carry_n_0,
      CO(2) => s_counter0_carry_n_1,
      CO(1) => s_counter0_carry_n_2,
      CO(0) => s_counter0_carry_n_3,
      CYINIT => \^s_counter_reg\(0),
      DI(3 downto 1) => \^s_counter_reg\(3 downto 1),
      DI(0) => s_counter0_carry_i_1_n_0,
      O(3) => s_counter0_carry_n_4,
      O(2) => s_counter0_carry_n_5,
      O(1) => s_counter0_carry_n_6,
      O(0) => s_counter0_carry_n_7,
      S(3) => s_counter0_carry_i_2_n_0,
      S(2) => s_counter0_carry_i_3_n_0,
      S(1) => s_counter0_carry_i_4_n_0,
      S(0) => \s_counter_reg[4]_1\(0)
    );
\s_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => s_counter0_carry_n_0,
      CO(3 downto 2) => \NLW_s_counter0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \s_counter0_carry__0_n_2\,
      CO(0) => \s_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \^s_counter_reg\(5 downto 4),
      O(3) => \NLW_s_counter0_carry__0_O_UNCONNECTED\(3),
      O(2) => \s_counter0_carry__0_n_5\,
      O(1) => \s_counter0_carry__0_n_6\,
      O(0) => \s_counter0_carry__0_n_7\,
      S(3) => '0',
      S(2) => \s_counter0_carry__0_i_1_n_0\,
      S(1) => \s_counter0_carry__0_i_2_n_0\,
      S(0) => \s_counter0_carry__0_i_3_n_0\
    );
\s_counter0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^s_counter_reg\(6),
      I1 => \^s_counter_reg\(7),
      O => \s_counter0_carry__0_i_1_n_0\
    );
\s_counter0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^s_counter_reg\(5),
      I1 => \^s_counter_reg\(6),
      O => \s_counter0_carry__0_i_2_n_0\
    );
\s_counter0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^s_counter_reg\(4),
      I1 => \^s_counter_reg\(5),
      O => \s_counter0_carry__0_i_3_n_0\
    );
s_counter0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_counter_reg\(1),
      O => s_counter0_carry_i_1_n_0
    );
s_counter0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^s_counter_reg\(3),
      I1 => \^s_counter_reg\(4),
      O => s_counter0_carry_i_2_n_0
    );
s_counter0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^s_counter_reg\(2),
      I1 => \^s_counter_reg\(3),
      O => s_counter0_carry_i_3_n_0
    );
s_counter0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^s_counter_reg\(1),
      I1 => \^s_counter_reg\(2),
      O => s_counter0_carry_i_4_n_0
    );
\s_counter[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_counter_reg\(0),
      O => minusOp(0)
    );
\s_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_stack_en,
      CLR => \s_counter_reg[7]_1\,
      D => minusOp(0),
      Q => \^s_counter_reg\(0)
    );
\s_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_stack_en,
      CLR => \s_counter_reg[7]_1\,
      D => s_counter0_carry_n_7,
      Q => \^s_counter_reg\(1)
    );
\s_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_stack_en,
      CLR => \s_counter_reg[7]_1\,
      D => s_counter0_carry_n_6,
      Q => \^s_counter_reg\(2)
    );
\s_counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_stack_en,
      CLR => \s_counter_reg[7]_1\,
      D => s_counter0_carry_n_5,
      Q => \^s_counter_reg\(3)
    );
\s_counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_stack_en,
      CLR => \s_counter_reg[7]_1\,
      D => s_counter0_carry_n_4,
      Q => \^s_counter_reg\(4)
    );
\s_counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_stack_en,
      CLR => \s_counter_reg[7]_1\,
      D => \s_counter0_carry__0_n_7\,
      Q => \^s_counter_reg\(5)
    );
\s_counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_stack_en,
      CLR => \s_counter_reg[7]_1\,
      D => \s_counter0_carry__0_n_6\,
      Q => \^s_counter_reg\(6)
    );
\s_counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_stack_en,
      CLR => \s_counter_reg[7]_1\,
      D => \s_counter0_carry__0_n_5\,
      Q => \^s_counter_reg\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity turtle_top_level_turtle_processing_un_0_0_instruction_register is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \s_registers_reg[1][7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_ir_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_ir_reg[7]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_ir_reg[0]_0\ : out STD_LOGIC;
    \s_ir_reg[5]_0\ : out STD_LOGIC;
    o_rw : out STD_LOGIC;
    \s_counter_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_ir_reg[5]_1\ : out STD_LOGIC;
    \s_ir_reg[7]_2\ : out STD_LOGIC;
    \s_ir_reg[4]_0\ : out STD_LOGIC;
    o_data_bus : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_ir_reg[7]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_carry0 : out STD_LOGIC;
    \FSM_sequential_s_current_state_reg[2]\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \s_ir_reg[5]_2\ : out STD_LOGIC;
    \s_ir_reg[7]_4\ : out STD_LOGIC;
    \FSM_sequential_s_current_state_reg[0]\ : out STD_LOGIC;
    \i_data_bus[7]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \s_ir_reg[1]_0\ : out STD_LOGIC;
    s_stack_en : out STD_LOGIC;
    \i_data_bus[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_sequential_s_current_state_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \i_data_bus[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_ir_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_ir_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_registers_reg[0][7]\ : out STD_LOGIC;
    \s_ir_reg[4]_1\ : out STD_LOGIC;
    \s_ir_reg[6]_0\ : out STD_LOGIC;
    s_negative_reg : out STD_LOGIC;
    s_zero_reg : out STD_LOGIC;
    \s_registers[1][7]_i_8\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_registers[1][7]_i_8_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_sequential_s_current_state_reg[2]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_addr_reg[1]\ : in STD_LOGIC;
    s_counter_reg : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \o_data_bus[7]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    o_rw_0 : in STD_LOGIC;
    \s_registers_reg[1][5]\ : in STD_LOGIC;
    data2 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_registers_reg[1][5]_0\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_addr_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \s_addr_reg[14]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_addr_reg[7]\ : in STD_LOGIC;
    \s_addr_reg[7]_0\ : in STD_LOGIC;
    \s_addr_reg[6]\ : in STD_LOGIC;
    \s_addr_reg[8]\ : in STD_LOGIC;
    \s_addr_reg[0]\ : in STD_LOGIC;
    \s_addr_reg[2]\ : in STD_LOGIC;
    \s_addr_reg[2]_0\ : in STD_LOGIC;
    \s_addr_reg[3]\ : in STD_LOGIC;
    \s_addr_reg[4]\ : in STD_LOGIC;
    s_counter : in STD_LOGIC_VECTOR ( 14 downto 0 );
    i_data_bus : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_addr[4]_i_3_0\ : in STD_LOGIC;
    \s_addr[3]_i_6_0\ : in STD_LOGIC;
    \s_addr[5]_i_2_0\ : in STD_LOGIC;
    plusOp : in STD_LOGIC_VECTOR ( 4 downto 0 );
    o_data_bus_0_sp_1 : in STD_LOGIC;
    o_data_bus_1_sp_1 : in STD_LOGIC;
    \s_registers_reg[1][2]\ : in STD_LOGIC;
    \s_registers_reg[1][3]\ : in STD_LOGIC;
    \s_registers_reg[1][4]\ : in STD_LOGIC;
    \s_registers_reg[1][5]_1\ : in STD_LOGIC;
    o_data_bus_6_sp_1 : in STD_LOGIC;
    \o_data_bus[7]_0\ : in STD_LOGIC;
    \s_registers_reg[1][3]_0\ : in STD_LOGIC;
    \s_registers_reg[1][2]_0\ : in STD_LOGIC;
    \s_registers_reg[1][4]_0\ : in STD_LOGIC;
    \s_registers_reg[1][6]\ : in STD_LOGIC;
    \s_registers_reg[1][7]_0\ : in STD_LOGIC;
    s_wait_for_starting_edge : in STD_LOGIC;
    s_zero : in STD_LOGIC;
    s_negative : in STD_LOGIC;
    s_overflow : in STD_LOGIC;
    s_carry : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_clk : in STD_LOGIC;
    \s_ir_reg[0]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of turtle_top_level_turtle_processing_un_0_0_instruction_register : entity is "instruction_register";
end turtle_top_level_turtle_processing_un_0_0_instruction_register;

architecture STRUCTURE of turtle_top_level_turtle_processing_un_0_0_instruction_register is
  signal \FSM_sequential_s_current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_current_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^i_data_bus[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \o_data_bus[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_data_bus[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_data_bus[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_data_bus[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_data_bus[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_data_bus[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_data_bus[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_data_bus[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_data_bus[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \o_data_bus[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal o_data_bus_0_sn_1 : STD_LOGIC;
  signal o_data_bus_1_sn_1 : STD_LOGIC;
  signal o_data_bus_6_sn_1 : STD_LOGIC;
  signal \s_addr[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_addr[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_addr[0]_i_5_n_0\ : STD_LOGIC;
  signal \s_addr[0]_i_6_n_0\ : STD_LOGIC;
  signal \s_addr[10]_i_2_n_0\ : STD_LOGIC;
  signal \s_addr[12]_i_2_n_0\ : STD_LOGIC;
  signal \s_addr[13]_i_2_n_0\ : STD_LOGIC;
  signal \s_addr[13]_i_3_n_0\ : STD_LOGIC;
  signal \s_addr[14]_i_2_n_0\ : STD_LOGIC;
  signal \s_addr[15]_i_5_n_0\ : STD_LOGIC;
  signal \s_addr[15]_i_6_n_0\ : STD_LOGIC;
  signal \s_addr[15]_i_7_n_0\ : STD_LOGIC;
  signal \s_addr[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_addr[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_addr[1]_i_5_n_0\ : STD_LOGIC;
  signal \s_addr[1]_i_6_n_0\ : STD_LOGIC;
  signal \s_addr[1]_i_7_n_0\ : STD_LOGIC;
  signal \s_addr[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_addr[2]_i_5_n_0\ : STD_LOGIC;
  signal \s_addr[2]_i_8_n_0\ : STD_LOGIC;
  signal \s_addr[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_addr[3]_i_4_n_0\ : STD_LOGIC;
  signal \s_addr[3]_i_5_n_0\ : STD_LOGIC;
  signal \s_addr[3]_i_6_n_0\ : STD_LOGIC;
  signal \s_addr[3]_i_7_n_0\ : STD_LOGIC;
  signal \s_addr[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_addr[4]_i_4_n_0\ : STD_LOGIC;
  signal \s_addr[4]_i_5_n_0\ : STD_LOGIC;
  signal \s_addr[4]_i_6_n_0\ : STD_LOGIC;
  signal \s_addr[4]_i_7_n_0\ : STD_LOGIC;
  signal \s_addr[5]_i_4_n_0\ : STD_LOGIC;
  signal \s_addr[5]_i_5_n_0\ : STD_LOGIC;
  signal \s_addr[5]_i_6_n_0\ : STD_LOGIC;
  signal \s_addr[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_addr[6]_i_3_n_0\ : STD_LOGIC;
  signal \s_addr[6]_i_5_n_0\ : STD_LOGIC;
  signal \s_addr[6]_i_6_n_0\ : STD_LOGIC;
  signal \s_addr[6]_i_7_n_0\ : STD_LOGIC;
  signal \s_addr[6]_i_8_n_0\ : STD_LOGIC;
  signal \s_addr[7]_i_10_n_0\ : STD_LOGIC;
  signal \s_addr[7]_i_11_n_0\ : STD_LOGIC;
  signal \s_addr[7]_i_12_n_0\ : STD_LOGIC;
  signal \s_addr[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_addr[7]_i_6_n_0\ : STD_LOGIC;
  signal \s_addr[7]_i_7_n_0\ : STD_LOGIC;
  signal \s_addr[7]_i_8_n_0\ : STD_LOGIC;
  signal \s_addr[7]_i_9_n_0\ : STD_LOGIC;
  signal s_counter0_carry_i_6_n_0 : STD_LOGIC;
  signal \s_counter[15]_i_10_n_0\ : STD_LOGIC;
  signal \s_counter[15]_i_11_n_0\ : STD_LOGIC;
  signal \s_counter[15]_i_3_n_0\ : STD_LOGIC;
  signal \s_counter[15]_i_6_n_0\ : STD_LOGIC;
  signal \s_counter[15]_i_7_n_0\ : STD_LOGIC;
  signal \s_counter[15]_i_8_n_0\ : STD_LOGIC;
  signal \s_counter[15]_i_9_n_0\ : STD_LOGIC;
  signal \s_counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_counter_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \^s_ir_reg[0]_0\ : STD_LOGIC;
  signal \^s_ir_reg[1]_0\ : STD_LOGIC;
  signal \^s_ir_reg[5]_0\ : STD_LOGIC;
  signal \^s_ir_reg[5]_1\ : STD_LOGIC;
  signal \^s_ir_reg[5]_2\ : STD_LOGIC;
  signal \^s_ir_reg[7]_2\ : STD_LOGIC;
  signal \^s_ir_reg[7]_4\ : STD_LOGIC;
  signal \s_ir_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_ir_reg_n_0_[2]\ : STD_LOGIC;
  signal s_is_loading : STD_LOGIC;
  signal s_negative0 : STD_LOGIC;
  signal \s_registers[1][0]_i_2_n_0\ : STD_LOGIC;
  signal \s_registers[1][0]_i_3_n_0\ : STD_LOGIC;
  signal \s_registers[1][0]_i_4_n_0\ : STD_LOGIC;
  signal \s_registers[1][0]_i_5_n_0\ : STD_LOGIC;
  signal \s_registers[1][0]_i_6_n_0\ : STD_LOGIC;
  signal \s_registers[1][0]_i_7_n_0\ : STD_LOGIC;
  signal \s_registers[1][0]_i_8_n_0\ : STD_LOGIC;
  signal \s_registers[1][1]_i_2_n_0\ : STD_LOGIC;
  signal \s_registers[1][1]_i_3_n_0\ : STD_LOGIC;
  signal \s_registers[1][1]_i_4_n_0\ : STD_LOGIC;
  signal \s_registers[1][1]_i_5_n_0\ : STD_LOGIC;
  signal \s_registers[1][1]_i_6_n_0\ : STD_LOGIC;
  signal \s_registers[1][1]_i_7_n_0\ : STD_LOGIC;
  signal \s_registers[1][1]_i_9_n_0\ : STD_LOGIC;
  signal \s_registers[1][2]_i_4_n_0\ : STD_LOGIC;
  signal \s_registers[1][2]_i_7_n_0\ : STD_LOGIC;
  signal \s_registers[1][3]_i_4_n_0\ : STD_LOGIC;
  signal \s_registers[1][3]_i_7_n_0\ : STD_LOGIC;
  signal \s_registers[1][4]_i_4_n_0\ : STD_LOGIC;
  signal \s_registers[1][4]_i_7_n_0\ : STD_LOGIC;
  signal \s_registers[1][5]_i_2_n_0\ : STD_LOGIC;
  signal \s_registers[1][5]_i_3_n_0\ : STD_LOGIC;
  signal \s_registers[1][5]_i_6_n_0\ : STD_LOGIC;
  signal \s_registers[1][6]_i_2_n_0\ : STD_LOGIC;
  signal \s_registers[1][6]_i_4_n_0\ : STD_LOGIC;
  signal \s_registers[1][6]_i_5_n_0\ : STD_LOGIC;
  signal \s_registers[1][6]_i_8_n_0\ : STD_LOGIC;
  signal \s_registers[1][7]_i_10_n_0\ : STD_LOGIC;
  signal \s_registers[1][7]_i_11_n_0\ : STD_LOGIC;
  signal \s_registers[1][7]_i_3_n_0\ : STD_LOGIC;
  signal \s_registers[1][7]_i_5_n_0\ : STD_LOGIC;
  signal \s_registers[1][7]_i_6_n_0\ : STD_LOGIC;
  signal \s_registers[1][7]_i_7_n_0\ : STD_LOGIC;
  signal \s_registers[1][7]_i_9_n_0\ : STD_LOGIC;
  signal \s_registers_reg[1][2]_i_2_n_0\ : STD_LOGIC;
  signal \s_registers_reg[1][3]_i_2_n_0\ : STD_LOGIC;
  signal \s_registers_reg[1][4]_i_2_n_0\ : STD_LOGIC;
  signal s_zero_i_2_n_0 : STD_LOGIC;
  signal s_zero_i_3_n_0 : STD_LOGIC;
  signal s_zero_i_4_n_0 : STD_LOGIC;
  signal s_zero_i_5_n_0 : STD_LOGIC;
  signal s_zero_i_6_n_0 : STD_LOGIC;
  signal s_zero_i_7_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_s_current_state[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_sequential_s_current_state[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_sequential_s_current_state[2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o_data_bus[7]_INST_0_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \o_data_bus[7]_INST_0_i_5\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of o_rw_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_addr[15]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_addr[15]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s_addr[15]_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_addr[1]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_addr[1]_i_7\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_addr[2]_i_8\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_addr[3]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s_addr[4]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_addr[4]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s_addr[4]_i_7\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_addr[6]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_addr[7]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_addr[7]_i_9\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s_addr_new[10]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_addr_new[11]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_addr_new[12]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_addr_new[7]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_addr_new[8]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_addr_new[9]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of s_carry_i_6 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of s_counter0_carry_i_6 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s_counter[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_counter[10]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_counter[11]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_counter[12]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_counter[13]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_counter[14]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_counter[15]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_counter[15]_i_11\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_counter[15]_i_6\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_counter[15]_i_7\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \s_counter[15]_i_8\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_counter[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_counter[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_counter[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_counter[4]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_counter[5]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_counter[6]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_counter[7]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_counter[7]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_counter[8]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_counter[9]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of s_negative_i_1 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of s_overflow_i_2 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_registers[1][0]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_registers[1][0]_i_6\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_registers[1][0]_i_8\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_registers[1][1]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_registers[1][1]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s_registers[1][1]_i_9\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s_registers[1][6]_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s_registers[1][7]_i_10\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_registers[1][7]_i_13\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \s_registers[1][7]_i_15\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_registers[1][7]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_registers[1][7]_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_registers[1][7]_i_6\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of s_zero_i_2 : label is "soft_lutpair35";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
  \i_data_bus[7]_0\(7 downto 0) <= \^i_data_bus[7]_0\(7 downto 0);
  o_data_bus_0_sn_1 <= o_data_bus_0_sp_1;
  o_data_bus_1_sn_1 <= o_data_bus_1_sp_1;
  o_data_bus_6_sn_1 <= o_data_bus_6_sp_1;
  \s_ir_reg[0]_0\ <= \^s_ir_reg[0]_0\;
  \s_ir_reg[1]_0\ <= \^s_ir_reg[1]_0\;
  \s_ir_reg[5]_0\ <= \^s_ir_reg[5]_0\;
  \s_ir_reg[5]_1\ <= \^s_ir_reg[5]_1\;
  \s_ir_reg[5]_2\ <= \^s_ir_reg[5]_2\;
  \s_ir_reg[7]_2\ <= \^s_ir_reg[7]_2\;
  \s_ir_reg[7]_4\ <= \^s_ir_reg[7]_4\;
\FSM_sequential_s_current_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000AF3"
    )
        port map (
      I0 => \FSM_sequential_s_current_state[0]_i_2_n_0\,
      I1 => \^q\(1),
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I3 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I4 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      O => D(0)
    );
\FSM_sequential_s_current_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002000AAAAAAAA"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \^s_ir_reg[0]_0\,
      O => \FSM_sequential_s_current_state[0]_i_2_n_0\
    );
\FSM_sequential_s_current_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0320"
    )
        port map (
      I0 => \^s_ir_reg[5]_0\,
      I1 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I3 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      O => D(1)
    );
\FSM_sequential_s_current_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440400044"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I1 => \FSM_sequential_s_current_state[2]_i_2_n_0\,
      I2 => \^q\(0),
      I3 => \s_ir_reg_n_0_[2]\,
      I4 => \s_ir_reg_n_0_[1]\,
      I5 => \^q\(1),
      O => D(2)
    );
\FSM_sequential_s_current_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I1 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      O => \FSM_sequential_s_current_state[2]_i_2_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A08F5F5F5F7"
    )
        port map (
      I0 => \s_registers[1][7]_i_8\(7),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \s_registers[1][7]_i_8_0\(7),
      O => \s_registers_reg[1][7]\(3)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A08F5F5F5F7"
    )
        port map (
      I0 => \s_registers[1][7]_i_8\(6),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \s_registers[1][7]_i_8_0\(6),
      O => \s_registers_reg[1][7]\(2)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A08F5F5F5F7"
    )
        port map (
      I0 => \s_registers[1][7]_i_8\(5),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \s_registers[1][7]_i_8_0\(5),
      O => \s_registers_reg[1][7]\(1)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A08F5F5F5F7"
    )
        port map (
      I0 => \s_registers[1][7]_i_8\(4),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \s_registers[1][7]_i_8_0\(4),
      O => \s_registers_reg[1][7]\(0)
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A08F5F5F5F7"
    )
        port map (
      I0 => \s_registers[1][7]_i_8\(3),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \s_registers[1][7]_i_8_0\(3),
      O => S(3)
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A08F5F5F5F7"
    )
        port map (
      I0 => \s_registers[1][7]_i_8\(2),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \s_registers[1][7]_i_8_0\(2),
      O => S(2)
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A08F5F5F5F7"
    )
        port map (
      I0 => \s_registers[1][7]_i_8\(1),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \s_registers[1][7]_i_8_0\(1),
      O => S(1)
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFB05050504"
    )
        port map (
      I0 => \s_registers[1][7]_i_8\(0),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \s_registers[1][7]_i_8_0\(0),
      O => S(0)
    );
\o_data_bus[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF140000000000"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I1 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I3 => \^s_ir_reg[5]_0\,
      I4 => \o_data_bus[7]_INST_0_i_2_n_0\,
      I5 => \o_data_bus[0]_INST_0_i_1_n_0\,
      O => o_data_bus(0)
    );
\o_data_bus[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => o_data_bus_0_sn_1,
      I1 => \o_data_bus[7]_INST_0_i_2_n_0\,
      I2 => \o_data_bus[7]\(0),
      I3 => \o_data_bus[7]_INST_0_i_5_n_0\,
      I4 => \o_data_bus[7]\(8),
      O => \o_data_bus[0]_INST_0_i_1_n_0\
    );
\o_data_bus[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF140000000000"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I1 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I3 => \^s_ir_reg[5]_0\,
      I4 => \o_data_bus[7]_INST_0_i_2_n_0\,
      I5 => \o_data_bus[1]_INST_0_i_1_n_0\,
      O => o_data_bus(1)
    );
\o_data_bus[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => o_data_bus_1_sn_1,
      I1 => \o_data_bus[7]_INST_0_i_2_n_0\,
      I2 => \o_data_bus[7]\(1),
      I3 => \o_data_bus[7]_INST_0_i_5_n_0\,
      I4 => \o_data_bus[7]\(9),
      O => \o_data_bus[1]_INST_0_i_1_n_0\
    );
\o_data_bus[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF140000000000"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I1 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I3 => \^s_ir_reg[5]_0\,
      I4 => \o_data_bus[7]_INST_0_i_2_n_0\,
      I5 => \o_data_bus[2]_INST_0_i_1_n_0\,
      O => o_data_bus(2)
    );
\o_data_bus[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \s_registers_reg[1][2]\,
      I1 => \o_data_bus[7]_INST_0_i_2_n_0\,
      I2 => \o_data_bus[7]\(2),
      I3 => \o_data_bus[7]_INST_0_i_5_n_0\,
      I4 => \o_data_bus[7]\(10),
      O => \o_data_bus[2]_INST_0_i_1_n_0\
    );
\o_data_bus[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF140000000000"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I1 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I3 => \^s_ir_reg[5]_0\,
      I4 => \o_data_bus[7]_INST_0_i_2_n_0\,
      I5 => \o_data_bus[3]_INST_0_i_1_n_0\,
      O => o_data_bus(3)
    );
\o_data_bus[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \s_registers_reg[1][3]\,
      I1 => \o_data_bus[7]_INST_0_i_2_n_0\,
      I2 => \o_data_bus[7]\(3),
      I3 => \o_data_bus[7]_INST_0_i_5_n_0\,
      I4 => \o_data_bus[7]\(11),
      O => \o_data_bus[3]_INST_0_i_1_n_0\
    );
\o_data_bus[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF140000000000"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I1 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I3 => \^s_ir_reg[5]_0\,
      I4 => \o_data_bus[7]_INST_0_i_2_n_0\,
      I5 => \o_data_bus[4]_INST_0_i_1_n_0\,
      O => o_data_bus(4)
    );
\o_data_bus[4]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \s_registers_reg[1][4]\,
      I1 => \o_data_bus[7]_INST_0_i_2_n_0\,
      I2 => \o_data_bus[7]\(4),
      I3 => \o_data_bus[7]_INST_0_i_5_n_0\,
      I4 => \o_data_bus[7]\(12),
      O => \o_data_bus[4]_INST_0_i_1_n_0\
    );
\o_data_bus[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF140000000000"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I1 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I3 => \^s_ir_reg[5]_0\,
      I4 => \o_data_bus[7]_INST_0_i_2_n_0\,
      I5 => \o_data_bus[5]_INST_0_i_1_n_0\,
      O => o_data_bus(5)
    );
\o_data_bus[5]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \s_registers_reg[1][5]_1\,
      I1 => \o_data_bus[7]_INST_0_i_2_n_0\,
      I2 => \o_data_bus[7]\(5),
      I3 => \o_data_bus[7]_INST_0_i_5_n_0\,
      I4 => \o_data_bus[7]\(13),
      O => \o_data_bus[5]_INST_0_i_1_n_0\
    );
\o_data_bus[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF140000000000"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I1 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I3 => \^s_ir_reg[5]_0\,
      I4 => \o_data_bus[7]_INST_0_i_2_n_0\,
      I5 => \o_data_bus[6]_INST_0_i_1_n_0\,
      O => o_data_bus(6)
    );
\o_data_bus[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => o_data_bus_6_sn_1,
      I1 => \o_data_bus[7]_INST_0_i_2_n_0\,
      I2 => \o_data_bus[7]\(6),
      I3 => \o_data_bus[7]_INST_0_i_5_n_0\,
      I4 => \o_data_bus[7]\(14),
      O => \o_data_bus[6]_INST_0_i_1_n_0\
    );
\o_data_bus[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF140000000000"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I1 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I3 => \^s_ir_reg[5]_0\,
      I4 => \o_data_bus[7]_INST_0_i_2_n_0\,
      I5 => \o_data_bus[7]_INST_0_i_3_n_0\,
      O => o_data_bus(7)
    );
\o_data_bus[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(5),
      I3 => \^q\(4),
      I4 => \^s_ir_reg[0]_0\,
      O => \^s_ir_reg[5]_0\
    );
\o_data_bus[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000040000"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I1 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I3 => \^q\(0),
      I4 => \s_ir_reg_n_0_[2]\,
      I5 => \s_ir_reg_n_0_[1]\,
      O => \o_data_bus[7]_INST_0_i_2_n_0\
    );
\o_data_bus[7]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFB8B8"
    )
        port map (
      I0 => \o_data_bus[7]\(7),
      I1 => \o_data_bus[7]_INST_0_i_5_n_0\,
      I2 => \o_data_bus[7]\(15),
      I3 => \o_data_bus[7]_0\,
      I4 => \o_data_bus[7]_INST_0_i_2_n_0\,
      O => \o_data_bus[7]_INST_0_i_3_n_0\
    );
\o_data_bus[7]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(0),
      I1 => \s_ir_reg_n_0_[2]\,
      I2 => \s_ir_reg_n_0_[1]\,
      O => \^s_ir_reg[0]_0\
    );
\o_data_bus[7]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I1 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I3 => \^s_ir_reg[5]_0\,
      O => \o_data_bus[7]_INST_0_i_5_n_0\
    );
o_rw_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44544544"
    )
        port map (
      I0 => o_rw_0,
      I1 => \^s_ir_reg[5]_0\,
      I2 => \s_ir_reg_n_0_[1]\,
      I3 => \s_ir_reg_n_0_[2]\,
      I4 => \^q\(0),
      O => o_rw
    );
\s_addr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF4444444"
    )
        port map (
      I0 => \s_addr[13]_i_2_n_0\,
      I1 => \s_addr_reg[15]\(0),
      I2 => \s_addr_reg[0]\,
      I3 => s_counter_reg(0),
      I4 => \^s_ir_reg[5]_0\,
      I5 => \s_addr[0]_i_5_n_0\,
      O => \s_addr[0]_i_2_n_0\
    );
\s_addr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBFBF10001010"
    )
        port map (
      I0 => \^s_ir_reg[5]_2\,
      I1 => s_counter_reg(0),
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I3 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I4 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I5 => \s_addr_reg[15]\(0),
      O => \s_addr[0]_i_3_n_0\
    );
\s_addr[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5010001055555555"
    )
        port map (
      I0 => \s_addr_reg[1]\,
      I1 => \s_addr[1]_i_6_n_0\,
      I2 => \FSM_sequential_s_current_state[2]_i_2_n_0\,
      I3 => s_counter_reg(0),
      I4 => \s_addr[1]_i_7_n_0\,
      I5 => \s_addr[0]_i_6_n_0\,
      O => \s_addr[0]_i_5_n_0\
    );
\s_addr[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777F7FFF7FFF7FF"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I1 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I2 => \^s_ir_reg[0]_0\,
      I3 => \o_data_bus[7]\(0),
      I4 => \^s_ir_reg[5]_0\,
      I5 => s_counter_reg(0),
      O => \s_addr[0]_i_6_n_0\
    );
\s_addr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"770F777755005555"
    )
        port map (
      I0 => \s_addr[10]_i_2_n_0\,
      I1 => \s_addr[13]_i_2_n_0\,
      I2 => \^s_ir_reg[7]_4\,
      I3 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I4 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I5 => \s_addr_reg[15]\(10),
      O => \FSM_sequential_s_current_state_reg[2]\(9)
    );
\s_addr[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => \^s_ir_reg[0]_0\,
      I1 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I2 => \o_data_bus[7]\(10),
      I3 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I4 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      O => \s_addr[10]_i_2_n_0\
    );
\s_addr[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \s_addr[12]_i_2_n_0\,
      I1 => \o_data_bus[7]\(11),
      I2 => \s_addr[14]_i_2_n_0\,
      I3 => \s_addr_reg[15]\(11),
      O => \FSM_sequential_s_current_state_reg[2]\(10)
    );
\s_addr[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \s_addr[12]_i_2_n_0\,
      I1 => \o_data_bus[7]\(12),
      I2 => \s_addr[14]_i_2_n_0\,
      I3 => \s_addr_reg[15]\(12),
      O => \FSM_sequential_s_current_state_reg[2]\(11)
    );
\s_addr[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD555FFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I1 => \^q\(0),
      I2 => \s_ir_reg_n_0_[2]\,
      I3 => \s_ir_reg_n_0_[1]\,
      I4 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I5 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      O => \s_addr[12]_i_2_n_0\
    );
\s_addr[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F0055003F0F3F0F"
    )
        port map (
      I0 => \^s_ir_reg[7]_4\,
      I1 => \s_addr[13]_i_2_n_0\,
      I2 => \s_addr[13]_i_3_n_0\,
      I3 => \s_addr_reg[15]\(13),
      I4 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I5 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      O => \FSM_sequential_s_current_state_reg[2]\(12)
    );
\s_addr[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444FF005050"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I1 => \FSM_sequential_s_current_state[0]_i_2_n_0\,
      I2 => \s_addr[15]_i_7_n_0\,
      I3 => \^s_ir_reg[5]_0\,
      I4 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I5 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      O => \s_addr[13]_i_2_n_0\
    );
\s_addr[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \s_ir_reg_n_0_[1]\,
      I1 => \s_ir_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I4 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I5 => \o_data_bus[7]\(13),
      O => \s_addr[13]_i_3_n_0\
    );
\s_addr[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4444F444"
    )
        port map (
      I0 => \s_addr[14]_i_2_n_0\,
      I1 => \s_addr_reg[15]\(14),
      I2 => \o_data_bus[7]\(14),
      I3 => \s_addr_reg[14]\(0),
      I4 => \^s_ir_reg[0]_0\,
      O => \FSM_sequential_s_current_state_reg[2]\(13)
    );
\s_addr[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF1F0010"
    )
        port map (
      I0 => \^s_ir_reg[5]_2\,
      I1 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I3 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I4 => \s_addr[13]_i_2_n_0\,
      O => \s_addr[14]_i_2_n_0\
    );
\s_addr[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \s_ir_reg_n_0_[1]\,
      I1 => \s_ir_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => s_wait_for_starting_edge,
      O => \s_ir_reg[1]_1\(0)
    );
\s_addr[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF3BCC08"
    )
        port map (
      I0 => \^s_ir_reg[7]_4\,
      I1 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I3 => \s_addr_reg[15]\(15),
      I4 => \s_addr[15]_i_5_n_0\,
      O => \FSM_sequential_s_current_state_reg[2]\(14)
    );
\s_addr[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \s_addr_reg[1]\,
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \^s_ir_reg[7]_4\
    );
\s_addr[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEFFFEA"
    )
        port map (
      I0 => \s_addr[15]_i_6_n_0\,
      I1 => \^s_ir_reg[5]_0\,
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I3 => \s_addr_reg[15]\(15),
      I4 => \s_addr[15]_i_7_n_0\,
      I5 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      O => \s_addr[15]_i_5_n_0\
    );
\s_addr[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0E0E0E000E0E0"
    )
        port map (
      I0 => \FSM_sequential_s_current_state[0]_i_2_n_0\,
      I1 => \s_addr_reg[15]\(15),
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I3 => \o_data_bus[7]\(15),
      I4 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I5 => \^s_ir_reg[0]_0\,
      O => \s_addr[15]_i_6_n_0\
    );
\s_addr[15]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000F00"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^s_ir_reg[5]_2\,
      I2 => \s_ir_reg_n_0_[1]\,
      I3 => \s_ir_reg_n_0_[2]\,
      I4 => \^q\(1),
      O => \s_addr[15]_i_7_n_0\
    );
\s_addr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88CFBBFF88038803"
    )
        port map (
      I0 => \s_addr[1]_i_2_n_0\,
      I1 => \s_addr_reg[8]\,
      I2 => \s_addr[1]_i_3_n_0\,
      I3 => \s_addr_reg[1]\,
      I4 => \s_addr[13]_i_2_n_0\,
      I5 => \s_addr_reg[15]\(1),
      O => \FSM_sequential_s_current_state_reg[2]\(1)
    );
\s_addr[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF9FFFF00090000"
    )
        port map (
      I0 => s_counter_reg(1),
      I1 => s_counter_reg(0),
      I2 => \s_addr[7]_i_9_n_0\,
      I3 => \^q\(4),
      I4 => \^q\(5),
      I5 => \s_addr_reg[15]\(1),
      O => \s_addr[1]_i_2_n_0\
    );
\s_addr[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A8A2A8AAAAAAAA"
    )
        port map (
      I0 => \s_addr[1]_i_5_n_0\,
      I1 => s_counter_reg(0),
      I2 => \s_addr[1]_i_6_n_0\,
      I3 => s_counter_reg(1),
      I4 => \s_addr[1]_i_7_n_0\,
      I5 => \FSM_sequential_s_current_state[2]_i_2_n_0\,
      O => \s_addr[1]_i_3_n_0\
    );
\s_addr[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F7F7F7FFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I1 => \o_data_bus[7]\(1),
      I2 => \^s_ir_reg[0]_0\,
      I3 => s_counter_reg(1),
      I4 => \^s_ir_reg[5]_0\,
      I5 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      O => \s_addr[1]_i_5_n_0\
    );
\s_addr[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFF3F"
    )
        port map (
      I0 => \^s_ir_reg[5]_2\,
      I1 => \^q\(0),
      I2 => \s_ir_reg_n_0_[2]\,
      I3 => \s_ir_reg_n_0_[1]\,
      I4 => \^q\(1),
      O => \s_addr[1]_i_6_n_0\
    );
\s_addr[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^q\(0),
      I1 => \s_ir_reg_n_0_[1]\,
      I2 => \s_ir_reg_n_0_[2]\,
      I3 => \^q\(1),
      O => \s_addr[1]_i_7_n_0\
    );
\s_addr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00F200F200F2"
    )
        port map (
      I0 => \FSM_sequential_s_current_state[2]_i_2_n_0\,
      I1 => \s_addr_reg[2]_0\,
      I2 => \s_addr[2]_i_5_n_0\,
      I3 => \s_addr_reg[1]\,
      I4 => \s_addr_reg[15]\(2),
      I5 => \s_addr[4]_i_4_n_0\,
      O => \s_addr[2]_i_2_n_0\
    );
\s_addr[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA0000CFC00000"
    )
        port map (
      I0 => \s_addr[2]_i_8_n_0\,
      I1 => s_counter_reg(2),
      I2 => \^s_ir_reg[5]_0\,
      I3 => \s_addr_reg[15]\(2),
      I4 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I5 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      O => \s_addr[2]_i_5_n_0\
    );
\s_addr[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \o_data_bus[7]\(2),
      I1 => \s_ir_reg_n_0_[1]\,
      I2 => \s_ir_reg_n_0_[2]\,
      I3 => \^q\(0),
      O => \s_addr[2]_i_8_n_0\
    );
\s_addr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00F300FB00F3"
    )
        port map (
      I0 => \s_addr[3]_i_4_n_0\,
      I1 => \s_addr[3]_i_5_n_0\,
      I2 => \s_addr[3]_i_6_n_0\,
      I3 => \s_addr_reg[1]\,
      I4 => \s_addr_reg[15]\(3),
      I5 => \s_addr[4]_i_4_n_0\,
      O => \s_addr[3]_i_2_n_0\
    );
\s_addr[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I1 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I2 => \^s_ir_reg[5]_0\,
      O => \s_addr[3]_i_4_n_0\
    );
\s_addr[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F7F7F7FFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I1 => \o_data_bus[7]\(3),
      I2 => \^s_ir_reg[0]_0\,
      I3 => s_counter_reg(3),
      I4 => \^s_ir_reg[5]_0\,
      I5 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      O => \s_addr[3]_i_5_n_0\
    );
\s_addr[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202A202A2A2A202"
    )
        port map (
      I0 => \FSM_sequential_s_current_state[2]_i_2_n_0\,
      I1 => \s_addr[3]_i_7_n_0\,
      I2 => \^q\(1),
      I3 => \s_addr_reg[15]\(3),
      I4 => \s_counter[7]_i_2_n_0\,
      I5 => \s_addr[3]_i_6_0\,
      O => \s_addr[3]_i_6_n_0\
    );
\s_addr[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7545454575457575"
    )
        port map (
      I0 => \s_addr_reg[15]\(3),
      I1 => \s_ir_reg_n_0_[1]\,
      I2 => \s_ir_reg_n_0_[2]\,
      I3 => \s_addr[3]_i_6_0\,
      I4 => \^q\(0),
      I5 => s_counter_reg(3),
      O => \s_addr[3]_i_7_n_0\
    );
\s_addr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F4F407F704F40"
    )
        port map (
      I0 => \s_addr_reg[4]\,
      I1 => \^s_ir_reg[7]_4\,
      I2 => \s_addr_reg[8]\,
      I3 => \s_addr[4]_i_3_n_0\,
      I4 => \s_addr_reg[15]\(4),
      I5 => \s_addr[4]_i_4_n_0\,
      O => \FSM_sequential_s_current_state_reg[2]\(4)
    );
\s_addr[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4444CC45"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I1 => \s_addr[4]_i_5_n_0\,
      I2 => \s_addr[4]_i_6_n_0\,
      I3 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I4 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      O => \s_addr[4]_i_3_n_0\
    );
\s_addr[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CF44"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I1 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I2 => \FSM_sequential_s_current_state[0]_i_2_n_0\,
      I3 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      O => \s_addr[4]_i_4_n_0\
    );
\s_addr[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA0000CFC00000"
    )
        port map (
      I0 => \s_addr[4]_i_7_n_0\,
      I1 => s_counter_reg(4),
      I2 => \^s_ir_reg[5]_0\,
      I3 => \s_addr_reg[15]\(4),
      I4 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I5 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      O => \s_addr[4]_i_5_n_0\
    );
\s_addr[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80BF8FBF80BF80B0"
    )
        port map (
      I0 => \s_addr_reg[4]\,
      I1 => \s_counter[7]_i_2_n_0\,
      I2 => \^q\(1),
      I3 => \s_addr_reg[15]\(4),
      I4 => \^s_ir_reg[1]_0\,
      I5 => \s_addr[4]_i_3_0\,
      O => \s_addr[4]_i_6_n_0\
    );
\s_addr[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \o_data_bus[7]\(4),
      I1 => \s_ir_reg_n_0_[1]\,
      I2 => \s_ir_reg_n_0_[2]\,
      I3 => \^q\(0),
      O => \s_addr[4]_i_7_n_0\
    );
\s_addr[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF301"
    )
        port map (
      I0 => \s_addr[5]_i_4_n_0\,
      I1 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I3 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I4 => \s_addr[5]_i_5_n_0\,
      I5 => \s_addr[5]_i_6_n_0\,
      O => \FSM_sequential_s_current_state_reg[0]\
    );
\s_addr[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCFCFCFFFFFCC55"
    )
        port map (
      I0 => s_counter_reg(5),
      I1 => \s_addr[5]_i_2_0\,
      I2 => \s_counter[7]_i_2_n_0\,
      I3 => \^q\(0),
      I4 => \^s_ir_reg[1]_0\,
      I5 => \^q\(1),
      O => \s_addr[5]_i_4_n_0\
    );
\s_addr[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC008000800080"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I1 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I2 => \o_data_bus[7]\(5),
      I3 => \^s_ir_reg[0]_0\,
      I4 => s_counter_reg(5),
      I5 => \^s_ir_reg[5]_0\,
      O => \s_addr[5]_i_5_n_0\
    );
\s_addr[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA202000AA2A2A"
    )
        port map (
      I0 => \s_addr_reg[15]\(5),
      I1 => \^s_ir_reg[5]_0\,
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I3 => \FSM_sequential_s_current_state[0]_i_2_n_0\,
      I4 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I5 => \s_addr[15]_i_7_n_0\,
      O => \s_addr[5]_i_6_n_0\
    );
\s_addr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEAAEEAFFFFAEEA"
    )
        port map (
      I0 => \s_addr[6]_i_2_n_0\,
      I1 => \s_addr[6]_i_3_n_0\,
      I2 => \s_addr_reg[6]\,
      I3 => s_counter_reg(6),
      I4 => \s_addr_reg[15]\(6),
      I5 => \s_addr[7]_i_6_n_0\,
      O => \FSM_sequential_s_current_state_reg[2]\(5)
    );
\s_addr[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA000000AAABAAAB"
    )
        port map (
      I0 => \s_addr[6]_i_5_n_0\,
      I1 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I2 => \s_addr[6]_i_6_n_0\,
      I3 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I4 => \s_addr_reg[15]\(6),
      I5 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      O => \s_addr[6]_i_2_n_0\
    );
\s_addr[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \s_addr_reg[7]\,
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \s_addr[6]_i_3_n_0\
    );
\s_addr[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAEEEAAEAAAEA"
    )
        port map (
      I0 => \s_addr[6]_i_7_n_0\,
      I1 => \s_addr_reg[15]\(6),
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I3 => \FSM_sequential_s_current_state[0]_i_2_n_0\,
      I4 => \^s_ir_reg[5]_0\,
      I5 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      O => \s_addr[6]_i_5_n_0\
    );
\s_addr[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EE0EBB0BBB0B"
    )
        port map (
      I0 => \s_addr[1]_i_6_n_0\,
      I1 => \s_addr_reg[6]\,
      I2 => \s_addr_reg[15]\(6),
      I3 => \s_addr[15]_i_7_n_0\,
      I4 => \s_addr[1]_i_7_n_0\,
      I5 => s_counter_reg(6),
      O => \s_addr[6]_i_6_n_0\
    );
\s_addr[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F8FFF0FFF0"
    )
        port map (
      I0 => s_counter_reg(6),
      I1 => \^s_ir_reg[5]_0\,
      I2 => \s_addr[6]_i_8_n_0\,
      I3 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I4 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I5 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      O => \s_addr[6]_i_7_n_0\
    );
\s_addr[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808080808080"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I1 => \o_data_bus[7]\(6),
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I3 => \^q\(0),
      I4 => \s_ir_reg_n_0_[2]\,
      I5 => \s_ir_reg_n_0_[1]\,
      O => \s_addr[6]_i_8_n_0\
    );
\s_addr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAAABAFFFFAABA"
    )
        port map (
      I0 => \s_addr[7]_i_2_n_0\,
      I1 => \^s_ir_reg[5]_2\,
      I2 => \s_addr_reg[7]\,
      I3 => \s_addr_reg[7]_0\,
      I4 => \s_addr_reg[15]\(7),
      I5 => \s_addr[7]_i_6_n_0\,
      O => \FSM_sequential_s_current_state_reg[2]\(6)
    );
\s_addr[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAAAEFAFEAAA"
    )
        port map (
      I0 => \s_addr[7]_i_12_n_0\,
      I1 => \^s_ir_reg[5]_0\,
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I3 => s_counter_reg(7),
      I4 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I5 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      O => \s_addr[7]_i_10_n_0\
    );
\s_addr[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444CCCC00F0"
    )
        port map (
      I0 => \s_counter[7]_i_2_n_0\,
      I1 => \s_addr_reg[15]\(7),
      I2 => s_counter_reg(7),
      I3 => \^q\(0),
      I4 => \^s_ir_reg[1]_0\,
      I5 => \^q\(1),
      O => \s_addr[7]_i_11_n_0\
    );
\s_addr[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808080808080"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I1 => \o_data_bus[7]\(7),
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I3 => \^q\(0),
      I4 => \s_ir_reg_n_0_[2]\,
      I5 => \s_ir_reg_n_0_[1]\,
      O => \s_addr[7]_i_12_n_0\
    );
\s_addr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D0D050505055"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I1 => \s_addr_reg[15]\(7),
      I2 => \s_addr[7]_i_7_n_0\,
      I3 => \s_addr[7]_i_8_n_0\,
      I4 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I5 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      O => \s_addr[7]_i_2_n_0\
    );
\s_addr[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(4),
      I3 => \^q\(5),
      O => \^s_ir_reg[5]_2\
    );
\s_addr[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0010FFFFFFFF"
    )
        port map (
      I0 => \s_addr[7]_i_9_n_0\,
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I4 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I5 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      O => \s_addr[7]_i_6_n_0\
    );
\s_addr[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAEAAEEEEAEAA"
    )
        port map (
      I0 => \s_addr[7]_i_10_n_0\,
      I1 => \s_addr_reg[15]\(7),
      I2 => \^s_ir_reg[5]_0\,
      I3 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I4 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I5 => \FSM_sequential_s_current_state[0]_i_2_n_0\,
      O => \s_addr[7]_i_7_n_0\
    );
\s_addr[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3131313133333033"
    )
        port map (
      I0 => \s_counter[7]_i_2_n_0\,
      I1 => \s_addr[7]_i_11_n_0\,
      I2 => \s_addr_reg[7]_0\,
      I3 => \^q\(0),
      I4 => \^s_ir_reg[1]_0\,
      I5 => \^q\(1),
      O => \s_addr[7]_i_8_n_0\
    );
\s_addr[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \s_addr[7]_i_9_n_0\
    );
\s_addr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4700773347004700"
    )
        port map (
      I0 => \^s_ir_reg[7]_4\,
      I1 => \s_addr_reg[8]\,
      I2 => \s_addr[13]_i_2_n_0\,
      I3 => \s_addr_reg[15]\(8),
      I4 => \s_addr[12]_i_2_n_0\,
      I5 => \o_data_bus[7]\(8),
      O => \FSM_sequential_s_current_state_reg[2]\(7)
    );
\s_addr[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \s_addr[12]_i_2_n_0\,
      I1 => \o_data_bus[7]\(9),
      I2 => \s_addr[14]_i_2_n_0\,
      I3 => \s_addr_reg[15]\(9),
      O => \FSM_sequential_s_current_state_reg[2]\(8)
    );
\s_addr_new[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => plusOp(2),
      I1 => \^s_ir_reg[5]_0\,
      I2 => i_data_bus(2),
      O => \i_data_bus[4]\(2)
    );
\s_addr_new[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => plusOp(3),
      I1 => \^s_ir_reg[5]_0\,
      I2 => i_data_bus(3),
      O => \i_data_bus[4]\(3)
    );
\s_addr_new[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => plusOp(4),
      I1 => \^s_ir_reg[5]_0\,
      I2 => i_data_bus(4),
      O => \i_data_bus[4]\(4)
    );
\s_addr_new[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1810"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I1 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I3 => \^s_ir_reg[5]_0\,
      O => \FSM_sequential_s_current_state_reg[0]_0\(0)
    );
\s_addr_new[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => plusOp(0),
      I1 => \^s_ir_reg[5]_0\,
      I2 => i_data_bus(0),
      O => \i_data_bus[4]\(0)
    );
\s_addr_new[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => plusOp(1),
      I1 => \^s_ir_reg[5]_0\,
      I2 => i_data_bus(1),
      O => \i_data_bus[4]\(1)
    );
\s_addr_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_addr[0]_i_2_n_0\,
      I1 => \s_addr[0]_i_3_n_0\,
      O => \FSM_sequential_s_current_state_reg[2]\(0),
      S => \s_addr_reg[8]\
    );
\s_addr_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_addr[2]_i_2_n_0\,
      I1 => \s_addr_reg[2]\,
      O => \FSM_sequential_s_current_state_reg[2]\(2),
      S => \s_addr_reg[8]\
    );
\s_addr_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_addr[3]_i_2_n_0\,
      I1 => \s_addr_reg[3]\,
      O => \FSM_sequential_s_current_state_reg[2]\(3),
      S => \s_addr_reg[8]\
    );
s_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000026000000"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I1 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I3 => \s_ir_reg_n_0_[1]\,
      I4 => \s_ir_reg_n_0_[2]\,
      I5 => \^q\(0),
      O => s_carry0
    );
s_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \^q\(3),
      O => \s_ir_reg[6]_0\
    );
s_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000B00"
    )
        port map (
      I0 => \s_registers[1][7]_i_8_0\(7),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => CO(0),
      O => \s_registers_reg[0][7]\
    );
s_counter0_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA5565"
    )
        port map (
      I0 => s_counter_reg(1),
      I1 => \^q\(0),
      I2 => \s_ir_reg_n_0_[2]\,
      I3 => \s_ir_reg_n_0_[1]\,
      I4 => s_counter0_carry_i_6_n_0,
      O => \s_counter_reg[1]\(0)
    );
s_counter0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => s_counter0_carry_i_6_n_0
    );
\s_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \o_data_bus[7]\(0),
      I1 => \s_counter[15]_i_3_n_0\,
      I2 => \s_addr_reg[15]\(0),
      O => \i_data_bus[7]\(0)
    );
\s_counter[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_data_bus(2),
      I1 => \s_counter[15]_i_3_n_0\,
      I2 => s_counter(9),
      O => \i_data_bus[7]\(10)
    );
\s_counter[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_data_bus(3),
      I1 => \s_counter[15]_i_3_n_0\,
      I2 => s_counter(10),
      O => \i_data_bus[7]\(11)
    );
\s_counter[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_data_bus(4),
      I1 => \s_counter[15]_i_3_n_0\,
      I2 => s_counter(11),
      O => \i_data_bus[7]\(12)
    );
\s_counter[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_data_bus(5),
      I1 => \s_counter[15]_i_3_n_0\,
      I2 => s_counter(12),
      O => \i_data_bus[7]\(13)
    );
\s_counter[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_data_bus(6),
      I1 => \s_counter[15]_i_3_n_0\,
      I2 => s_counter(13),
      O => \i_data_bus[7]\(14)
    );
\s_counter[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => o_rw_0,
      I1 => \^q\(0),
      I2 => \s_ir_reg_n_0_[2]\,
      I3 => \s_ir_reg_n_0_[1]\,
      I4 => s_wait_for_starting_edge,
      O => \s_ir_reg[0]_1\(0)
    );
\s_counter[15]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08000CFB08F3FF"
    )
        port map (
      I0 => s_zero,
      I1 => \^s_ir_reg[5]_2\,
      I2 => \^s_ir_reg[5]_1\,
      I3 => s_negative,
      I4 => \s_counter[15]_i_11_n_0\,
      I5 => s_overflow,
      O => \s_counter[15]_i_10_n_0\
    );
\s_counter[15]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F3B3"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(5),
      I3 => \^q\(4),
      O => \s_counter[15]_i_11_n_0\
    );
\s_counter[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_data_bus(7),
      I1 => \s_counter[15]_i_3_n_0\,
      I2 => s_counter(14),
      O => \i_data_bus[7]\(15)
    );
\s_counter[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EA000000000000"
    )
        port map (
      I0 => \s_counter_reg[15]_i_5_n_0\,
      I1 => \s_counter[15]_i_6_n_0\,
      I2 => \s_counter[15]_i_7_n_0\,
      I3 => \s_counter[15]_i_8_n_0\,
      I4 => \^s_ir_reg[0]_0\,
      I5 => \s_addr_reg[14]\(0),
      O => \s_counter[15]_i_3_n_0\
    );
\s_counter[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      O => \s_counter[15]_i_6_n_0\
    );
\s_counter[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      O => \s_counter[15]_i_7_n_0\
    );
\s_counter[15]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => s_overflow,
      I3 => \^q\(5),
      I4 => \^q\(4),
      O => \s_counter[15]_i_8_n_0\
    );
\s_counter[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFC4FFF7F3F733"
    )
        port map (
      I0 => s_zero,
      I1 => \^q\(3),
      I2 => \^q\(5),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => s_carry,
      O => \s_counter[15]_i_9_n_0\
    );
\s_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_data_bus[7]\(1),
      I1 => \s_counter[15]_i_3_n_0\,
      I2 => s_counter(0),
      O => \i_data_bus[7]\(1)
    );
\s_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_data_bus[7]\(2),
      I1 => \s_counter[15]_i_3_n_0\,
      I2 => s_counter(1),
      O => \i_data_bus[7]\(2)
    );
\s_counter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_data_bus[7]\(3),
      I1 => \s_counter[15]_i_3_n_0\,
      I2 => s_counter(2),
      O => \i_data_bus[7]\(3)
    );
\s_counter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_data_bus[7]\(4),
      I1 => \s_counter[15]_i_3_n_0\,
      I2 => s_counter(3),
      O => \i_data_bus[7]\(4)
    );
\s_counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_data_bus[7]\(5),
      I1 => \s_counter[15]_i_3_n_0\,
      I2 => s_counter(4),
      O => \i_data_bus[7]\(5)
    );
\s_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_data_bus[7]\(6),
      I1 => \s_counter[15]_i_3_n_0\,
      I2 => s_counter(5),
      O => \i_data_bus[7]\(6)
    );
\s_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_data_bus[7]\(7),
      I1 => \s_counter[15]_i_3_n_0\,
      I2 => s_counter(6),
      O => \i_data_bus[7]\(7)
    );
\s_counter[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00F300F3AA00"
    )
        port map (
      I0 => \s_counter[7]_i_2_n_0\,
      I1 => \^s_ir_reg[1]_0\,
      I2 => \^s_ir_reg[5]_0\,
      I3 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I4 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I5 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      O => s_stack_en
    );
\s_counter[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \^s_ir_reg[0]_0\,
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \s_counter[7]_i_2_n_0\
    );
\s_counter[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \s_ir_reg_n_0_[1]\,
      I1 => \s_ir_reg_n_0_[2]\,
      O => \^s_ir_reg[1]_0\
    );
\s_counter[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_data_bus(0),
      I1 => \s_counter[15]_i_3_n_0\,
      I2 => s_counter(7),
      O => \i_data_bus[7]\(8)
    );
\s_counter[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_data_bus(1),
      I1 => \s_counter[15]_i_3_n_0\,
      I2 => s_counter(8),
      O => \i_data_bus[7]\(9)
    );
\s_counter_reg[15]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_counter[15]_i_9_n_0\,
      I1 => \s_counter[15]_i_10_n_0\,
      O => \s_counter_reg[15]_i_5_n_0\,
      S => \s_registers[1][7]_i_9_n_0\
    );
\s_ir[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444440"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I1 => \FSM_sequential_s_current_state[2]_i_2_n_0\,
      I2 => \^q\(0),
      I3 => \s_ir_reg_n_0_[2]\,
      I4 => \s_ir_reg_n_0_[1]\,
      I5 => s_wait_for_starting_edge,
      O => s_is_loading
    );
\s_ir_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_is_loading,
      CLR => \s_ir_reg[0]_2\,
      D => i_data_bus(0),
      Q => \^q\(0)
    );
\s_ir_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_is_loading,
      CLR => \s_ir_reg[0]_2\,
      D => i_data_bus(1),
      Q => \s_ir_reg_n_0_[1]\
    );
\s_ir_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_is_loading,
      CLR => \s_ir_reg[0]_2\,
      D => i_data_bus(2),
      Q => \s_ir_reg_n_0_[2]\
    );
\s_ir_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_is_loading,
      CLR => \s_ir_reg[0]_2\,
      D => i_data_bus(3),
      Q => \^q\(1)
    );
\s_ir_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_is_loading,
      CLR => \s_ir_reg[0]_2\,
      D => i_data_bus(4),
      Q => \^q\(2)
    );
\s_ir_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_is_loading,
      CLR => \s_ir_reg[0]_2\,
      D => i_data_bus(5),
      Q => \^q\(3)
    );
\s_ir_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_is_loading,
      CLR => \s_ir_reg[0]_2\,
      D => i_data_bus(6),
      Q => \^q\(4)
    );
\s_ir_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_is_loading,
      CLR => \s_ir_reg[0]_2\,
      D => i_data_bus(7),
      Q => \^q\(5)
    );
s_negative_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^i_data_bus[7]_0\(7),
      I1 => s_negative0,
      I2 => s_negative,
      O => s_negative_reg
    );
s_overflow_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0F1"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(5),
      I3 => \^q\(4),
      O => \s_ir_reg[4]_1\
    );
\s_registers[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000088808880888"
    )
        port map (
      I0 => \s_registers[1][7]_i_3_n_0\,
      I1 => s_negative0,
      I2 => \^q\(5),
      I3 => \s_registers[1][7]_i_5_n_0\,
      I4 => \s_registers[1][7]_i_6_n_0\,
      I5 => \^q\(3),
      O => \s_ir_reg[7]_3\(0)
    );
\s_registers[1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55555554"
    )
        port map (
      I0 => \s_registers[1][0]_i_2_n_0\,
      I1 => \s_registers[1][0]_i_3_n_0\,
      I2 => \s_registers[1][7]_i_5_n_0\,
      I3 => \s_registers[1][0]_i_4_n_0\,
      I4 => \s_registers[1][0]_i_5_n_0\,
      I5 => \s_registers[1][0]_i_6_n_0\,
      O => \^i_data_bus[7]_0\(0)
    );
\s_registers[1][0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F10"
    )
        port map (
      I0 => o_data_bus_0_sn_1,
      I1 => \s_ir_reg_n_0_[2]\,
      I2 => \s_ir_reg_n_0_[1]\,
      I3 => \^q\(0),
      O => \s_registers[1][0]_i_2_n_0\
    );
\s_registers[1][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A88800008888"
    )
        port map (
      I0 => \^q\(4),
      I1 => \s_registers[1][0]_i_7_n_0\,
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(5),
      I5 => \s_registers[1][7]_i_8_0\(1),
      O => \s_registers[1][0]_i_3_n_0\
    );
\s_registers[1][0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040004040404"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(5),
      I3 => data2(0),
      I4 => \^q\(2),
      I5 => \s_registers[1][0]_i_8_n_0\,
      O => \s_registers[1][0]_i_4_n_0\
    );
\s_registers[1][0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001000FFFF1011"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => O(0),
      I3 => \^q\(2),
      I4 => \^q\(5),
      I5 => \s_registers[1][7]_i_8_0\(0),
      O => \s_registers[1][0]_i_5_n_0\
    );
\s_registers[1][0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => i_data_bus(0),
      I1 => \s_ir_reg_n_0_[1]\,
      I2 => \^q\(0),
      O => \s_registers[1][0]_i_6_n_0\
    );
\s_registers[1][0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F3FFFFF1"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(5),
      I3 => \s_registers[1][7]_i_8\(0),
      I4 => \s_registers[1][7]_i_8_0\(0),
      I5 => \^q\(3),
      O => \s_registers[1][0]_i_7_n_0\
    );
\s_registers[1][0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(5),
      I2 => \s_registers[1][7]_i_8\(0),
      I3 => \s_registers[1][7]_i_8_0\(0),
      O => \s_registers[1][0]_i_8_n_0\
    );
\s_registers[1][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBABABBBA"
    )
        port map (
      I0 => \s_registers[1][1]_i_2_n_0\,
      I1 => \s_registers[1][1]_i_3_n_0\,
      I2 => \s_registers[1][1]_i_4_n_0\,
      I3 => \s_registers[1][1]_i_5_n_0\,
      I4 => \s_registers[1][1]_i_6_n_0\,
      I5 => \s_registers[1][7]_i_5_n_0\,
      O => \^i_data_bus[7]_0\(1)
    );
\s_registers[1][1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => i_data_bus(1),
      I1 => \s_ir_reg_n_0_[1]\,
      I2 => \^q\(0),
      O => \s_registers[1][1]_i_2_n_0\
    );
\s_registers[1][1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F10"
    )
        port map (
      I0 => o_data_bus_1_sn_1,
      I1 => \s_ir_reg_n_0_[2]\,
      I2 => \s_ir_reg_n_0_[1]\,
      I3 => \^q\(0),
      O => \s_registers[1][1]_i_3_n_0\
    );
\s_registers[1][1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFF5F8FA"
    )
        port map (
      I0 => \s_registers[1][7]_i_8\(1),
      I1 => \s_registers[1][7]_i_9_n_0\,
      I2 => \^s_ir_reg[5]_1\,
      I3 => \^s_ir_reg[7]_2\,
      I4 => \s_registers[1][7]_i_8_0\(1),
      I5 => \s_registers[1][1]_i_7_n_0\,
      O => \s_registers[1][1]_i_4_n_0\
    );
\s_registers[1][1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EAFFEFFFEF00EA"
    )
        port map (
      I0 => \^q\(3),
      I1 => O(1),
      I2 => \^q\(2),
      I3 => \^q\(5),
      I4 => \s_registers[1][7]_i_8_0\(1),
      I5 => \s_registers[1][7]_i_8_0\(0),
      O => \s_registers[1][1]_i_5_n_0\
    );
\s_registers[1][1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3232223222222222"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \^q\(3),
      I3 => data2(1),
      I4 => \^q\(2),
      I5 => \s_registers[1][1]_i_9_n_0\,
      O => \s_registers[1][1]_i_6_n_0\
    );
\s_registers[1][1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1D00FFFFFFFF"
    )
        port map (
      I0 => \s_registers[1][7]_i_8_0\(0),
      I1 => \^q\(2),
      I2 => \s_registers[1][7]_i_8_0\(2),
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(4),
      O => \s_registers[1][1]_i_7_n_0\
    );
\s_registers[1][1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(5),
      I2 => \s_registers[1][7]_i_8\(1),
      I3 => \s_registers[1][7]_i_8_0\(1),
      O => \s_registers[1][1]_i_9_n_0\
    );
\s_registers[1][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBCB08083808"
    )
        port map (
      I0 => i_data_bus(2),
      I1 => \^q\(0),
      I2 => \s_ir_reg_n_0_[1]\,
      I3 => \s_registers_reg[1][2]\,
      I4 => \s_ir_reg_n_0_[2]\,
      I5 => \s_registers_reg[1][2]_i_2_n_0\,
      O => \^i_data_bus[7]_0\(2)
    );
\s_registers[1][2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE2FF0000E200"
    )
        port map (
      I0 => \s_registers[1][7]_i_8_0\(1),
      I1 => \^q\(2),
      I2 => \s_registers[1][7]_i_8_0\(3),
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \s_registers[1][2]_i_7_n_0\,
      O => \s_registers[1][2]_i_4_n_0\
    );
\s_registers[1][2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5FFFF0A0A0A08"
    )
        port map (
      I0 => \s_registers[1][7]_i_8\(2),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \s_registers[1][7]_i_8_0\(2),
      O => \s_registers[1][2]_i_7_n_0\
    );
\s_registers[1][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBCB08083808"
    )
        port map (
      I0 => i_data_bus(3),
      I1 => \^q\(0),
      I2 => \s_ir_reg_n_0_[1]\,
      I3 => \s_registers_reg[1][3]\,
      I4 => \s_ir_reg_n_0_[2]\,
      I5 => \s_registers_reg[1][3]_i_2_n_0\,
      O => \^i_data_bus[7]_0\(3)
    );
\s_registers[1][3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE2FF0000E200"
    )
        port map (
      I0 => \s_registers[1][7]_i_8_0\(2),
      I1 => \^q\(2),
      I2 => \s_registers[1][7]_i_8_0\(4),
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \s_registers[1][3]_i_7_n_0\,
      O => \s_registers[1][3]_i_4_n_0\
    );
\s_registers[1][3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5FFFF0A0A0A08"
    )
        port map (
      I0 => \s_registers[1][7]_i_8\(3),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \s_registers[1][7]_i_8_0\(3),
      O => \s_registers[1][3]_i_7_n_0\
    );
\s_registers[1][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBCB08083808"
    )
        port map (
      I0 => i_data_bus(4),
      I1 => \^q\(0),
      I2 => \s_ir_reg_n_0_[1]\,
      I3 => \s_registers_reg[1][4]\,
      I4 => \s_ir_reg_n_0_[2]\,
      I5 => \s_registers_reg[1][4]_i_2_n_0\,
      O => \^i_data_bus[7]_0\(4)
    );
\s_registers[1][4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE2FF0000E200"
    )
        port map (
      I0 => \s_registers[1][7]_i_8_0\(3),
      I1 => \^q\(2),
      I2 => \s_registers[1][7]_i_8_0\(5),
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \s_registers[1][4]_i_7_n_0\,
      O => \s_registers[1][4]_i_4_n_0\
    );
\s_registers[1][4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5FFFF0A0A0A08"
    )
        port map (
      I0 => \s_registers[1][7]_i_8\(4),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \s_registers[1][7]_i_8_0\(4),
      O => \s_registers[1][4]_i_7_n_0\
    );
\s_registers[1][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB888"
    )
        port map (
      I0 => i_data_bus(5),
      I1 => \s_registers[1][7]_i_6_n_0\,
      I2 => \s_registers_reg[1][5]_1\,
      I3 => \s_registers[1][7]_i_5_n_0\,
      I4 => \s_registers[1][5]_i_2_n_0\,
      I5 => \s_registers[1][5]_i_3_n_0\,
      O => \^i_data_bus[7]_0\(5)
    );
\s_registers[1][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5101010151515151"
    )
        port map (
      I0 => \s_registers[1][7]_i_9_n_0\,
      I1 => \s_registers_reg[1][5]\,
      I2 => \^s_ir_reg[5]_1\,
      I3 => data2(2),
      I4 => \^s_ir_reg[7]_2\,
      I5 => \s_registers_reg[1][5]_0\,
      O => \s_registers[1][5]_i_2_n_0\
    );
\s_registers[1][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \s_registers[1][5]_i_6_n_0\,
      I1 => \^s_ir_reg[5]_1\,
      I2 => \s_registers[1][7]_i_8_0\(6),
      I3 => \^s_ir_reg[7]_2\,
      I4 => \s_registers[1][7]_i_8_0\(4),
      I5 => \s_registers[1][7]_i_9_n_0\,
      O => \s_registers[1][5]_i_3_n_0\
    );
\s_registers[1][5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5FFFF0A0A0A08"
    )
        port map (
      I0 => \s_registers[1][7]_i_8\(5),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \s_registers[1][7]_i_8_0\(5),
      O => \s_registers[1][5]_i_6_n_0\
    );
\s_registers[1][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8B8B8BB"
    )
        port map (
      I0 => i_data_bus(6),
      I1 => \s_registers[1][7]_i_6_n_0\,
      I2 => \s_registers[1][6]_i_2_n_0\,
      I3 => \s_registers[1][7]_i_9_n_0\,
      I4 => \s_registers_reg[1][6]\,
      I5 => \s_registers[1][6]_i_4_n_0\,
      O => \^i_data_bus[7]_0\(6)
    );
\s_registers[1][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404FF0404040404"
    )
        port map (
      I0 => \^q\(0),
      I1 => \s_ir_reg_n_0_[1]\,
      I2 => \s_ir_reg_n_0_[2]\,
      I3 => \^q\(4),
      I4 => \^q\(5),
      I5 => \s_registers[1][6]_i_5_n_0\,
      O => \s_registers[1][6]_i_2_n_0\
    );
\s_registers[1][6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^q\(0),
      I1 => \s_ir_reg_n_0_[1]\,
      I2 => \s_ir_reg_n_0_[2]\,
      I3 => o_data_bus_6_sn_1,
      O => \s_registers[1][6]_i_4_n_0\
    );
\s_registers[1][6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE2FF0000E200"
    )
        port map (
      I0 => \s_registers[1][7]_i_8_0\(5),
      I1 => \^q\(2),
      I2 => \s_registers[1][7]_i_8_0\(7),
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \s_registers[1][6]_i_8_n_0\,
      O => \s_registers[1][6]_i_5_n_0\
    );
\s_registers[1][6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5FFFF0A0A0A08"
    )
        port map (
      I0 => \s_registers[1][7]_i_8\(6),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \s_registers[1][7]_i_8_0\(6),
      O => \s_registers[1][6]_i_8_n_0\
    );
\s_registers[1][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888800080008000"
    )
        port map (
      I0 => \s_registers[1][7]_i_3_n_0\,
      I1 => s_negative0,
      I2 => \^q\(5),
      I3 => \s_registers[1][7]_i_5_n_0\,
      I4 => \s_registers[1][7]_i_6_n_0\,
      I5 => \^q\(3),
      O => E(0)
    );
\s_registers[1][7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F10"
    )
        port map (
      I0 => \o_data_bus[7]_0\,
      I1 => \s_ir_reg_n_0_[2]\,
      I2 => \s_ir_reg_n_0_[1]\,
      I3 => \^q\(0),
      O => \s_registers[1][7]_i_10_n_0\
    );
\s_registers[1][7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555FF99FF15"
    )
        port map (
      I0 => \s_registers[1][7]_i_8_0\(7),
      I1 => \s_registers[1][7]_i_8\(7),
      I2 => \^q\(4),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \^q\(5),
      O => \s_registers[1][7]_i_11_n_0\
    );
\s_registers[1][7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0E000000000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(5),
      I3 => \^q\(4),
      I4 => \s_registers[1][7]_i_8\(7),
      I5 => \s_registers[1][7]_i_8_0\(7),
      O => \s_ir_reg[4]_0\
    );
\s_registers[1][7]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(5),
      O => \^s_ir_reg[5]_1\
    );
\s_registers[1][7]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(2),
      O => \^s_ir_reg[7]_2\
    );
\s_registers[1][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF540000FF54FF54"
    )
        port map (
      I0 => \s_registers[1][7]_i_7_n_0\,
      I1 => \s_registers_reg[1][7]_0\,
      I2 => \s_registers[1][7]_i_9_n_0\,
      I3 => \s_registers[1][7]_i_10_n_0\,
      I4 => i_data_bus(7),
      I5 => \s_registers[1][7]_i_6_n_0\,
      O => \^i_data_bus[7]_0\(7)
    );
\s_registers[1][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F00009F9F9F9F9F"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \s_registers[1][7]_i_5_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \s_registers[1][7]_i_6_n_0\,
      O => \s_registers[1][7]_i_3_n_0\
    );
\s_registers[1][7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00262600"
    )
        port map (
      I0 => \FSM_sequential_s_current_state_reg[2]_0\(0),
      I1 => \FSM_sequential_s_current_state_reg[2]_0\(1),
      I2 => \FSM_sequential_s_current_state_reg[2]_0\(2),
      I3 => \s_ir_reg_n_0_[1]\,
      I4 => \^q\(0),
      O => s_negative0
    );
\s_registers[1][7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \s_ir_reg_n_0_[2]\,
      I1 => \s_ir_reg_n_0_[1]\,
      I2 => \^q\(0),
      O => \s_registers[1][7]_i_5_n_0\
    );
\s_registers[1][7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \s_ir_reg_n_0_[1]\,
      O => \s_registers[1][7]_i_6_n_0\
    );
\s_registers[1][7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFAAAAAAAAAAAA"
    )
        port map (
      I0 => \s_registers[1][7]_i_5_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \s_registers[1][7]_i_8_0\(6),
      I4 => \s_registers[1][7]_i_9_n_0\,
      I5 => \s_registers[1][7]_i_11_n_0\,
      O => \s_registers[1][7]_i_7_n_0\
    );
\s_registers[1][7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \s_registers[1][7]_i_9_n_0\
    );
\s_registers[2][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000044404440444"
    )
        port map (
      I0 => \s_registers[1][7]_i_3_n_0\,
      I1 => s_negative0,
      I2 => \^q\(5),
      I3 => \s_registers[1][7]_i_5_n_0\,
      I4 => \s_registers[1][7]_i_6_n_0\,
      I5 => \^q\(3),
      O => \s_ir_reg[7]_0\(0)
    );
\s_registers[3][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444400040004000"
    )
        port map (
      I0 => \s_registers[1][7]_i_3_n_0\,
      I1 => s_negative0,
      I2 => \^q\(5),
      I3 => \s_registers[1][7]_i_5_n_0\,
      I4 => \s_registers[1][7]_i_6_n_0\,
      I5 => \^q\(3),
      O => \s_ir_reg[7]_1\(0)
    );
\s_registers_reg[1][2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_registers_reg[1][2]_0\,
      I1 => \s_registers[1][2]_i_4_n_0\,
      O => \s_registers_reg[1][2]_i_2_n_0\,
      S => \s_registers[1][7]_i_9_n_0\
    );
\s_registers_reg[1][3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_registers_reg[1][3]_0\,
      I1 => \s_registers[1][3]_i_4_n_0\,
      O => \s_registers_reg[1][3]_i_2_n_0\,
      S => \s_registers[1][7]_i_9_n_0\
    );
\s_registers_reg[1][4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_registers_reg[1][4]_0\,
      I1 => \s_registers[1][4]_i_4_n_0\,
      O => \s_registers_reg[1][4]_i_2_n_0\,
      S => \s_registers[1][7]_i_9_n_0\
    );
s_zero_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFF00020000"
    )
        port map (
      I0 => s_zero_i_2_n_0,
      I1 => s_zero_i_3_n_0,
      I2 => s_zero_i_4_n_0,
      I3 => \^i_data_bus[7]_0\(5),
      I4 => s_negative0,
      I5 => s_zero,
      O => s_zero_reg
    );
s_zero_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^i_data_bus[7]_0\(7),
      I1 => \^i_data_bus[7]_0\(6),
      O => s_zero_i_2_n_0
    );
s_zero_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFFAFAFACCFAFA"
    )
        port map (
      I0 => s_zero_i_5_n_0,
      I1 => i_data_bus(3),
      I2 => s_zero_i_6_n_0,
      I3 => \s_ir_reg_n_0_[1]\,
      I4 => \^q\(0),
      I5 => i_data_bus(2),
      O => s_zero_i_3_n_0
    );
s_zero_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBA8A"
    )
        port map (
      I0 => s_zero_i_7_n_0,
      I1 => \s_ir_reg_n_0_[1]\,
      I2 => \^q\(0),
      I3 => i_data_bus(4),
      I4 => \^i_data_bus[7]_0\(0),
      I5 => \^i_data_bus[7]_0\(1),
      O => s_zero_i_4_n_0
    );
s_zero_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => \s_registers_reg[1][3]\,
      I1 => \s_registers[1][7]_i_5_n_0\,
      I2 => \s_registers[1][3]_i_4_n_0\,
      I3 => \^q\(4),
      I4 => \^q\(5),
      I5 => \s_registers_reg[1][3]_0\,
      O => s_zero_i_5_n_0
    );
s_zero_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => \s_registers_reg[1][2]\,
      I1 => \s_registers[1][7]_i_5_n_0\,
      I2 => \s_registers[1][2]_i_4_n_0\,
      I3 => \^q\(4),
      I4 => \^q\(5),
      I5 => \s_registers_reg[1][2]_0\,
      O => s_zero_i_6_n_0
    );
s_zero_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => \s_registers_reg[1][4]\,
      I1 => \s_registers[1][7]_i_5_n_0\,
      I2 => \s_registers[1][4]_i_4_n_0\,
      I3 => \^q\(4),
      I4 => \^q\(5),
      I5 => \s_registers_reg[1][4]_0\,
      O => s_zero_i_7_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity turtle_top_level_turtle_processing_un_0_0_register_file is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_registers_reg[2][0]_0\ : out STD_LOGIC;
    \s_registers_reg[1][7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_registers_reg[3][1]_0\ : out STD_LOGIC;
    \s_registers_reg[2][4]_0\ : out STD_LOGIC;
    \s_registers_reg[2][5]_0\ : out STD_LOGIC;
    \s_registers_reg[3][6]_0\ : out STD_LOGIC;
    \s_registers_reg[3][7]_0\ : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_registers_reg[0][7]_0\ : out STD_LOGIC;
    \s_registers_reg[0][3]_0\ : out STD_LOGIC;
    \s_registers_reg[0][3]_1\ : out STD_LOGIC;
    \s_registers_reg[0][6]_0\ : out STD_LOGIC;
    \s_registers_reg[0][7]_1\ : out STD_LOGIC;
    \s_registers_reg[0][5]_0\ : out STD_LOGIC;
    \s_registers_reg[0][5]_1\ : out STD_LOGIC;
    \s_registers_reg[2][2]_0\ : out STD_LOGIC;
    \s_registers_reg[2][3]_0\ : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    i_rst_0 : out STD_LOGIC;
    \s_registers_reg[0][7]_2\ : out STD_LOGIC;
    s_carry_reg : out STD_LOGIC;
    \s_registers[1][3]_i_3_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_carry_reg_0 : in STD_LOGIC;
    s_carry_reg_1 : in STD_LOGIC;
    s_carry_reg_2 : in STD_LOGIC;
    data2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \s_registers_reg[1][6]_0\ : in STD_LOGIC;
    \s_registers_reg[1][7]_1\ : in STD_LOGIC;
    \s_registers[1][0]_i_5\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_registers[1][4]_i_3_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_carry_i_7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_rst : in STD_LOGIC;
    s_overflow_reg : in STD_LOGIC;
    s_carry0 : in STD_LOGIC;
    s_overflow : in STD_LOGIC;
    s_carry : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_clk : in STD_LOGIC;
    \s_registers_reg[3][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_registers_reg[2][0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_registers_reg[0][7]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of turtle_top_level_turtle_processing_un_0_0_register_file : entity is "register_file";
end turtle_top_level_turtle_processing_un_0_0_register_file;

architecture STRUCTURE of turtle_top_level_turtle_processing_un_0_0_register_file is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 8 downto 2 );
  signal \^i_rst_0\ : STD_LOGIC;
  signal s_carry_i_2_n_0 : STD_LOGIC;
  signal s_carry_i_5_n_0 : STD_LOGIC;
  signal \s_registers[1][2]_i_5_n_0\ : STD_LOGIC;
  signal \s_registers[1][2]_i_6_n_0\ : STD_LOGIC;
  signal \s_registers[1][3]_i_5_n_0\ : STD_LOGIC;
  signal \s_registers[1][3]_i_6_n_0\ : STD_LOGIC;
  signal \s_registers[1][4]_i_5_n_0\ : STD_LOGIC;
  signal \s_registers[1][4]_i_6_n_0\ : STD_LOGIC;
  signal \s_registers[1][5]_i_7_n_0\ : STD_LOGIC;
  signal \s_registers[1][6]_i_6_n_0\ : STD_LOGIC;
  signal \s_registers[1][6]_i_7_n_0\ : STD_LOGIC;
  signal \s_registers[1][7]_i_14_n_0\ : STD_LOGIC;
  signal \s_registers[1][7]_i_17_n_0\ : STD_LOGIC;
  signal \s_registers_reg[1][1]_i_8_n_0\ : STD_LOGIC;
  signal \s_registers_reg[1][1]_i_8_n_1\ : STD_LOGIC;
  signal \s_registers_reg[1][1]_i_8_n_2\ : STD_LOGIC;
  signal \s_registers_reg[1][1]_i_8_n_3\ : STD_LOGIC;
  signal \^s_registers_reg[1][7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \s_registers_reg[1][7]_i_16_n_0\ : STD_LOGIC;
  signal \s_registers_reg[1][7]_i_16_n_1\ : STD_LOGIC;
  signal \s_registers_reg[1][7]_i_16_n_2\ : STD_LOGIC;
  signal \s_registers_reg[1][7]_i_16_n_3\ : STD_LOGIC;
  signal \s_registers_reg[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \s_registers_reg[3]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_s_carry_reg_i_4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_s_carry_reg_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_carry_reg_i_8_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_s_carry_reg_i_8_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of s_carry_i_5 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_registers[1][4]_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_registers[1][5]_i_7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_registers[1][6]_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_registers[1][6]_i_7\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_registers[1][7]_i_14\ : label is "soft_lutpair4";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  i_rst_0 <= \^i_rst_0\;
  \s_registers_reg[1][7]_0\(7 downto 0) <= \^s_registers_reg[1][7]_0\(7 downto 0);
\o_data_bus[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCAAFFF0CCAA00"
    )
        port map (
      I0 => \s_registers_reg[2]\(0),
      I1 => \s_registers_reg[3]\(0),
      I2 => \^s_registers_reg[1][7]_0\(0),
      I3 => \s_registers[1][3]_i_3_0\(0),
      I4 => \s_registers[1][3]_i_3_0\(1),
      I5 => \^q\(0),
      O => \s_registers_reg[2][0]_0\
    );
\o_data_bus[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACCFFF0AACC00"
    )
        port map (
      I0 => \s_registers_reg[3]\(1),
      I1 => \s_registers_reg[2]\(1),
      I2 => \^s_registers_reg[1][7]_0\(1),
      I3 => \s_registers[1][3]_i_3_0\(0),
      I4 => \s_registers[1][3]_i_3_0\(1),
      I5 => \^q\(1),
      O => \s_registers_reg[3][1]_0\
    );
\o_data_bus[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \s_registers_reg[2]\(2),
      I1 => \^q\(2),
      I2 => \s_registers_reg[3]\(2),
      I3 => \s_registers[1][3]_i_3_0\(1),
      I4 => \s_registers[1][3]_i_3_0\(0),
      I5 => \^s_registers_reg[1][7]_0\(2),
      O => \s_registers_reg[2][2]_0\
    );
\o_data_bus[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \s_registers_reg[2]\(3),
      I1 => \^q\(3),
      I2 => \s_registers_reg[3]\(3),
      I3 => \s_registers[1][3]_i_3_0\(1),
      I4 => \s_registers[1][3]_i_3_0\(0),
      I5 => \^s_registers_reg[1][7]_0\(3),
      O => \s_registers_reg[2][3]_0\
    );
\o_data_bus[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \s_registers_reg[2]\(4),
      I1 => \^q\(4),
      I2 => \s_registers_reg[3]\(4),
      I3 => \s_registers[1][3]_i_3_0\(1),
      I4 => \s_registers[1][3]_i_3_0\(0),
      I5 => \^s_registers_reg[1][7]_0\(4),
      O => \s_registers_reg[2][4]_0\
    );
\o_data_bus[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \s_registers_reg[2]\(5),
      I1 => \^q\(5),
      I2 => \s_registers_reg[3]\(5),
      I3 => \s_registers[1][3]_i_3_0\(1),
      I4 => \s_registers[1][3]_i_3_0\(0),
      I5 => \^s_registers_reg[1][7]_0\(5),
      O => \s_registers_reg[2][5]_0\
    );
\o_data_bus[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACCFFF0AACC00"
    )
        port map (
      I0 => \s_registers_reg[3]\(6),
      I1 => \s_registers_reg[2]\(6),
      I2 => \^s_registers_reg[1][7]_0\(6),
      I3 => \s_registers[1][3]_i_3_0\(0),
      I4 => \s_registers[1][3]_i_3_0\(1),
      I5 => \^q\(6),
      O => \s_registers_reg[3][6]_0\
    );
\o_data_bus[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F5533000F5533FF"
    )
        port map (
      I0 => \s_registers_reg[3]\(7),
      I1 => \s_registers_reg[2]\(7),
      I2 => \^s_registers_reg[1][7]_0\(7),
      I3 => \s_registers[1][3]_i_3_0\(0),
      I4 => \s_registers[1][3]_i_3_0\(1),
      I5 => \^q\(7),
      O => \s_registers_reg[3][7]_0\
    );
\s_addr[15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_rst,
      O => \^i_rst_0\
    );
s_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => s_carry_i_2_n_0,
      I1 => s_carry0,
      I2 => s_carry,
      O => s_carry_reg
    );
s_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF35F5"
    )
        port map (
      I0 => data1(8),
      I1 => s_carry_i_5_n_0,
      I2 => s_carry_reg_0,
      I3 => \^q\(7),
      I4 => s_carry_reg_1,
      I5 => s_carry_reg_2,
      O => s_carry_i_2_n_0
    );
s_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      I1 => \s_registers[1][7]_i_17_n_0\,
      O => s_carry_i_5_n_0
    );
s_carry_reg_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => \s_registers_reg[1][7]_i_16_n_0\,
      CO(3 downto 1) => NLW_s_carry_reg_i_4_CO_UNCONNECTED(3 downto 1),
      CO(0) => data1(8),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_s_carry_reg_i_4_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"0001"
    );
s_carry_reg_i_8: unisim.vcomponents.CARRY4
     port map (
      CI => s_carry_i_7(0),
      CO(3 downto 1) => NLW_s_carry_reg_i_8_CO_UNCONNECTED(3 downto 1),
      CO(0) => CO(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_s_carry_reg_i_8_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"0001"
    );
s_overflow_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1811FFFF18110000"
    )
        port map (
      I0 => s_carry_i_2_n_0,
      I1 => \^q\(7),
      I2 => s_overflow_reg,
      I3 => \^s_registers_reg[1][7]_0\(7),
      I4 => s_carry0,
      I5 => s_overflow,
      O => \s_registers_reg[0][7]_2\
    );
\s_registers[1][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B03FB030BF3FBF3F"
    )
        port map (
      I0 => data2(0),
      I1 => \s_registers[1][2]_i_5_n_0\,
      I2 => \s_registers_reg[1][6]_0\,
      I3 => s_carry_reg_0,
      I4 => data1(2),
      I5 => \s_registers[1][2]_i_6_n_0\,
      O => \s_registers_reg[0][3]_0\
    );
\s_registers[1][2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^s_registers_reg[1][7]_0\(2),
      I1 => \s_registers[1][3]_i_3_0\(2),
      I2 => \s_registers[1][3]_i_3_0\(0),
      I3 => \^q\(2),
      O => \s_registers[1][2]_i_5_n_0\
    );
\s_registers[1][2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8787FF87"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \s_registers[1][3]_i_3_0\(0),
      I4 => \s_registers[1][3]_i_3_0\(2),
      O => \s_registers[1][2]_i_6_n_0\
    );
\s_registers[1][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B03FB030BF3FBF3F"
    )
        port map (
      I0 => data2(1),
      I1 => \s_registers[1][3]_i_5_n_0\,
      I2 => \s_registers_reg[1][6]_0\,
      I3 => s_carry_reg_0,
      I4 => data1(3),
      I5 => \s_registers[1][3]_i_6_n_0\,
      O => \s_registers_reg[0][3]_1\
    );
\s_registers[1][3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^s_registers_reg[1][7]_0\(3),
      I1 => \s_registers[1][3]_i_3_0\(2),
      I2 => \s_registers[1][3]_i_3_0\(0),
      I3 => \^q\(3),
      O => \s_registers[1][3]_i_5_n_0\
    );
\s_registers[1][3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"807F807FFFFF807F"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \s_registers[1][3]_i_3_0\(0),
      I5 => \s_registers[1][3]_i_3_0\(2),
      O => \s_registers[1][3]_i_6_n_0\
    );
\s_registers[1][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB03F3FBFB03030"
    )
        port map (
      I0 => data2(2),
      I1 => \s_registers[1][4]_i_5_n_0\,
      I2 => \s_registers_reg[1][6]_0\,
      I3 => \s_registers[1][4]_i_6_n_0\,
      I4 => s_carry_reg_0,
      I5 => data1(4),
      O => \s_registers_reg[0][7]_0\
    );
\s_registers[1][4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \s_registers[1][3]_i_3_0\(2),
      I2 => \s_registers[1][3]_i_3_0\(0),
      I3 => \^s_registers_reg[1][7]_0\(4),
      O => \s_registers[1][4]_i_5_n_0\
    );
\s_registers[1][4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \s_registers[1][4]_i_6_n_0\
    );
\s_registers[1][5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60666F66"
    )
        port map (
      I0 => \^q\(5),
      I1 => \s_registers[1][5]_i_7_n_0\,
      I2 => \s_registers[1][3]_i_3_0\(2),
      I3 => \s_registers[1][3]_i_3_0\(0),
      I4 => data1(5),
      O => \s_registers_reg[0][5]_0\
    );
\s_registers[1][5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(5),
      I1 => \s_registers[1][3]_i_3_0\(2),
      I2 => \s_registers[1][3]_i_3_0\(0),
      I3 => \^s_registers_reg[1][7]_0\(5),
      O => \s_registers_reg[0][5]_1\
    );
\s_registers[1][5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \s_registers[1][5]_i_7_n_0\
    );
\s_registers[1][6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20A0A02F20AFA0"
    )
        port map (
      I0 => \s_registers[1][6]_i_6_n_0\,
      I1 => data2(3),
      I2 => \s_registers_reg[1][6]_0\,
      I3 => \s_registers[1][6]_i_7_n_0\,
      I4 => s_carry_reg_0,
      I5 => data1(6),
      O => \s_registers_reg[0][6]_0\
    );
\s_registers[1][6]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(6),
      I1 => \s_registers[1][3]_i_3_0\(2),
      I2 => \s_registers[1][3]_i_3_0\(0),
      I3 => \^s_registers_reg[1][7]_0\(6),
      O => \s_registers[1][6]_i_6_n_0\
    );
\s_registers[1][6]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"66F6"
    )
        port map (
      I0 => \s_registers[1][7]_i_17_n_0\,
      I1 => \^q\(6),
      I2 => \s_registers[1][3]_i_3_0\(0),
      I3 => \s_registers[1][3]_i_3_0\(2),
      O => \s_registers[1][6]_i_7_n_0\
    );
\s_registers[1][7]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(7),
      I1 => \s_registers[1][7]_i_17_n_0\,
      I2 => \^q\(6),
      O => \s_registers[1][7]_i_14_n_0\
    );
\s_registers[1][7]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \s_registers[1][7]_i_17_n_0\
    );
\s_registers[1][7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data2(4),
      I1 => \s_registers_reg[1][7]_1\,
      I2 => \s_registers_reg[1][6]_0\,
      I3 => \s_registers[1][7]_i_14_n_0\,
      I4 => s_carry_reg_0,
      I5 => data1(7),
      O => \s_registers_reg[0][7]_1\
    );
\s_registers_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => \s_registers_reg[0][7]_3\(0),
      CLR => \^i_rst_0\,
      D => D(0),
      Q => \^q\(0)
    );
\s_registers_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => \s_registers_reg[0][7]_3\(0),
      CLR => \^i_rst_0\,
      D => D(1),
      Q => \^q\(1)
    );
\s_registers_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => \s_registers_reg[0][7]_3\(0),
      CLR => \^i_rst_0\,
      D => D(2),
      Q => \^q\(2)
    );
\s_registers_reg[0][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => \s_registers_reg[0][7]_3\(0),
      CLR => \^i_rst_0\,
      D => D(3),
      Q => \^q\(3)
    );
\s_registers_reg[0][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => \s_registers_reg[0][7]_3\(0),
      CLR => \^i_rst_0\,
      D => D(4),
      Q => \^q\(4)
    );
\s_registers_reg[0][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => \s_registers_reg[0][7]_3\(0),
      CLR => \^i_rst_0\,
      D => D(5),
      Q => \^q\(5)
    );
\s_registers_reg[0][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => \s_registers_reg[0][7]_3\(0),
      CLR => \^i_rst_0\,
      D => D(6),
      Q => \^q\(6)
    );
\s_registers_reg[0][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => \s_registers_reg[0][7]_3\(0),
      CLR => \^i_rst_0\,
      D => D(7),
      Q => \^q\(7)
    );
\s_registers_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => E(0),
      CLR => \^i_rst_0\,
      D => D(0),
      Q => \^s_registers_reg[1][7]_0\(0)
    );
\s_registers_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => E(0),
      CLR => \^i_rst_0\,
      D => D(1),
      Q => \^s_registers_reg[1][7]_0\(1)
    );
\s_registers_reg[1][1]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_registers_reg[1][1]_i_8_n_0\,
      CO(2) => \s_registers_reg[1][1]_i_8_n_1\,
      CO(1) => \s_registers_reg[1][1]_i_8_n_2\,
      CO(0) => \s_registers_reg[1][1]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 2) => data1(3 downto 2),
      O(1 downto 0) => O(1 downto 0),
      S(3 downto 0) => \s_registers[1][0]_i_5\(3 downto 0)
    );
\s_registers_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => E(0),
      CLR => \^i_rst_0\,
      D => D(2),
      Q => \^s_registers_reg[1][7]_0\(2)
    );
\s_registers_reg[1][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => E(0),
      CLR => \^i_rst_0\,
      D => D(3),
      Q => \^s_registers_reg[1][7]_0\(3)
    );
\s_registers_reg[1][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => E(0),
      CLR => \^i_rst_0\,
      D => D(4),
      Q => \^s_registers_reg[1][7]_0\(4)
    );
\s_registers_reg[1][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => E(0),
      CLR => \^i_rst_0\,
      D => D(5),
      Q => \^s_registers_reg[1][7]_0\(5)
    );
\s_registers_reg[1][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => E(0),
      CLR => \^i_rst_0\,
      D => D(6),
      Q => \^s_registers_reg[1][7]_0\(6)
    );
\s_registers_reg[1][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => E(0),
      CLR => \^i_rst_0\,
      D => D(7),
      Q => \^s_registers_reg[1][7]_0\(7)
    );
\s_registers_reg[1][7]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_registers_reg[1][1]_i_8_n_0\,
      CO(3) => \s_registers_reg[1][7]_i_16_n_0\,
      CO(2) => \s_registers_reg[1][7]_i_16_n_1\,
      CO(1) => \s_registers_reg[1][7]_i_16_n_2\,
      CO(0) => \s_registers_reg[1][7]_i_16_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3 downto 0) => data1(7 downto 4),
      S(3 downto 0) => \s_registers[1][4]_i_3_0\(3 downto 0)
    );
\s_registers_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => \s_registers_reg[2][0]_1\(0),
      CLR => \^i_rst_0\,
      D => D(0),
      Q => \s_registers_reg[2]\(0)
    );
\s_registers_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => \s_registers_reg[2][0]_1\(0),
      CLR => \^i_rst_0\,
      D => D(1),
      Q => \s_registers_reg[2]\(1)
    );
\s_registers_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => \s_registers_reg[2][0]_1\(0),
      CLR => \^i_rst_0\,
      D => D(2),
      Q => \s_registers_reg[2]\(2)
    );
\s_registers_reg[2][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => \s_registers_reg[2][0]_1\(0),
      CLR => \^i_rst_0\,
      D => D(3),
      Q => \s_registers_reg[2]\(3)
    );
\s_registers_reg[2][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => \s_registers_reg[2][0]_1\(0),
      CLR => \^i_rst_0\,
      D => D(4),
      Q => \s_registers_reg[2]\(4)
    );
\s_registers_reg[2][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => \s_registers_reg[2][0]_1\(0),
      CLR => \^i_rst_0\,
      D => D(5),
      Q => \s_registers_reg[2]\(5)
    );
\s_registers_reg[2][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => \s_registers_reg[2][0]_1\(0),
      CLR => \^i_rst_0\,
      D => D(6),
      Q => \s_registers_reg[2]\(6)
    );
\s_registers_reg[2][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => \s_registers_reg[2][0]_1\(0),
      CLR => \^i_rst_0\,
      D => D(7),
      Q => \s_registers_reg[2]\(7)
    );
\s_registers_reg[3][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => \s_registers_reg[3][0]_0\(0),
      CLR => \^i_rst_0\,
      D => D(0),
      Q => \s_registers_reg[3]\(0)
    );
\s_registers_reg[3][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => \s_registers_reg[3][0]_0\(0),
      CLR => \^i_rst_0\,
      D => D(1),
      Q => \s_registers_reg[3]\(1)
    );
\s_registers_reg[3][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => \s_registers_reg[3][0]_0\(0),
      CLR => \^i_rst_0\,
      D => D(2),
      Q => \s_registers_reg[3]\(2)
    );
\s_registers_reg[3][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => \s_registers_reg[3][0]_0\(0),
      CLR => \^i_rst_0\,
      D => D(3),
      Q => \s_registers_reg[3]\(3)
    );
\s_registers_reg[3][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => \s_registers_reg[3][0]_0\(0),
      CLR => \^i_rst_0\,
      D => D(4),
      Q => \s_registers_reg[3]\(4)
    );
\s_registers_reg[3][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => \s_registers_reg[3][0]_0\(0),
      CLR => \^i_rst_0\,
      D => D(5),
      Q => \s_registers_reg[3]\(5)
    );
\s_registers_reg[3][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => \s_registers_reg[3][0]_0\(0),
      CLR => \^i_rst_0\,
      D => D(6),
      Q => \s_registers_reg[3]\(6)
    );
\s_registers_reg[3][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => \s_registers_reg[3][0]_0\(0),
      CLR => \^i_rst_0\,
      D => D(7),
      Q => \s_registers_reg[3]\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity turtle_top_level_turtle_processing_un_0_0_turtle_processing_unit is
  port (
    o_rw : out STD_LOGIC;
    o_data_bus : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_addr_bus : out STD_LOGIC_VECTOR ( 15 downto 0 );
    i_clk : in STD_LOGIC;
    i_data_bus : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of turtle_top_level_turtle_processing_un_0_0_turtle_processing_unit : entity is "turtle_processing_unit";
end turtle_top_level_turtle_processing_un_0_0_turtle_processing_unit;

architecture STRUCTURE of turtle_top_level_turtle_processing_un_0_0_turtle_processing_unit is
  signal data1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pc_inst_n_1 : STD_LOGIC;
  signal pc_inst_n_10 : STD_LOGIC;
  signal pc_inst_n_11 : STD_LOGIC;
  signal pc_inst_n_12 : STD_LOGIC;
  signal pc_inst_n_13 : STD_LOGIC;
  signal pc_inst_n_14 : STD_LOGIC;
  signal pc_inst_n_15 : STD_LOGIC;
  signal pc_inst_n_16 : STD_LOGIC;
  signal pc_inst_n_2 : STD_LOGIC;
  signal pc_inst_n_22 : STD_LOGIC;
  signal pc_inst_n_23 : STD_LOGIC;
  signal pc_inst_n_3 : STD_LOGIC;
  signal pc_inst_n_4 : STD_LOGIC;
  signal pc_inst_n_5 : STD_LOGIC;
  signal pc_inst_n_6 : STD_LOGIC;
  signal pc_inst_n_7 : STD_LOGIC;
  signal pc_inst_n_8 : STD_LOGIC;
  signal pc_inst_n_9 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal reg_alu_n_10 : STD_LOGIC;
  signal reg_alu_n_11 : STD_LOGIC;
  signal reg_alu_n_12 : STD_LOGIC;
  signal reg_alu_n_13 : STD_LOGIC;
  signal reg_alu_n_14 : STD_LOGIC;
  signal reg_alu_n_15 : STD_LOGIC;
  signal reg_alu_n_16 : STD_LOGIC;
  signal reg_alu_n_8 : STD_LOGIC;
  signal reg_alu_n_9 : STD_LOGIC;
  signal reg_file_n_17 : STD_LOGIC;
  signal reg_file_n_18 : STD_LOGIC;
  signal reg_file_n_19 : STD_LOGIC;
  signal reg_file_n_20 : STD_LOGIC;
  signal reg_file_n_21 : STD_LOGIC;
  signal reg_file_n_24 : STD_LOGIC;
  signal reg_file_n_25 : STD_LOGIC;
  signal reg_file_n_26 : STD_LOGIC;
  signal reg_file_n_27 : STD_LOGIC;
  signal reg_file_n_28 : STD_LOGIC;
  signal reg_file_n_29 : STD_LOGIC;
  signal reg_file_n_30 : STD_LOGIC;
  signal reg_file_n_31 : STD_LOGIC;
  signal reg_file_n_32 : STD_LOGIC;
  signal reg_file_n_33 : STD_LOGIC;
  signal reg_file_n_34 : STD_LOGIC;
  signal reg_file_n_35 : STD_LOGIC;
  signal reg_file_n_36 : STD_LOGIC;
  signal reg_file_n_8 : STD_LOGIC;
  signal reg_instruction_n_0 : STD_LOGIC;
  signal reg_instruction_n_1 : STD_LOGIC;
  signal reg_instruction_n_10 : STD_LOGIC;
  signal reg_instruction_n_11 : STD_LOGIC;
  signal reg_instruction_n_12 : STD_LOGIC;
  signal reg_instruction_n_13 : STD_LOGIC;
  signal reg_instruction_n_14 : STD_LOGIC;
  signal reg_instruction_n_15 : STD_LOGIC;
  signal reg_instruction_n_16 : STD_LOGIC;
  signal reg_instruction_n_17 : STD_LOGIC;
  signal reg_instruction_n_19 : STD_LOGIC;
  signal reg_instruction_n_2 : STD_LOGIC;
  signal reg_instruction_n_20 : STD_LOGIC;
  signal reg_instruction_n_21 : STD_LOGIC;
  signal reg_instruction_n_22 : STD_LOGIC;
  signal reg_instruction_n_3 : STD_LOGIC;
  signal reg_instruction_n_52 : STD_LOGIC;
  signal reg_instruction_n_53 : STD_LOGIC;
  signal reg_instruction_n_54 : STD_LOGIC;
  signal reg_instruction_n_55 : STD_LOGIC;
  signal reg_instruction_n_56 : STD_LOGIC;
  signal reg_instruction_n_57 : STD_LOGIC;
  signal reg_instruction_n_58 : STD_LOGIC;
  signal reg_instruction_n_59 : STD_LOGIC;
  signal reg_instruction_n_60 : STD_LOGIC;
  signal reg_instruction_n_61 : STD_LOGIC;
  signal reg_instruction_n_62 : STD_LOGIC;
  signal reg_instruction_n_63 : STD_LOGIC;
  signal reg_instruction_n_64 : STD_LOGIC;
  signal reg_instruction_n_65 : STD_LOGIC;
  signal reg_instruction_n_66 : STD_LOGIC;
  signal reg_instruction_n_67 : STD_LOGIC;
  signal reg_instruction_n_68 : STD_LOGIC;
  signal reg_instruction_n_69 : STD_LOGIC;
  signal reg_instruction_n_70 : STD_LOGIC;
  signal reg_instruction_n_71 : STD_LOGIC;
  signal reg_instruction_n_78 : STD_LOGIC;
  signal reg_instruction_n_89 : STD_LOGIC;
  signal reg_instruction_n_9 : STD_LOGIC;
  signal reg_instruction_n_90 : STD_LOGIC;
  signal reg_instruction_n_91 : STD_LOGIC;
  signal reg_instruction_n_92 : STD_LOGIC;
  signal reg_instruction_n_93 : STD_LOGIC;
  signal s_addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_addr0 : STD_LOGIC;
  signal \s_addr[0]_i_4_n_0\ : STD_LOGIC;
  signal \s_addr[1]_i_4_n_0\ : STD_LOGIC;
  signal \s_addr[7]_i_4_n_0\ : STD_LOGIC;
  signal \s_addr[8]_i_2_n_0\ : STD_LOGIC;
  signal s_addr_mode : STD_LOGIC;
  signal s_addr_new : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \s_addr_new_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_addr_new_reg_n_0_[10]\ : STD_LOGIC;
  signal \s_addr_new_reg_n_0_[11]\ : STD_LOGIC;
  signal \s_addr_new_reg_n_0_[12]\ : STD_LOGIC;
  signal \s_addr_new_reg_n_0_[13]\ : STD_LOGIC;
  signal \s_addr_new_reg_n_0_[14]\ : STD_LOGIC;
  signal \s_addr_new_reg_n_0_[15]\ : STD_LOGIC;
  signal \s_addr_new_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_addr_new_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_addr_new_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_addr_new_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_addr_new_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_addr_new_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_addr_new_reg_n_0_[7]\ : STD_LOGIC;
  signal \s_addr_new_reg_n_0_[8]\ : STD_LOGIC;
  signal \s_addr_new_reg_n_0_[9]\ : STD_LOGIC;
  signal s_carry : STD_LOGIC;
  signal s_carry0 : STD_LOGIC;
  signal s_counter : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal s_counter_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \s_current_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_negative : STD_LOGIC;
  signal s_overflow : STD_LOGIC;
  signal s_pc_en : STD_LOGIC;
  signal \s_reg_file_data_out[0]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \s_registers_reg[0]0\ : STD_LOGIC;
  signal \s_registers_reg[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \s_registers_reg[1]0\ : STD_LOGIC;
  signal s_stack_en : STD_LOGIC;
  signal s_wait_for_starting_edge : STD_LOGIC;
  signal s_zero : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal stack_inst_n_10 : STD_LOGIC;
  signal stack_inst_n_11 : STD_LOGIC;
  signal stack_inst_n_12 : STD_LOGIC;
  signal stack_inst_n_13 : STD_LOGIC;
  signal stack_inst_n_14 : STD_LOGIC;
  signal stack_inst_n_15 : STD_LOGIC;
  signal stack_inst_n_16 : STD_LOGIC;
  signal stack_inst_n_8 : STD_LOGIC;
  signal stack_inst_n_9 : STD_LOGIC;
  signal \NLW_plusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_s_current_state_reg[0]\ : label is "fetching_addr_high:011,fetching_addr_low:100,iSTATE:101,executing_ir_without_pc:001,fetching_ir:000,iSTATE0:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_s_current_state_reg[1]\ : label is "fetching_addr_high:011,fetching_addr_low:100,iSTATE:101,executing_ir_without_pc:001,fetching_ir:000,iSTATE0:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_s_current_state_reg[2]\ : label is "fetching_addr_high:011,fetching_addr_low:100,iSTATE:101,executing_ir_without_pc:001,fetching_ir:000,iSTATE0:010";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of plusOp_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \plusOp_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \plusOp_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \plusOp_carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \plusOp_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_addr[0]_i_4\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \s_addr[1]_i_4\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \s_addr[7]_i_4\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \s_addr_new[2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \s_addr_new[3]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \s_addr_new[4]_i_1\ : label is "soft_lutpair40";
begin
\FSM_sequential_s_current_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => s_addr0,
      CLR => reg_file_n_34,
      D => \s_current_state__0\(0),
      Q => s_current_state(0)
    );
\FSM_sequential_s_current_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => s_addr0,
      CLR => reg_file_n_34,
      D => \s_current_state__0\(1),
      Q => s_current_state(1)
    );
\FSM_sequential_s_current_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => s_addr0,
      CLR => reg_file_n_34,
      D => \s_current_state__0\(2),
      Q => s_current_state(2)
    );
pc_inst: entity work.turtle_top_level_turtle_processing_un_0_0_counter_register
     port map (
      D(0) => s_addr(5),
      E(0) => pc_inst_n_23,
      \FSM_sequential_s_current_state_reg[2]\ => pc_inst_n_22,
      O(2 downto 0) => plusOp(15 downto 13),
      Q(2 downto 0) => s_current_state(2 downto 0),
      i_clk => i_clk,
      i_data_bus(4 downto 2) => i_data_bus(7 downto 5),
      i_data_bus(1 downto 0) => i_data_bus(1 downto 0),
      \i_data_bus[7]\(4 downto 2) => s_addr_new(15 downto 13),
      \i_data_bus[7]\(1 downto 0) => s_addr_new(1 downto 0),
      \s_addr_new_reg[13]\ => reg_instruction_n_17,
      \s_addr_reg[5]\ => reg_instruction_n_54,
      \s_addr_reg[5]_0\ => stack_inst_n_16,
      \s_addr_reg[5]_1\ => reg_instruction_n_52,
      s_counter(13 downto 0) => s_counter(15 downto 2),
      \s_counter_reg[0]_0\ => reg_file_n_34,
      \s_counter_reg[15]_0\(15) => pc_inst_n_1,
      \s_counter_reg[15]_0\(14) => pc_inst_n_2,
      \s_counter_reg[15]_0\(13) => pc_inst_n_3,
      \s_counter_reg[15]_0\(12) => pc_inst_n_4,
      \s_counter_reg[15]_0\(11) => pc_inst_n_5,
      \s_counter_reg[15]_0\(10) => pc_inst_n_6,
      \s_counter_reg[15]_0\(9) => pc_inst_n_7,
      \s_counter_reg[15]_0\(8) => pc_inst_n_8,
      \s_counter_reg[15]_0\(7) => pc_inst_n_9,
      \s_counter_reg[15]_0\(6) => pc_inst_n_10,
      \s_counter_reg[15]_0\(5) => pc_inst_n_11,
      \s_counter_reg[15]_0\(4) => pc_inst_n_12,
      \s_counter_reg[15]_0\(3) => pc_inst_n_13,
      \s_counter_reg[15]_0\(2) => pc_inst_n_14,
      \s_counter_reg[15]_0\(1) => pc_inst_n_15,
      \s_counter_reg[15]_0\(0) => pc_inst_n_16,
      \s_counter_reg[15]_1\(0) => s_pc_en,
      \s_counter_reg[15]_2\(15) => reg_instruction_n_55,
      \s_counter_reg[15]_2\(14) => reg_instruction_n_56,
      \s_counter_reg[15]_2\(13) => reg_instruction_n_57,
      \s_counter_reg[15]_2\(12) => reg_instruction_n_58,
      \s_counter_reg[15]_2\(11) => reg_instruction_n_59,
      \s_counter_reg[15]_2\(10) => reg_instruction_n_60,
      \s_counter_reg[15]_2\(9) => reg_instruction_n_61,
      \s_counter_reg[15]_2\(8) => reg_instruction_n_62,
      \s_counter_reg[15]_2\(7) => reg_instruction_n_63,
      \s_counter_reg[15]_2\(6) => reg_instruction_n_64,
      \s_counter_reg[15]_2\(5) => reg_instruction_n_65,
      \s_counter_reg[15]_2\(4) => reg_instruction_n_66,
      \s_counter_reg[15]_2\(3) => reg_instruction_n_67,
      \s_counter_reg[15]_2\(2) => reg_instruction_n_68,
      \s_counter_reg[15]_2\(1) => reg_instruction_n_69,
      \s_counter_reg[15]_2\(0) => reg_instruction_n_70
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => pc_inst_n_16,
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => plusOp(4 downto 2),
      O(0) => s_counter(1),
      S(3) => pc_inst_n_12,
      S(2) => pc_inst_n_13,
      S(1) => pc_inst_n_14,
      S(0) => pc_inst_n_15
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3) => pc_inst_n_8,
      S(2) => pc_inst_n_9,
      S(1) => pc_inst_n_10,
      S(0) => pc_inst_n_11
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(12 downto 9),
      S(3) => pc_inst_n_4,
      S(2) => pc_inst_n_5,
      S(1) => pc_inst_n_6,
      S(0) => pc_inst_n_7
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp(15 downto 13),
      S(3) => '0',
      S(2) => pc_inst_n_1,
      S(1) => pc_inst_n_2,
      S(0) => pc_inst_n_3
    );
reg_alu: entity work.turtle_top_level_turtle_processing_un_0_0_alu
     port map (
      CO(0) => reg_alu_n_8,
      Q(7 downto 0) => \s_reg_file_data_out[0]_0\(7 downto 0),
      S(3) => reg_instruction_n_0,
      S(2) => reg_instruction_n_1,
      S(1) => reg_instruction_n_2,
      S(0) => reg_instruction_n_3,
      data2(7 downto 0) => data2(7 downto 0),
      \s_registers[1][4]_i_3\(3) => reg_instruction_n_10,
      \s_registers[1][4]_i_3\(2) => reg_instruction_n_11,
      \s_registers[1][4]_i_3\(1) => reg_instruction_n_12,
      \s_registers[1][4]_i_3\(0) => reg_instruction_n_13,
      \s_registers_reg[0][3]\(3) => reg_alu_n_9,
      \s_registers_reg[0][3]\(2) => reg_alu_n_10,
      \s_registers_reg[0][3]\(1) => reg_alu_n_11,
      \s_registers_reg[0][3]\(0) => reg_alu_n_12,
      \s_registers_reg[0][7]\(3) => reg_alu_n_13,
      \s_registers_reg[0][7]\(2) => reg_alu_n_14,
      \s_registers_reg[0][7]\(1) => reg_alu_n_15,
      \s_registers_reg[0][7]\(0) => reg_alu_n_16,
      \s_registers_reg[1][7]_i_16\(3 downto 0) => p_0_in(3 downto 0),
      \s_registers_reg[1][7]_i_16_0\(7 downto 0) => \s_registers_reg[1]\(7 downto 0)
    );
reg_file: entity work.turtle_top_level_turtle_processing_un_0_0_register_file
     port map (
      CO(0) => reg_file_n_33,
      D(7 downto 0) => sel0(7 downto 0),
      E(0) => \s_registers_reg[1]0\,
      O(1 downto 0) => data1(1 downto 0),
      Q(7 downto 0) => \s_reg_file_data_out[0]_0\(7 downto 0),
      data2(4 downto 3) => data2(7 downto 6),
      data2(2 downto 0) => data2(4 downto 2),
      i_clk => i_clk,
      i_rst => i_rst,
      i_rst_0 => reg_file_n_34,
      s_carry => s_carry,
      s_carry0 => s_carry0,
      s_carry_i_7(0) => reg_alu_n_8,
      s_carry_reg => reg_file_n_36,
      s_carry_reg_0 => reg_instruction_n_21,
      s_carry_reg_1 => reg_instruction_n_91,
      s_carry_reg_2 => reg_instruction_n_89,
      s_overflow => s_overflow,
      s_overflow_reg => reg_instruction_n_90,
      \s_registers[1][0]_i_5\(3) => reg_alu_n_9,
      \s_registers[1][0]_i_5\(2) => reg_alu_n_10,
      \s_registers[1][0]_i_5\(1) => reg_alu_n_11,
      \s_registers[1][0]_i_5\(0) => reg_alu_n_12,
      \s_registers[1][3]_i_3_0\(2) => p_0_in(3),
      \s_registers[1][3]_i_3_0\(1 downto 0) => p_0_in(1 downto 0),
      \s_registers[1][4]_i_3_0\(3) => reg_alu_n_13,
      \s_registers[1][4]_i_3_0\(2) => reg_alu_n_14,
      \s_registers[1][4]_i_3_0\(1) => reg_alu_n_15,
      \s_registers[1][4]_i_3_0\(0) => reg_alu_n_16,
      \s_registers_reg[0][3]_0\ => reg_file_n_25,
      \s_registers_reg[0][3]_1\ => reg_file_n_26,
      \s_registers_reg[0][5]_0\ => reg_file_n_29,
      \s_registers_reg[0][5]_1\ => reg_file_n_30,
      \s_registers_reg[0][6]_0\ => reg_file_n_27,
      \s_registers_reg[0][7]_0\ => reg_file_n_24,
      \s_registers_reg[0][7]_1\ => reg_file_n_28,
      \s_registers_reg[0][7]_2\ => reg_file_n_35,
      \s_registers_reg[0][7]_3\(0) => \s_registers_reg[0]0\,
      \s_registers_reg[1][6]_0\ => reg_instruction_n_20,
      \s_registers_reg[1][7]_0\(7 downto 0) => \s_registers_reg[1]\(7 downto 0),
      \s_registers_reg[1][7]_1\ => reg_instruction_n_22,
      \s_registers_reg[2][0]_0\ => reg_file_n_8,
      \s_registers_reg[2][0]_1\(0) => reg_instruction_n_14,
      \s_registers_reg[2][2]_0\ => reg_file_n_31,
      \s_registers_reg[2][3]_0\ => reg_file_n_32,
      \s_registers_reg[2][4]_0\ => reg_file_n_18,
      \s_registers_reg[2][5]_0\ => reg_file_n_19,
      \s_registers_reg[3][0]_0\(0) => reg_instruction_n_15,
      \s_registers_reg[3][1]_0\ => reg_file_n_17,
      \s_registers_reg[3][6]_0\ => reg_file_n_20,
      \s_registers_reg[3][7]_0\ => reg_file_n_21
    );
reg_instruction: entity work.turtle_top_level_turtle_processing_un_0_0_instruction_register
     port map (
      CO(0) => reg_file_n_33,
      D(2 downto 0) => \s_current_state__0\(2 downto 0),
      E(0) => \s_registers_reg[1]0\,
      \FSM_sequential_s_current_state_reg[0]\ => reg_instruction_n_54,
      \FSM_sequential_s_current_state_reg[0]_0\(0) => reg_instruction_n_78,
      \FSM_sequential_s_current_state_reg[2]\(14 downto 5) => s_addr(15 downto 6),
      \FSM_sequential_s_current_state_reg[2]\(4 downto 0) => s_addr(4 downto 0),
      \FSM_sequential_s_current_state_reg[2]_0\(2 downto 0) => s_current_state(2 downto 0),
      O(1 downto 0) => data1(1 downto 0),
      Q(5 downto 2) => p_0_in(3 downto 0),
      Q(1) => s_addr_mode,
      Q(0) => reg_instruction_n_9,
      S(3) => reg_instruction_n_0,
      S(2) => reg_instruction_n_1,
      S(1) => reg_instruction_n_2,
      S(0) => reg_instruction_n_3,
      data2(2) => data2(5),
      data2(1 downto 0) => data2(1 downto 0),
      i_clk => i_clk,
      i_data_bus(7 downto 0) => i_data_bus(7 downto 0),
      \i_data_bus[4]\(4 downto 0) => s_addr_new(12 downto 8),
      \i_data_bus[7]\(15) => reg_instruction_n_55,
      \i_data_bus[7]\(14) => reg_instruction_n_56,
      \i_data_bus[7]\(13) => reg_instruction_n_57,
      \i_data_bus[7]\(12) => reg_instruction_n_58,
      \i_data_bus[7]\(11) => reg_instruction_n_59,
      \i_data_bus[7]\(10) => reg_instruction_n_60,
      \i_data_bus[7]\(9) => reg_instruction_n_61,
      \i_data_bus[7]\(8) => reg_instruction_n_62,
      \i_data_bus[7]\(7) => reg_instruction_n_63,
      \i_data_bus[7]\(6) => reg_instruction_n_64,
      \i_data_bus[7]\(5) => reg_instruction_n_65,
      \i_data_bus[7]\(4) => reg_instruction_n_66,
      \i_data_bus[7]\(3) => reg_instruction_n_67,
      \i_data_bus[7]\(2) => reg_instruction_n_68,
      \i_data_bus[7]\(1) => reg_instruction_n_69,
      \i_data_bus[7]\(0) => reg_instruction_n_70,
      \i_data_bus[7]_0\(7 downto 0) => sel0(7 downto 0),
      o_data_bus(7 downto 0) => o_data_bus(7 downto 0),
      \o_data_bus[7]\(15) => \s_addr_new_reg_n_0_[15]\,
      \o_data_bus[7]\(14) => \s_addr_new_reg_n_0_[14]\,
      \o_data_bus[7]\(13) => \s_addr_new_reg_n_0_[13]\,
      \o_data_bus[7]\(12) => \s_addr_new_reg_n_0_[12]\,
      \o_data_bus[7]\(11) => \s_addr_new_reg_n_0_[11]\,
      \o_data_bus[7]\(10) => \s_addr_new_reg_n_0_[10]\,
      \o_data_bus[7]\(9) => \s_addr_new_reg_n_0_[9]\,
      \o_data_bus[7]\(8) => \s_addr_new_reg_n_0_[8]\,
      \o_data_bus[7]\(7) => \s_addr_new_reg_n_0_[7]\,
      \o_data_bus[7]\(6) => \s_addr_new_reg_n_0_[6]\,
      \o_data_bus[7]\(5) => \s_addr_new_reg_n_0_[5]\,
      \o_data_bus[7]\(4) => \s_addr_new_reg_n_0_[4]\,
      \o_data_bus[7]\(3) => \s_addr_new_reg_n_0_[3]\,
      \o_data_bus[7]\(2) => \s_addr_new_reg_n_0_[2]\,
      \o_data_bus[7]\(1) => \s_addr_new_reg_n_0_[1]\,
      \o_data_bus[7]\(0) => \s_addr_new_reg_n_0_[0]\,
      \o_data_bus[7]_0\ => reg_file_n_21,
      o_data_bus_0_sp_1 => reg_file_n_8,
      o_data_bus_1_sp_1 => reg_file_n_17,
      o_data_bus_6_sp_1 => reg_file_n_20,
      o_rw => o_rw,
      o_rw_0 => pc_inst_n_22,
      plusOp(4 downto 0) => plusOp(12 downto 8),
      \s_addr[3]_i_6_0\ => stack_inst_n_8,
      \s_addr[4]_i_3_0\ => stack_inst_n_15,
      \s_addr[5]_i_2_0\ => stack_inst_n_16,
      \s_addr_reg[0]\ => \s_addr[0]_i_4_n_0\,
      \s_addr_reg[14]\(0) => pc_inst_n_23,
      \s_addr_reg[15]\(15) => pc_inst_n_1,
      \s_addr_reg[15]\(14) => pc_inst_n_2,
      \s_addr_reg[15]\(13) => pc_inst_n_3,
      \s_addr_reg[15]\(12) => pc_inst_n_4,
      \s_addr_reg[15]\(11) => pc_inst_n_5,
      \s_addr_reg[15]\(10) => pc_inst_n_6,
      \s_addr_reg[15]\(9) => pc_inst_n_7,
      \s_addr_reg[15]\(8) => pc_inst_n_8,
      \s_addr_reg[15]\(7) => pc_inst_n_9,
      \s_addr_reg[15]\(6) => pc_inst_n_10,
      \s_addr_reg[15]\(5) => pc_inst_n_11,
      \s_addr_reg[15]\(4) => pc_inst_n_12,
      \s_addr_reg[15]\(3) => pc_inst_n_13,
      \s_addr_reg[15]\(2) => pc_inst_n_14,
      \s_addr_reg[15]\(1) => pc_inst_n_15,
      \s_addr_reg[15]\(0) => pc_inst_n_16,
      \s_addr_reg[1]\ => \s_addr[1]_i_4_n_0\,
      \s_addr_reg[2]\ => stack_inst_n_13,
      \s_addr_reg[2]_0\ => stack_inst_n_12,
      \s_addr_reg[3]\ => stack_inst_n_14,
      \s_addr_reg[4]\ => stack_inst_n_9,
      \s_addr_reg[6]\ => stack_inst_n_11,
      \s_addr_reg[7]\ => \s_addr[7]_i_4_n_0\,
      \s_addr_reg[7]_0\ => stack_inst_n_10,
      \s_addr_reg[8]\ => \s_addr[8]_i_2_n_0\,
      s_carry => s_carry,
      s_carry0 => s_carry0,
      s_counter(14 downto 0) => s_counter(15 downto 1),
      s_counter_reg(7 downto 0) => s_counter_reg(7 downto 0),
      \s_counter_reg[1]\(0) => reg_instruction_n_19,
      \s_ir_reg[0]_0\ => reg_instruction_n_16,
      \s_ir_reg[0]_1\(0) => s_pc_en,
      \s_ir_reg[0]_2\ => reg_file_n_34,
      \s_ir_reg[1]_0\ => reg_instruction_n_71,
      \s_ir_reg[1]_1\(0) => s_addr0,
      \s_ir_reg[4]_0\ => reg_instruction_n_22,
      \s_ir_reg[4]_1\ => reg_instruction_n_90,
      \s_ir_reg[5]_0\ => reg_instruction_n_17,
      \s_ir_reg[5]_1\ => reg_instruction_n_20,
      \s_ir_reg[5]_2\ => reg_instruction_n_52,
      \s_ir_reg[6]_0\ => reg_instruction_n_91,
      \s_ir_reg[7]_0\(0) => reg_instruction_n_14,
      \s_ir_reg[7]_1\(0) => reg_instruction_n_15,
      \s_ir_reg[7]_2\ => reg_instruction_n_21,
      \s_ir_reg[7]_3\(0) => \s_registers_reg[0]0\,
      \s_ir_reg[7]_4\ => reg_instruction_n_53,
      s_negative => s_negative,
      s_negative_reg => reg_instruction_n_92,
      s_overflow => s_overflow,
      \s_registers[1][7]_i_8\(7 downto 0) => \s_registers_reg[1]\(7 downto 0),
      \s_registers[1][7]_i_8_0\(7 downto 0) => \s_reg_file_data_out[0]_0\(7 downto 0),
      \s_registers_reg[0][7]\ => reg_instruction_n_89,
      \s_registers_reg[1][2]\ => reg_file_n_31,
      \s_registers_reg[1][2]_0\ => reg_file_n_25,
      \s_registers_reg[1][3]\ => reg_file_n_32,
      \s_registers_reg[1][3]_0\ => reg_file_n_26,
      \s_registers_reg[1][4]\ => reg_file_n_18,
      \s_registers_reg[1][4]_0\ => reg_file_n_24,
      \s_registers_reg[1][5]\ => reg_file_n_29,
      \s_registers_reg[1][5]_0\ => reg_file_n_30,
      \s_registers_reg[1][5]_1\ => reg_file_n_19,
      \s_registers_reg[1][6]\ => reg_file_n_27,
      \s_registers_reg[1][7]\(3) => reg_instruction_n_10,
      \s_registers_reg[1][7]\(2) => reg_instruction_n_11,
      \s_registers_reg[1][7]\(1) => reg_instruction_n_12,
      \s_registers_reg[1][7]\(0) => reg_instruction_n_13,
      \s_registers_reg[1][7]_0\ => reg_file_n_28,
      s_stack_en => s_stack_en,
      s_wait_for_starting_edge => s_wait_for_starting_edge,
      s_zero => s_zero,
      s_zero_reg => reg_instruction_n_93
    );
\s_addr[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_current_state(0),
      I1 => s_current_state(1),
      O => \s_addr[0]_i_4_n_0\
    );
\s_addr[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_current_state(2),
      I1 => s_current_state(1),
      I2 => s_current_state(0),
      O => \s_addr[1]_i_4_n_0\
    );
\s_addr[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => s_current_state(1),
      I1 => s_current_state(2),
      I2 => s_current_state(0),
      O => \s_addr[7]_i_4_n_0\
    );
\s_addr[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_current_state(2),
      I1 => s_current_state(1),
      O => \s_addr[8]_i_2_n_0\
    );
\s_addr_new[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => i_data_bus(2),
      I1 => s_current_state(1),
      I2 => s_current_state(2),
      I3 => s_current_state(0),
      I4 => plusOp(2),
      O => s_addr_new(2)
    );
\s_addr_new[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => i_data_bus(3),
      I1 => s_current_state(1),
      I2 => s_current_state(2),
      I3 => s_current_state(0),
      I4 => plusOp(3),
      O => s_addr_new(3)
    );
\s_addr_new[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => i_data_bus(4),
      I1 => s_current_state(1),
      I2 => s_current_state(2),
      I3 => s_current_state(0),
      I4 => plusOp(4),
      O => s_addr_new(4)
    );
\s_addr_new[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => i_data_bus(5),
      I1 => s_current_state(1),
      I2 => s_current_state(2),
      I3 => s_current_state(0),
      I4 => plusOp(5),
      O => s_addr_new(5)
    );
\s_addr_new[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => i_data_bus(6),
      I1 => s_current_state(1),
      I2 => s_current_state(2),
      I3 => s_current_state(0),
      I4 => plusOp(6),
      O => s_addr_new(6)
    );
\s_addr_new[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => i_data_bus(7),
      I1 => s_current_state(1),
      I2 => s_current_state(2),
      I3 => s_current_state(0),
      I4 => plusOp(7),
      O => s_addr_new(7)
    );
\s_addr_new_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => reg_instruction_n_78,
      CLR => reg_file_n_34,
      D => s_addr_new(0),
      Q => \s_addr_new_reg_n_0_[0]\
    );
\s_addr_new_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => pc_inst_n_23,
      CLR => reg_file_n_34,
      D => s_addr_new(10),
      Q => \s_addr_new_reg_n_0_[10]\
    );
\s_addr_new_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => pc_inst_n_23,
      CLR => reg_file_n_34,
      D => s_addr_new(11),
      Q => \s_addr_new_reg_n_0_[11]\
    );
\s_addr_new_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => pc_inst_n_23,
      CLR => reg_file_n_34,
      D => s_addr_new(12),
      Q => \s_addr_new_reg_n_0_[12]\
    );
\s_addr_new_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => pc_inst_n_23,
      CLR => reg_file_n_34,
      D => s_addr_new(13),
      Q => \s_addr_new_reg_n_0_[13]\
    );
\s_addr_new_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => pc_inst_n_23,
      CLR => reg_file_n_34,
      D => s_addr_new(14),
      Q => \s_addr_new_reg_n_0_[14]\
    );
\s_addr_new_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => pc_inst_n_23,
      CLR => reg_file_n_34,
      D => s_addr_new(15),
      Q => \s_addr_new_reg_n_0_[15]\
    );
\s_addr_new_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => reg_instruction_n_78,
      CLR => reg_file_n_34,
      D => s_addr_new(1),
      Q => \s_addr_new_reg_n_0_[1]\
    );
\s_addr_new_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => reg_instruction_n_78,
      CLR => reg_file_n_34,
      D => s_addr_new(2),
      Q => \s_addr_new_reg_n_0_[2]\
    );
\s_addr_new_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => reg_instruction_n_78,
      CLR => reg_file_n_34,
      D => s_addr_new(3),
      Q => \s_addr_new_reg_n_0_[3]\
    );
\s_addr_new_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => reg_instruction_n_78,
      CLR => reg_file_n_34,
      D => s_addr_new(4),
      Q => \s_addr_new_reg_n_0_[4]\
    );
\s_addr_new_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => reg_instruction_n_78,
      CLR => reg_file_n_34,
      D => s_addr_new(5),
      Q => \s_addr_new_reg_n_0_[5]\
    );
\s_addr_new_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => reg_instruction_n_78,
      CLR => reg_file_n_34,
      D => s_addr_new(6),
      Q => \s_addr_new_reg_n_0_[6]\
    );
\s_addr_new_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => reg_instruction_n_78,
      CLR => reg_file_n_34,
      D => s_addr_new(7),
      Q => \s_addr_new_reg_n_0_[7]\
    );
\s_addr_new_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => pc_inst_n_23,
      CLR => reg_file_n_34,
      D => s_addr_new(8),
      Q => \s_addr_new_reg_n_0_[8]\
    );
\s_addr_new_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => pc_inst_n_23,
      CLR => reg_file_n_34,
      D => s_addr_new(9),
      Q => \s_addr_new_reg_n_0_[9]\
    );
\s_addr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => s_addr0,
      CLR => reg_file_n_34,
      D => s_addr(0),
      Q => o_addr_bus(0)
    );
\s_addr_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => s_addr0,
      CLR => reg_file_n_34,
      D => s_addr(10),
      Q => o_addr_bus(10)
    );
\s_addr_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => s_addr0,
      CLR => reg_file_n_34,
      D => s_addr(11),
      Q => o_addr_bus(11)
    );
\s_addr_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => s_addr0,
      CLR => reg_file_n_34,
      D => s_addr(12),
      Q => o_addr_bus(12)
    );
\s_addr_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => s_addr0,
      CLR => reg_file_n_34,
      D => s_addr(13),
      Q => o_addr_bus(13)
    );
\s_addr_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => s_addr0,
      CLR => reg_file_n_34,
      D => s_addr(14),
      Q => o_addr_bus(14)
    );
\s_addr_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => s_addr0,
      CLR => reg_file_n_34,
      D => s_addr(15),
      Q => o_addr_bus(15)
    );
\s_addr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => s_addr0,
      CLR => reg_file_n_34,
      D => s_addr(1),
      Q => o_addr_bus(1)
    );
\s_addr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => s_addr0,
      CLR => reg_file_n_34,
      D => s_addr(2),
      Q => o_addr_bus(2)
    );
\s_addr_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => s_addr0,
      CLR => reg_file_n_34,
      D => s_addr(3),
      Q => o_addr_bus(3)
    );
\s_addr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => s_addr0,
      CLR => reg_file_n_34,
      D => s_addr(4),
      Q => o_addr_bus(4)
    );
\s_addr_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => s_addr0,
      CLR => reg_file_n_34,
      D => s_addr(5),
      Q => o_addr_bus(5)
    );
\s_addr_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => s_addr0,
      CLR => reg_file_n_34,
      D => s_addr(6),
      Q => o_addr_bus(6)
    );
\s_addr_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => s_addr0,
      CLR => reg_file_n_34,
      D => s_addr(7),
      Q => o_addr_bus(7)
    );
\s_addr_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => s_addr0,
      CLR => reg_file_n_34,
      D => s_addr(8),
      Q => o_addr_bus(8)
    );
\s_addr_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk,
      CE => s_addr0,
      CLR => reg_file_n_34,
      D => s_addr(9),
      Q => o_addr_bus(9)
    );
s_carry_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      CLR => reg_file_n_34,
      D => reg_file_n_36,
      Q => s_carry
    );
s_negative_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      CLR => reg_file_n_34,
      D => reg_instruction_n_92,
      Q => s_negative
    );
s_overflow_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      CLR => reg_file_n_34,
      D => reg_file_n_35,
      Q => s_overflow
    );
s_wait_for_starting_edge_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => '0',
      PRE => reg_file_n_34,
      Q => s_wait_for_starting_edge
    );
s_zero_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      CLR => reg_file_n_34,
      D => reg_instruction_n_93,
      Q => s_zero
    );
stack_inst: entity work.\turtle_top_level_turtle_processing_un_0_0_counter_register__parameterized1\
     port map (
      Q(1) => s_addr_mode,
      Q(0) => reg_instruction_n_9,
      i_clk => i_clk,
      \s_addr_reg[2]\ => reg_instruction_n_53,
      \s_addr_reg[2]_i_4_0\ => reg_instruction_n_16,
      \s_addr_reg[2]_i_4_1\ => reg_instruction_n_52,
      \s_addr_reg[2]_i_4_2\ => reg_instruction_n_71,
      \s_addr_reg[3]\(1) => pc_inst_n_13,
      \s_addr_reg[3]\(0) => pc_inst_n_14,
      s_counter_reg(7 downto 0) => s_counter_reg(7 downto 0),
      \s_counter_reg[2]_0\ => stack_inst_n_13,
      \s_counter_reg[3]_0\ => stack_inst_n_8,
      \s_counter_reg[3]_1\ => stack_inst_n_14,
      \s_counter_reg[3]_2\ => stack_inst_n_15,
      \s_counter_reg[4]_0\ => stack_inst_n_9,
      \s_counter_reg[4]_1\(0) => reg_instruction_n_19,
      \s_counter_reg[5]_0\ => stack_inst_n_11,
      \s_counter_reg[5]_1\ => stack_inst_n_16,
      \s_counter_reg[7]_0\ => stack_inst_n_10,
      \s_counter_reg[7]_1\ => reg_file_n_34,
      \s_ir_reg[3]\ => stack_inst_n_12,
      s_stack_en => s_stack_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity turtle_top_level_turtle_processing_un_0_0 is
  port (
    i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_data_bus : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_data_bus : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_rw : out STD_LOGIC;
    o_addr_bus : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of turtle_top_level_turtle_processing_un_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of turtle_top_level_turtle_processing_un_0_0 : entity is "turtle_top_level_turtle_processing_un_0_0,turtle_processing_unit,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of turtle_top_level_turtle_processing_un_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of turtle_top_level_turtle_processing_un_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of turtle_top_level_turtle_processing_un_0_0 : entity is "turtle_processing_unit,Vivado 2024.1";
end turtle_top_level_turtle_processing_un_0_0;

architecture STRUCTURE of turtle_top_level_turtle_processing_un_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of i_clk : signal is "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_rst, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN turtle_top_level_clk_50MHz, INSERT_VIP 0";
  attribute x_interface_info of i_rst : signal is "xilinx.com:signal:reset:1.0 i_rst RST";
  attribute x_interface_parameter of i_rst : signal is "XIL_INTERFACENAME i_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.turtle_top_level_turtle_processing_un_0_0_turtle_processing_unit
     port map (
      i_clk => i_clk,
      i_data_bus(7 downto 0) => i_data_bus(7 downto 0),
      i_rst => i_rst,
      o_addr_bus(15 downto 0) => o_addr_bus(15 downto 0),
      o_data_bus(7 downto 0) => o_data_bus(7 downto 0),
      o_rw => o_rw
    );
end STRUCTURE;
