-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Thu Oct 10 22:36:27 2024
-- Host        : GBNicoArch running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_util_reduced_logic_0_1_sim_netlist.vhdl
-- Design      : design_1_util_reduced_logic_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_reduced_logic_v2_0_6_util_reduced_logic is
  port (
    Res : out STD_LOGIC;
    Op1 : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_reduced_logic_v2_0_6_util_reduced_logic;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_reduced_logic_v2_0_6_util_reduced_logic is
  signal Res_INST_0_i_1_n_0 : STD_LOGIC;
  signal Res_INST_0_i_2_n_0 : STD_LOGIC;
  signal Res_INST_0_i_3_n_0 : STD_LOGIC;
  signal Res_INST_0_i_4_n_0 : STD_LOGIC;
begin
Res_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Res_INST_0_i_1_n_0,
      I1 => Res_INST_0_i_2_n_0,
      I2 => Res_INST_0_i_3_n_0,
      I3 => Res_INST_0_i_4_n_0,
      O => Res
    );
Res_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Op1(10),
      I1 => Op1(11),
      I2 => Op1(8),
      I3 => Op1(9),
      I4 => Op1(7),
      I5 => Op1(6),
      O => Res_INST_0_i_1_n_0
    );
Res_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Op1(4),
      I1 => Op1(5),
      I2 => Op1(2),
      I3 => Op1(3),
      I4 => Op1(1),
      I5 => Op1(0),
      O => Res_INST_0_i_2_n_0
    );
Res_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Op1(22),
      I1 => Op1(23),
      I2 => Op1(20),
      I3 => Op1(21),
      I4 => Op1(19),
      I5 => Op1(18),
      O => Res_INST_0_i_3_n_0
    );
Res_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Op1(16),
      I1 => Op1(17),
      I2 => Op1(14),
      I3 => Op1(15),
      I4 => Op1(13),
      I5 => Op1(12),
      O => Res_INST_0_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Res : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_util_reduced_logic_0_1,util_reduced_logic_v2_0_6_util_reduced_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "util_reduced_logic_v2_0_6_util_reduced_logic,Vivado 2024.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_reduced_logic_v2_0_6_util_reduced_logic
     port map (
      Op1(23 downto 0) => Op1(23 downto 0),
      Res => Res
    );
end STRUCTURE;
