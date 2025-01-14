-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Tue Jan 14 11:58:24 2025
-- Host        : GBNicoArch running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/nicoth/projects/TurtleCore/ip_repo/src/turtle_top_level/ip/turtle_top_level_MMU_0_0/turtle_top_level_MMU_0_0_sim_netlist.vhdl
-- Design      : turtle_top_level_MMU_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity turtle_top_level_MMU_0_0_MMU is
  port (
    o_debug_bus : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_read_cpu_bus : out STD_LOGIC_VECTOR ( 7 downto 0 );
    i_addr_bus_9_sp_1 : out STD_LOGIC;
    i_addr_bus_4_sp_1 : out STD_LOGIC;
    i_addr_bus_2_sp_1 : out STD_LOGIC;
    o_output_pins : out STD_LOGIC_VECTOR ( 15 downto 0 );
    i_write_cpu_bus : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_rw : in STD_LOGIC;
    i_data_ROM : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_addr_bus : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_data_RAM : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_input_pins : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_rstn : in STD_LOGIC;
    i_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of turtle_top_level_MMU_0_0_MMU : entity is "MMU";
end turtle_top_level_MMU_0_0_MMU;

architecture STRUCTURE of turtle_top_level_MMU_0_0_MMU is
  signal i_addr_bus_2_sn_1 : STD_LOGIC;
  signal i_addr_bus_4_sn_1 : STD_LOGIC;
  signal i_addr_bus_9_sn_1 : STD_LOGIC;
  signal \o_debug_bus[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_debug_bus[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \o_debug_bus[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_debug_bus[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \o_debug_bus[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_debug_bus[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \o_debug_bus[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_debug_bus[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \o_debug_bus[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_debug_bus[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \o_debug_bus[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_debug_bus[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \o_debug_bus[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_debug_bus[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \o_debug_bus[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_debug_bus[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \o_debug_bus[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \o_debug_bus[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \o_debug_bus[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \o_debug_bus[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \^o_output_pins\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \o_read_cpu_bus[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal \s_output_pins_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \s_output_pins_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \s_output_pins_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \s_output_pins_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \s_output_pins_reg[15]_i_6_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_debug_bus[7]_INST_0_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_debug_bus[7]_INST_0_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_debug_bus[7]_INST_0_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_debug_bus[7]_INST_0_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_read_cpu_bus[7]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_output_pins_reg[15]_i_6\ : label is "soft_lutpair2";
begin
  i_addr_bus_2_sp_1 <= i_addr_bus_2_sn_1;
  i_addr_bus_4_sp_1 <= i_addr_bus_4_sn_1;
  i_addr_bus_9_sp_1 <= i_addr_bus_9_sn_1;
  o_output_pins(15 downto 0) <= \^o_output_pins\(15 downto 0);
\o_debug_bus[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => i_write_cpu_bus(0),
      I1 => i_rw,
      I2 => \o_debug_bus[0]_INST_0_i_1_n_0\,
      I3 => p_0_out(0),
      I4 => \o_debug_bus[7]_INST_0_i_3_n_0\,
      O => o_debug_bus(0)
    );
\o_debug_bus[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAFFFFA8AA0000"
    )
        port map (
      I0 => i_data_RAM(0),
      I1 => \o_debug_bus[7]_INST_0_i_4_n_0\,
      I2 => i_addr_bus_9_sn_1,
      I3 => i_addr_bus(10),
      I4 => i_addr_bus(15),
      I5 => i_data_ROM(0),
      O => \o_debug_bus[0]_INST_0_i_1_n_0\
    );
\o_debug_bus[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE22FF00F000FF00"
    )
        port map (
      I0 => \o_debug_bus[0]_INST_0_i_3_n_0\,
      I1 => i_addr_bus_2_sn_1,
      I2 => \o_debug_bus[7]_INST_0_i_6_n_0\,
      I3 => i_data_RAM(0),
      I4 => i_addr_bus(4),
      I5 => i_addr_bus(5),
      O => p_0_out(0)
    );
\o_debug_bus[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => i_input_pins(0),
      I1 => \^o_output_pins\(0),
      I2 => i_addr_bus(1),
      I3 => i_addr_bus(0),
      I4 => i_input_pins(8),
      I5 => \^o_output_pins\(8),
      O => \o_debug_bus[0]_INST_0_i_3_n_0\
    );
\o_debug_bus[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => i_write_cpu_bus(1),
      I1 => i_rw,
      I2 => \o_debug_bus[1]_INST_0_i_1_n_0\,
      I3 => p_0_out(1),
      I4 => \o_debug_bus[7]_INST_0_i_3_n_0\,
      O => o_debug_bus(1)
    );
\o_debug_bus[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAFFFFA8AA0000"
    )
        port map (
      I0 => i_data_RAM(1),
      I1 => \o_debug_bus[7]_INST_0_i_4_n_0\,
      I2 => i_addr_bus_9_sn_1,
      I3 => i_addr_bus(10),
      I4 => i_addr_bus(15),
      I5 => i_data_ROM(1),
      O => \o_debug_bus[1]_INST_0_i_1_n_0\
    );
\o_debug_bus[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE22FF00F000FF00"
    )
        port map (
      I0 => \o_debug_bus[1]_INST_0_i_3_n_0\,
      I1 => i_addr_bus_2_sn_1,
      I2 => \o_debug_bus[7]_INST_0_i_6_n_0\,
      I3 => i_data_RAM(1),
      I4 => i_addr_bus(4),
      I5 => i_addr_bus(5),
      O => p_0_out(1)
    );
\o_debug_bus[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => i_input_pins(1),
      I1 => \^o_output_pins\(1),
      I2 => i_addr_bus(1),
      I3 => i_addr_bus(0),
      I4 => i_input_pins(9),
      I5 => \^o_output_pins\(9),
      O => \o_debug_bus[1]_INST_0_i_3_n_0\
    );
\o_debug_bus[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => i_write_cpu_bus(2),
      I1 => i_rw,
      I2 => \o_debug_bus[2]_INST_0_i_1_n_0\,
      I3 => p_0_out(2),
      I4 => \o_debug_bus[7]_INST_0_i_3_n_0\,
      O => o_debug_bus(2)
    );
\o_debug_bus[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAFFFFA8AA0000"
    )
        port map (
      I0 => i_data_RAM(2),
      I1 => \o_debug_bus[7]_INST_0_i_4_n_0\,
      I2 => i_addr_bus_9_sn_1,
      I3 => i_addr_bus(10),
      I4 => i_addr_bus(15),
      I5 => i_data_ROM(2),
      O => \o_debug_bus[2]_INST_0_i_1_n_0\
    );
\o_debug_bus[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE22FF00F000FF00"
    )
        port map (
      I0 => \o_debug_bus[2]_INST_0_i_3_n_0\,
      I1 => i_addr_bus_2_sn_1,
      I2 => \o_debug_bus[7]_INST_0_i_6_n_0\,
      I3 => i_data_RAM(2),
      I4 => i_addr_bus(4),
      I5 => i_addr_bus(5),
      O => p_0_out(2)
    );
\o_debug_bus[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => i_input_pins(2),
      I1 => \^o_output_pins\(2),
      I2 => i_addr_bus(1),
      I3 => i_addr_bus(0),
      I4 => i_input_pins(10),
      I5 => \^o_output_pins\(10),
      O => \o_debug_bus[2]_INST_0_i_3_n_0\
    );
\o_debug_bus[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => i_write_cpu_bus(3),
      I1 => i_rw,
      I2 => \o_debug_bus[3]_INST_0_i_1_n_0\,
      I3 => p_0_out(3),
      I4 => \o_debug_bus[7]_INST_0_i_3_n_0\,
      O => o_debug_bus(3)
    );
\o_debug_bus[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAFFFFA8AA0000"
    )
        port map (
      I0 => i_data_RAM(3),
      I1 => \o_debug_bus[7]_INST_0_i_4_n_0\,
      I2 => i_addr_bus_9_sn_1,
      I3 => i_addr_bus(10),
      I4 => i_addr_bus(15),
      I5 => i_data_ROM(3),
      O => \o_debug_bus[3]_INST_0_i_1_n_0\
    );
\o_debug_bus[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE22FF00F000FF00"
    )
        port map (
      I0 => \o_debug_bus[3]_INST_0_i_3_n_0\,
      I1 => i_addr_bus_2_sn_1,
      I2 => \o_debug_bus[7]_INST_0_i_6_n_0\,
      I3 => i_data_RAM(3),
      I4 => i_addr_bus(4),
      I5 => i_addr_bus(5),
      O => p_0_out(3)
    );
\o_debug_bus[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => i_input_pins(3),
      I1 => \^o_output_pins\(3),
      I2 => i_addr_bus(1),
      I3 => i_addr_bus(0),
      I4 => i_input_pins(11),
      I5 => \^o_output_pins\(11),
      O => \o_debug_bus[3]_INST_0_i_3_n_0\
    );
\o_debug_bus[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => i_write_cpu_bus(4),
      I1 => i_rw,
      I2 => \o_debug_bus[4]_INST_0_i_1_n_0\,
      I3 => p_0_out(4),
      I4 => \o_debug_bus[7]_INST_0_i_3_n_0\,
      O => o_debug_bus(4)
    );
\o_debug_bus[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAFFFFA8AA0000"
    )
        port map (
      I0 => i_data_RAM(4),
      I1 => \o_debug_bus[7]_INST_0_i_4_n_0\,
      I2 => i_addr_bus_9_sn_1,
      I3 => i_addr_bus(10),
      I4 => i_addr_bus(15),
      I5 => i_data_ROM(4),
      O => \o_debug_bus[4]_INST_0_i_1_n_0\
    );
\o_debug_bus[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE22FF00F000FF00"
    )
        port map (
      I0 => \o_debug_bus[4]_INST_0_i_3_n_0\,
      I1 => i_addr_bus_2_sn_1,
      I2 => \o_debug_bus[7]_INST_0_i_6_n_0\,
      I3 => i_data_RAM(4),
      I4 => i_addr_bus(4),
      I5 => i_addr_bus(5),
      O => p_0_out(4)
    );
\o_debug_bus[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => i_input_pins(4),
      I1 => \^o_output_pins\(4),
      I2 => i_addr_bus(1),
      I3 => i_addr_bus(0),
      I4 => i_input_pins(12),
      I5 => \^o_output_pins\(12),
      O => \o_debug_bus[4]_INST_0_i_3_n_0\
    );
\o_debug_bus[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => i_write_cpu_bus(5),
      I1 => i_rw,
      I2 => \o_debug_bus[5]_INST_0_i_1_n_0\,
      I3 => p_0_out(5),
      I4 => \o_debug_bus[7]_INST_0_i_3_n_0\,
      O => o_debug_bus(5)
    );
\o_debug_bus[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAFFFFA8AA0000"
    )
        port map (
      I0 => i_data_RAM(5),
      I1 => \o_debug_bus[7]_INST_0_i_4_n_0\,
      I2 => i_addr_bus_9_sn_1,
      I3 => i_addr_bus(10),
      I4 => i_addr_bus(15),
      I5 => i_data_ROM(5),
      O => \o_debug_bus[5]_INST_0_i_1_n_0\
    );
\o_debug_bus[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE22FF00F000FF00"
    )
        port map (
      I0 => \o_debug_bus[5]_INST_0_i_3_n_0\,
      I1 => i_addr_bus_2_sn_1,
      I2 => \o_debug_bus[7]_INST_0_i_6_n_0\,
      I3 => i_data_RAM(5),
      I4 => i_addr_bus(4),
      I5 => i_addr_bus(5),
      O => p_0_out(5)
    );
\o_debug_bus[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => i_input_pins(5),
      I1 => \^o_output_pins\(5),
      I2 => i_addr_bus(1),
      I3 => i_addr_bus(0),
      I4 => i_input_pins(13),
      I5 => \^o_output_pins\(13),
      O => \o_debug_bus[5]_INST_0_i_3_n_0\
    );
\o_debug_bus[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => i_write_cpu_bus(6),
      I1 => i_rw,
      I2 => \o_debug_bus[6]_INST_0_i_1_n_0\,
      I3 => p_0_out(6),
      I4 => \o_debug_bus[7]_INST_0_i_3_n_0\,
      O => o_debug_bus(6)
    );
\o_debug_bus[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAFFFFA8AA0000"
    )
        port map (
      I0 => i_data_RAM(6),
      I1 => \o_debug_bus[7]_INST_0_i_4_n_0\,
      I2 => i_addr_bus_9_sn_1,
      I3 => i_addr_bus(10),
      I4 => i_addr_bus(15),
      I5 => i_data_ROM(6),
      O => \o_debug_bus[6]_INST_0_i_1_n_0\
    );
\o_debug_bus[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE22FF00F000FF00"
    )
        port map (
      I0 => \o_debug_bus[6]_INST_0_i_3_n_0\,
      I1 => i_addr_bus_2_sn_1,
      I2 => \o_debug_bus[7]_INST_0_i_6_n_0\,
      I3 => i_data_RAM(6),
      I4 => i_addr_bus(4),
      I5 => i_addr_bus(5),
      O => p_0_out(6)
    );
\o_debug_bus[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => i_input_pins(6),
      I1 => \^o_output_pins\(6),
      I2 => i_addr_bus(1),
      I3 => i_addr_bus(0),
      I4 => i_input_pins(14),
      I5 => \^o_output_pins\(14),
      O => \o_debug_bus[6]_INST_0_i_3_n_0\
    );
\o_debug_bus[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => i_write_cpu_bus(7),
      I1 => i_rw,
      I2 => \o_debug_bus[7]_INST_0_i_1_n_0\,
      I3 => p_0_out(7),
      I4 => \o_debug_bus[7]_INST_0_i_3_n_0\,
      O => o_debug_bus(7)
    );
\o_debug_bus[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAFFFFA8AA0000"
    )
        port map (
      I0 => i_data_RAM(7),
      I1 => \o_debug_bus[7]_INST_0_i_4_n_0\,
      I2 => i_addr_bus_9_sn_1,
      I3 => i_addr_bus(10),
      I4 => i_addr_bus(15),
      I5 => i_data_ROM(7),
      O => \o_debug_bus[7]_INST_0_i_1_n_0\
    );
\o_debug_bus[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE22FF00F000FF00"
    )
        port map (
      I0 => \o_debug_bus[7]_INST_0_i_5_n_0\,
      I1 => i_addr_bus_2_sn_1,
      I2 => \o_debug_bus[7]_INST_0_i_6_n_0\,
      I3 => i_data_RAM(7),
      I4 => i_addr_bus(4),
      I5 => i_addr_bus(5),
      O => p_0_out(7)
    );
\o_debug_bus[7]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => i_addr_bus(15),
      I1 => \o_debug_bus[7]_INST_0_i_7_n_0\,
      I2 => i_addr_bus(11),
      I3 => i_addr_bus_9_sn_1,
      I4 => i_addr_bus(10),
      O => \o_debug_bus[7]_INST_0_i_3_n_0\
    );
\o_debug_bus[7]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => i_addr_bus(13),
      I1 => i_addr_bus(8),
      I2 => i_addr_bus(14),
      I3 => i_addr_bus(15),
      I4 => i_addr_bus(11),
      O => \o_debug_bus[7]_INST_0_i_4_n_0\
    );
\o_debug_bus[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => i_input_pins(7),
      I1 => \^o_output_pins\(7),
      I2 => i_addr_bus(1),
      I3 => i_addr_bus(0),
      I4 => i_input_pins(15),
      I5 => \^o_output_pins\(15),
      O => \o_debug_bus[7]_INST_0_i_5_n_0\
    );
\o_debug_bus[7]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBF"
    )
        port map (
      I0 => i_addr_bus(3),
      I1 => i_addr_bus(0),
      I2 => i_addr_bus(1),
      I3 => i_addr_bus(2),
      O => \o_debug_bus[7]_INST_0_i_6_n_0\
    );
\o_debug_bus[7]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => i_addr_bus(15),
      I1 => i_addr_bus(14),
      I2 => i_addr_bus(8),
      I3 => i_addr_bus(13),
      O => \o_debug_bus[7]_INST_0_i_7_n_0\
    );
\o_read_cpu_bus[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => i_data_ROM(0),
      I1 => i_addr_bus(15),
      I2 => \o_read_cpu_bus[7]_INST_0_i_1_n_0\,
      I3 => i_data_RAM(0),
      I4 => p_0_out(0),
      I5 => \o_debug_bus[7]_INST_0_i_3_n_0\,
      O => o_read_cpu_bus(0)
    );
\o_read_cpu_bus[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => i_data_ROM(1),
      I1 => i_addr_bus(15),
      I2 => \o_read_cpu_bus[7]_INST_0_i_1_n_0\,
      I3 => i_data_RAM(1),
      I4 => p_0_out(1),
      I5 => \o_debug_bus[7]_INST_0_i_3_n_0\,
      O => o_read_cpu_bus(1)
    );
\o_read_cpu_bus[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => i_data_ROM(2),
      I1 => i_addr_bus(15),
      I2 => \o_read_cpu_bus[7]_INST_0_i_1_n_0\,
      I3 => i_data_RAM(2),
      I4 => p_0_out(2),
      I5 => \o_debug_bus[7]_INST_0_i_3_n_0\,
      O => o_read_cpu_bus(2)
    );
\o_read_cpu_bus[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => i_data_ROM(3),
      I1 => i_addr_bus(15),
      I2 => \o_read_cpu_bus[7]_INST_0_i_1_n_0\,
      I3 => i_data_RAM(3),
      I4 => p_0_out(3),
      I5 => \o_debug_bus[7]_INST_0_i_3_n_0\,
      O => o_read_cpu_bus(3)
    );
\o_read_cpu_bus[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => i_data_ROM(4),
      I1 => i_addr_bus(15),
      I2 => \o_read_cpu_bus[7]_INST_0_i_1_n_0\,
      I3 => i_data_RAM(4),
      I4 => p_0_out(4),
      I5 => \o_debug_bus[7]_INST_0_i_3_n_0\,
      O => o_read_cpu_bus(4)
    );
\o_read_cpu_bus[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => i_data_ROM(5),
      I1 => i_addr_bus(15),
      I2 => \o_read_cpu_bus[7]_INST_0_i_1_n_0\,
      I3 => i_data_RAM(5),
      I4 => p_0_out(5),
      I5 => \o_debug_bus[7]_INST_0_i_3_n_0\,
      O => o_read_cpu_bus(5)
    );
\o_read_cpu_bus[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => i_data_ROM(6),
      I1 => i_addr_bus(15),
      I2 => \o_read_cpu_bus[7]_INST_0_i_1_n_0\,
      I3 => i_data_RAM(6),
      I4 => p_0_out(6),
      I5 => \o_debug_bus[7]_INST_0_i_3_n_0\,
      O => o_read_cpu_bus(6)
    );
\o_read_cpu_bus[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => i_data_ROM(7),
      I1 => i_addr_bus(15),
      I2 => \o_read_cpu_bus[7]_INST_0_i_1_n_0\,
      I3 => i_data_RAM(7),
      I4 => p_0_out(7),
      I5 => \o_debug_bus[7]_INST_0_i_3_n_0\,
      O => o_read_cpu_bus(7)
    );
\o_read_cpu_bus[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0000"
    )
        port map (
      I0 => \o_debug_bus[7]_INST_0_i_7_n_0\,
      I1 => i_addr_bus(11),
      I2 => i_addr_bus_9_sn_1,
      I3 => i_addr_bus(10),
      I4 => i_addr_bus(15),
      O => \o_read_cpu_bus[7]_INST_0_i_1_n_0\
    );
o_write_RAM_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => i_addr_bus(4),
      I1 => i_addr_bus(5),
      I2 => i_addr_bus(10),
      I3 => i_addr_bus(11),
      I4 => \o_debug_bus[7]_INST_0_i_7_n_0\,
      O => i_addr_bus_4_sn_1
    );
o_write_RAM_INST_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => i_addr_bus(2),
      I1 => i_addr_bus(3),
      O => i_addr_bus_2_sn_1
    );
o_write_RAM_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => i_addr_bus(9),
      I1 => i_addr_bus(12),
      I2 => i_addr_bus(7),
      I3 => i_addr_bus(6),
      O => i_addr_bus_9_sn_1
    );
\s_output_pins_reg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A0A080A0A0A"
    )
        port map (
      I0 => \s_output_pins_reg[15]_i_3_n_0\,
      I1 => i_addr_bus_9_sn_1,
      I2 => i_addr_bus_4_sn_1,
      I3 => i_addr_bus(1),
      I4 => i_addr_bus(0),
      I5 => i_addr_bus_2_sn_1,
      O => p_1_in(15)
    );
\s_output_pins_reg[15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_rstn,
      O => \s_output_pins_reg[15]_i_2_n_0\
    );
\s_output_pins_reg[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \s_output_pins_reg[15]_i_4_n_0\,
      I1 => \s_output_pins_reg[15]_i_5_n_0\,
      I2 => \s_output_pins_reg[15]_i_6_n_0\,
      I3 => i_addr_bus(7),
      I4 => i_addr_bus(2),
      I5 => i_rw,
      O => \s_output_pins_reg[15]_i_3_n_0\
    );
\s_output_pins_reg[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5D500D500D500D5"
    )
        port map (
      I0 => i_addr_bus(8),
      I1 => i_addr_bus(6),
      I2 => i_addr_bus(7),
      I3 => i_addr_bus(5),
      I4 => i_addr_bus(3),
      I5 => i_addr_bus(4),
      O => \s_output_pins_reg[15]_i_4_n_0\
    );
\s_output_pins_reg[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5D500D500D500D5"
    )
        port map (
      I0 => i_addr_bus(14),
      I1 => i_addr_bus(12),
      I2 => i_addr_bus(13),
      I3 => i_addr_bus(11),
      I4 => i_addr_bus(9),
      I5 => i_addr_bus(10),
      O => \s_output_pins_reg[15]_i_5_n_0\
    );
\s_output_pins_reg[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_addr_bus(1),
      I1 => i_addr_bus(0),
      O => \s_output_pins_reg[15]_i_6_n_0\
    );
\s_output_pins_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => i_rw,
      I1 => i_addr_bus_9_sn_1,
      I2 => i_addr_bus_4_sn_1,
      I3 => i_addr_bus(1),
      I4 => i_addr_bus(0),
      I5 => i_addr_bus_2_sn_1,
      O => p_1_in(7)
    );
\s_output_pins_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_1_in(7),
      CLR => \s_output_pins_reg[15]_i_2_n_0\,
      D => i_write_cpu_bus(0),
      Q => \^o_output_pins\(0)
    );
\s_output_pins_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_1_in(15),
      CLR => \s_output_pins_reg[15]_i_2_n_0\,
      D => i_write_cpu_bus(2),
      Q => \^o_output_pins\(10)
    );
\s_output_pins_reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_1_in(15),
      CLR => \s_output_pins_reg[15]_i_2_n_0\,
      D => i_write_cpu_bus(3),
      Q => \^o_output_pins\(11)
    );
\s_output_pins_reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_1_in(15),
      CLR => \s_output_pins_reg[15]_i_2_n_0\,
      D => i_write_cpu_bus(4),
      Q => \^o_output_pins\(12)
    );
\s_output_pins_reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_1_in(15),
      CLR => \s_output_pins_reg[15]_i_2_n_0\,
      D => i_write_cpu_bus(5),
      Q => \^o_output_pins\(13)
    );
\s_output_pins_reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_1_in(15),
      CLR => \s_output_pins_reg[15]_i_2_n_0\,
      D => i_write_cpu_bus(6),
      Q => \^o_output_pins\(14)
    );
\s_output_pins_reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_1_in(15),
      CLR => \s_output_pins_reg[15]_i_2_n_0\,
      D => i_write_cpu_bus(7),
      Q => \^o_output_pins\(15)
    );
\s_output_pins_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_1_in(7),
      CLR => \s_output_pins_reg[15]_i_2_n_0\,
      D => i_write_cpu_bus(1),
      Q => \^o_output_pins\(1)
    );
\s_output_pins_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_1_in(7),
      CLR => \s_output_pins_reg[15]_i_2_n_0\,
      D => i_write_cpu_bus(2),
      Q => \^o_output_pins\(2)
    );
\s_output_pins_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_1_in(7),
      CLR => \s_output_pins_reg[15]_i_2_n_0\,
      D => i_write_cpu_bus(3),
      Q => \^o_output_pins\(3)
    );
\s_output_pins_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_1_in(7),
      CLR => \s_output_pins_reg[15]_i_2_n_0\,
      D => i_write_cpu_bus(4),
      Q => \^o_output_pins\(4)
    );
\s_output_pins_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_1_in(7),
      CLR => \s_output_pins_reg[15]_i_2_n_0\,
      D => i_write_cpu_bus(5),
      Q => \^o_output_pins\(5)
    );
\s_output_pins_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_1_in(7),
      CLR => \s_output_pins_reg[15]_i_2_n_0\,
      D => i_write_cpu_bus(6),
      Q => \^o_output_pins\(6)
    );
\s_output_pins_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_1_in(7),
      CLR => \s_output_pins_reg[15]_i_2_n_0\,
      D => i_write_cpu_bus(7),
      Q => \^o_output_pins\(7)
    );
\s_output_pins_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_1_in(15),
      CLR => \s_output_pins_reg[15]_i_2_n_0\,
      D => i_write_cpu_bus(0),
      Q => \^o_output_pins\(8)
    );
\s_output_pins_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => p_1_in(15),
      CLR => \s_output_pins_reg[15]_i_2_n_0\,
      D => i_write_cpu_bus(1),
      Q => \^o_output_pins\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity turtle_top_level_MMU_0_0 is
  port (
    i_clk : in STD_LOGIC;
    i_rstn : in STD_LOGIC;
    i_rw : in STD_LOGIC;
    i_write_cpu_bus : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_addr_bus : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_data_RAM : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_data_ROM : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_input_pins : in STD_LOGIC_VECTOR ( 15 downto 0 );
    o_debug_bus : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_read_cpu_bus : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_addr_RAM : out STD_LOGIC_VECTOR ( 14 downto 0 );
    o_write_RAM : out STD_LOGIC;
    o_output_pins : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_addr_ROM : out STD_LOGIC_VECTOR ( 14 downto 0 );
    M_AXI_ACLK : out STD_LOGIC;
    M_AXI_ARESETn : out STD_LOGIC;
    M_AXI_AWID : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWUSER : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_WID : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_WLAST : out STD_LOGIC;
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BID : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_ARID : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARUSER : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_ARREADY : in STD_LOGIC;
    M_AXI_RID : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_RDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RLAST : in STD_LOGIC;
    M_AXI_RVALID : in STD_LOGIC;
    M_AXI_RREADY : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of turtle_top_level_MMU_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of turtle_top_level_MMU_0_0 : entity is "turtle_top_level_MMU_0_0,MMU,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of turtle_top_level_MMU_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of turtle_top_level_MMU_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of turtle_top_level_MMU_0_0 : entity is "MMU,Vivado 2024.1";
end turtle_top_level_MMU_0_0;

architecture STRUCTURE of turtle_top_level_MMU_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal U0_n_16 : STD_LOGIC;
  signal U0_n_17 : STD_LOGIC;
  signal U0_n_18 : STD_LOGIC;
  signal \^i_addr_bus\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^i_clk\ : STD_LOGIC;
  signal \^i_write_cpu_bus\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of M_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of M_AXI_ACLK : signal is "XIL_INTERFACENAME M_AXI_ACLK, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET M_AXI_ARESETn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN turtle_top_level_MMU_0_0_M_AXI_ACLK, INSERT_VIP 0";
  attribute x_interface_info of M_AXI_ARESETn : signal is "xilinx.com:signal:reset:1.0 M_AXI_ARESETn RST";
  attribute x_interface_parameter of M_AXI_ARESETn : signal is "XIL_INTERFACENAME M_AXI_ARESETn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of M_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute x_interface_info of M_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute x_interface_info of M_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute x_interface_info of M_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute x_interface_info of M_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute x_interface_info of M_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute x_interface_info of M_AXI_RLAST : signal is "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  attribute x_interface_info of M_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute x_interface_info of M_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute x_interface_info of M_AXI_WLAST : signal is "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  attribute x_interface_info of M_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute x_interface_info of M_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute x_interface_info of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute x_interface_parameter of i_clk : signal is "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_rstn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN turtle_top_level_clk_50MHz, INSERT_VIP 0";
  attribute x_interface_info of i_rstn : signal is "xilinx.com:signal:reset:1.0 i_rstn RST";
  attribute x_interface_parameter of i_rstn : signal is "XIL_INTERFACENAME i_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of M_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute x_interface_info of M_AXI_ARBURST : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  attribute x_interface_info of M_AXI_ARCACHE : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  attribute x_interface_info of M_AXI_ARID : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARID";
  attribute x_interface_info of M_AXI_ARLEN : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  attribute x_interface_info of M_AXI_ARLOCK : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK";
  attribute x_interface_info of M_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute x_interface_info of M_AXI_ARQOS : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARQOS";
  attribute x_interface_info of M_AXI_ARSIZE : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  attribute x_interface_info of M_AXI_ARUSER : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARUSER";
  attribute x_interface_info of M_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute x_interface_info of M_AXI_AWBURST : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  attribute x_interface_info of M_AXI_AWCACHE : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  attribute x_interface_info of M_AXI_AWID : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWID";
  attribute x_interface_parameter of M_AXI_AWID : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 8, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 3, ADDR_WIDTH 16, AWUSER_WIDTH 5, ARUSER_WIDTH 5, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN turtle_top_level_MMU_0_0_M_AXI_ACLK, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of M_AXI_AWLEN : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  attribute x_interface_info of M_AXI_AWLOCK : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK";
  attribute x_interface_info of M_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute x_interface_info of M_AXI_AWQOS : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWQOS";
  attribute x_interface_info of M_AXI_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  attribute x_interface_info of M_AXI_AWUSER : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWUSER";
  attribute x_interface_info of M_AXI_BID : signal is "xilinx.com:interface:aximm:1.0 M_AXI BID";
  attribute x_interface_info of M_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute x_interface_info of M_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute x_interface_info of M_AXI_RID : signal is "xilinx.com:interface:aximm:1.0 M_AXI RID";
  attribute x_interface_info of M_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute x_interface_info of M_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute x_interface_info of M_AXI_WID : signal is "xilinx.com:interface:aximm:1.0 M_AXI WID";
  attribute x_interface_info of M_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
begin
  M_AXI_ACLK <= \^i_clk\;
  M_AXI_ARADDR(15) <= \<const0>\;
  M_AXI_ARADDR(14) <= \<const0>\;
  M_AXI_ARADDR(13) <= \<const0>\;
  M_AXI_ARADDR(12) <= \<const0>\;
  M_AXI_ARADDR(11) <= \<const0>\;
  M_AXI_ARADDR(10) <= \<const0>\;
  M_AXI_ARADDR(9) <= \<const0>\;
  M_AXI_ARADDR(8) <= \<const0>\;
  M_AXI_ARADDR(7) <= \<const0>\;
  M_AXI_ARADDR(6) <= \<const0>\;
  M_AXI_ARADDR(5) <= \<const0>\;
  M_AXI_ARADDR(4) <= \<const0>\;
  M_AXI_ARADDR(3) <= \<const0>\;
  M_AXI_ARADDR(2) <= \<const0>\;
  M_AXI_ARADDR(1) <= \<const0>\;
  M_AXI_ARADDR(0) <= \<const0>\;
  M_AXI_ARBURST(1) <= \<const0>\;
  M_AXI_ARBURST(0) <= \<const1>\;
  M_AXI_ARCACHE(3) <= \<const0>\;
  M_AXI_ARCACHE(2) <= \<const0>\;
  M_AXI_ARCACHE(1) <= \<const0>\;
  M_AXI_ARCACHE(0) <= \<const0>\;
  M_AXI_ARESETn <= \<const0>\;
  M_AXI_ARID(2) <= \<const0>\;
  M_AXI_ARID(1) <= \<const0>\;
  M_AXI_ARID(0) <= \<const0>\;
  M_AXI_ARLEN(7) <= \<const0>\;
  M_AXI_ARLEN(6) <= \<const0>\;
  M_AXI_ARLEN(5) <= \<const0>\;
  M_AXI_ARLEN(4) <= \<const0>\;
  M_AXI_ARLEN(3) <= \<const0>\;
  M_AXI_ARLEN(2) <= \<const0>\;
  M_AXI_ARLEN(1) <= \<const0>\;
  M_AXI_ARLEN(0) <= \<const0>\;
  M_AXI_ARLOCK(1) <= \<const0>\;
  M_AXI_ARLOCK(0) <= \<const0>\;
  M_AXI_ARPROT(2) <= \<const0>\;
  M_AXI_ARPROT(1) <= \<const0>\;
  M_AXI_ARPROT(0) <= \<const0>\;
  M_AXI_ARQOS(3) <= \<const0>\;
  M_AXI_ARQOS(2) <= \<const0>\;
  M_AXI_ARQOS(1) <= \<const0>\;
  M_AXI_ARQOS(0) <= \<const0>\;
  M_AXI_ARSIZE(2) <= \<const0>\;
  M_AXI_ARSIZE(1) <= \<const0>\;
  M_AXI_ARSIZE(0) <= \<const0>\;
  M_AXI_ARUSER(4) <= \<const0>\;
  M_AXI_ARUSER(3) <= \<const0>\;
  M_AXI_ARUSER(2) <= \<const0>\;
  M_AXI_ARUSER(1) <= \<const0>\;
  M_AXI_ARUSER(0) <= \<const0>\;
  M_AXI_ARVALID <= \<const0>\;
  M_AXI_AWADDR(15) <= \<const0>\;
  M_AXI_AWADDR(14) <= \<const0>\;
  M_AXI_AWADDR(13) <= \<const0>\;
  M_AXI_AWADDR(12) <= \<const0>\;
  M_AXI_AWADDR(11) <= \<const0>\;
  M_AXI_AWADDR(10) <= \<const0>\;
  M_AXI_AWADDR(9) <= \<const0>\;
  M_AXI_AWADDR(8) <= \<const0>\;
  M_AXI_AWADDR(7) <= \<const0>\;
  M_AXI_AWADDR(6) <= \<const0>\;
  M_AXI_AWADDR(5) <= \<const0>\;
  M_AXI_AWADDR(4) <= \<const0>\;
  M_AXI_AWADDR(3) <= \<const0>\;
  M_AXI_AWADDR(2) <= \<const0>\;
  M_AXI_AWADDR(1) <= \<const0>\;
  M_AXI_AWADDR(0) <= \<const0>\;
  M_AXI_AWBURST(1) <= \<const0>\;
  M_AXI_AWBURST(0) <= \<const1>\;
  M_AXI_AWCACHE(3) <= \<const0>\;
  M_AXI_AWCACHE(2) <= \<const0>\;
  M_AXI_AWCACHE(1) <= \<const0>\;
  M_AXI_AWCACHE(0) <= \<const0>\;
  M_AXI_AWID(2) <= \<const0>\;
  M_AXI_AWID(1) <= \<const0>\;
  M_AXI_AWID(0) <= \<const0>\;
  M_AXI_AWLEN(7) <= \<const0>\;
  M_AXI_AWLEN(6) <= \<const0>\;
  M_AXI_AWLEN(5) <= \<const0>\;
  M_AXI_AWLEN(4) <= \<const0>\;
  M_AXI_AWLEN(3) <= \<const0>\;
  M_AXI_AWLEN(2) <= \<const0>\;
  M_AXI_AWLEN(1) <= \<const0>\;
  M_AXI_AWLEN(0) <= \<const0>\;
  M_AXI_AWLOCK(1) <= \<const0>\;
  M_AXI_AWLOCK(0) <= \<const0>\;
  M_AXI_AWPROT(2) <= \<const0>\;
  M_AXI_AWPROT(1) <= \<const0>\;
  M_AXI_AWPROT(0) <= \<const0>\;
  M_AXI_AWQOS(3) <= \<const0>\;
  M_AXI_AWQOS(2) <= \<const0>\;
  M_AXI_AWQOS(1) <= \<const0>\;
  M_AXI_AWQOS(0) <= \<const0>\;
  M_AXI_AWSIZE(2) <= \<const0>\;
  M_AXI_AWSIZE(1) <= \<const0>\;
  M_AXI_AWSIZE(0) <= \<const0>\;
  M_AXI_AWUSER(4) <= \<const0>\;
  M_AXI_AWUSER(3) <= \<const0>\;
  M_AXI_AWUSER(2) <= \<const0>\;
  M_AXI_AWUSER(1) <= \<const0>\;
  M_AXI_AWUSER(0) <= \<const0>\;
  M_AXI_AWVALID <= \<const0>\;
  M_AXI_BREADY <= \<const0>\;
  M_AXI_RREADY <= \<const0>\;
  M_AXI_WDATA(7) <= \<const0>\;
  M_AXI_WDATA(6) <= \<const0>\;
  M_AXI_WDATA(5) <= \<const0>\;
  M_AXI_WDATA(4) <= \<const0>\;
  M_AXI_WDATA(3) <= \<const0>\;
  M_AXI_WDATA(2) <= \<const0>\;
  M_AXI_WDATA(1) <= \<const0>\;
  M_AXI_WDATA(0) <= \<const0>\;
  M_AXI_WID(2) <= \<const0>\;
  M_AXI_WID(1) <= \<const0>\;
  M_AXI_WID(0) <= \<const0>\;
  M_AXI_WLAST <= \<const1>\;
  M_AXI_WSTRB(0) <= \<const0>\;
  M_AXI_WVALID <= \<const0>\;
  \^i_addr_bus\(15 downto 0) <= i_addr_bus(15 downto 0);
  \^i_clk\ <= i_clk;
  \^i_write_cpu_bus\(7 downto 0) <= i_write_cpu_bus(7 downto 0);
  o_addr_RAM(14 downto 0) <= \^i_addr_bus\(14 downto 0);
  o_addr_ROM(14 downto 0) <= \^i_addr_bus\(14 downto 0);
  o_data(7 downto 0) <= \^i_write_cpu_bus\(7 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.turtle_top_level_MMU_0_0_MMU
     port map (
      i_addr_bus(15 downto 0) => \^i_addr_bus\(15 downto 0),
      i_addr_bus_2_sp_1 => U0_n_18,
      i_addr_bus_4_sp_1 => U0_n_17,
      i_addr_bus_9_sp_1 => U0_n_16,
      i_clk => \^i_clk\,
      i_data_RAM(7 downto 0) => i_data_RAM(7 downto 0),
      i_data_ROM(7 downto 0) => i_data_ROM(7 downto 0),
      i_input_pins(15 downto 0) => i_input_pins(15 downto 0),
      i_rstn => i_rstn,
      i_rw => i_rw,
      i_write_cpu_bus(7 downto 0) => \^i_write_cpu_bus\(7 downto 0),
      o_debug_bus(7 downto 0) => o_debug_bus(7 downto 0),
      o_output_pins(15 downto 0) => o_output_pins(15 downto 0),
      o_read_cpu_bus(7 downto 0) => o_read_cpu_bus(7 downto 0)
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
o_write_RAM_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888808888"
    )
        port map (
      I0 => \^i_addr_bus\(15),
      I1 => i_rw,
      I2 => U0_n_17,
      I3 => U0_n_18,
      I4 => \^i_addr_bus\(1),
      I5 => U0_n_16,
      O => o_write_RAM
    );
end STRUCTURE;
