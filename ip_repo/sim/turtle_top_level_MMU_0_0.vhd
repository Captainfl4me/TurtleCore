-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:MMU:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY turtle_top_level_MMU_0_0 IS
  PORT (
    i_clk : IN STD_LOGIC;
    i_rstn : IN STD_LOGIC;
    i_rw : IN STD_LOGIC;
    i_write_cpu_bus : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    i_addr_bus : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    i_data_RAM : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    i_data_ROM : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    i_switch_bar : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    o_debug_bus : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    o_read_cpu_bus : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    o_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    o_addr_RAM : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
    o_write_RAM : OUT STD_LOGIC;
    o_led_bar : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    o_addr_ROM : OUT STD_LOGIC_VECTOR(14 DOWNTO 0)
  );
END turtle_top_level_MMU_0_0;

ARCHITECTURE turtle_top_level_MMU_0_0_arch OF turtle_top_level_MMU_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF turtle_top_level_MMU_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT MMU IS
    PORT (
      i_clk : IN STD_LOGIC;
      i_rstn : IN STD_LOGIC;
      i_rw : IN STD_LOGIC;
      i_write_cpu_bus : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      i_addr_bus : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      i_data_RAM : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      i_data_ROM : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      i_switch_bar : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      o_debug_bus : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      o_read_cpu_bus : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      o_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      o_addr_RAM : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
      o_write_RAM : OUT STD_LOGIC;
      o_led_bar : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      o_addr_ROM : OUT STD_LOGIC_VECTOR(14 DOWNTO 0)
    );
  END COMPONENT MMU;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF i_clk: SIGNAL IS "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_rstn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN turtle_top_level_clk_50MHz, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF i_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 i_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF i_rstn: SIGNAL IS "XIL_INTERFACENAME i_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF i_rstn: SIGNAL IS "xilinx.com:signal:reset:1.0 i_rstn RST";
BEGIN
  U0 : MMU
    PORT MAP (
      i_clk => i_clk,
      i_rstn => i_rstn,
      i_rw => i_rw,
      i_write_cpu_bus => i_write_cpu_bus,
      i_addr_bus => i_addr_bus,
      i_data_RAM => i_data_RAM,
      i_data_ROM => i_data_ROM,
      i_switch_bar => i_switch_bar,
      o_debug_bus => o_debug_bus,
      o_read_cpu_bus => o_read_cpu_bus,
      o_data => o_data,
      o_addr_RAM => o_addr_RAM,
      o_write_RAM => o_write_RAM,
      o_led_bar => o_led_bar,
      o_addr_ROM => o_addr_ROM
    );
END turtle_top_level_MMU_0_0_arch;
