--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
--Date        : Sun Jan 12 23:08:23 2025
--Host        : GBNicoArch running 64-bit unknown
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    clk : in STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rst_btn : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=2,synth_mode=None}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_turtle_core_0_0 is
  port (
    clk_50MHz : in STD_LOGIC;
    input_ROM_bus : in STD_LOGIC_VECTOR ( 7 downto 0 );
    input_pin : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output_ROM_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    output_pin : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset_rtl_0 : in STD_LOGIC
  );
  end component design_1_turtle_core_0_0;
  component design_1_clk_wiz_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );
  end component design_1_clk_wiz_0;
  component design_1_dist_mem_gen_0_1 is
  port (
    a : in STD_LOGIC_VECTOR ( 14 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_dist_mem_gen_0_1;
  component design_1_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_util_vector_logic_0_0;
  signal clk_1 : STD_LOGIC;
  signal debounce_clk_Res : STD_LOGIC;
  signal debounce_rst_Res : STD_LOGIC;
  signal dist_mem_gen_0_spo : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sw_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal turtle_core_0_output_ROM_addr : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal turtle_core_0_output_pin : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN design_1_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of rst_btn : signal is "xilinx.com:signal:reset:1.0 RST.RST_BTN RST";
  attribute X_INTERFACE_PARAMETER of rst_btn : signal is "XIL_INTERFACENAME RST.RST_BTN, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of leds : signal is "xilinx.com:signal:data:1.0 DATA.LEDS DATA";
  attribute X_INTERFACE_PARAMETER of leds : signal is "XIL_INTERFACENAME DATA.LEDS, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of sw : signal is "xilinx.com:signal:data:1.0 DATA.SW DATA";
  attribute X_INTERFACE_PARAMETER of sw : signal is "XIL_INTERFACENAME DATA.SW, LAYERED_METADATA undef";
begin
  clk_1 <= clk;
  debounce_rst_Res <= rst_btn;
  leds(15 downto 0) <= turtle_core_0_output_pin(15 downto 0);
  sw_1(15 downto 0) <= sw(15 downto 0);
clk_wiz: component design_1_clk_wiz_0
     port map (
      clk_in1 => clk_1,
      clk_out1 => debounce_clk_Res,
      reset => debounce_rst_Res
    );
dist_mem_gen_0: component design_1_dist_mem_gen_0_1
     port map (
      a(14 downto 0) => turtle_core_0_output_ROM_addr(14 downto 0),
      spo(7 downto 0) => dist_mem_gen_0_spo(7 downto 0)
    );
turtle_core_0: component design_1_turtle_core_0_0
     port map (
      clk_50MHz => debounce_clk_Res,
      input_ROM_bus(7 downto 0) => dist_mem_gen_0_spo(7 downto 0),
      input_pin(15 downto 0) => sw_1(15 downto 0),
      output_ROM_addr(14 downto 0) => turtle_core_0_output_ROM_addr(14 downto 0),
      output_pin(15 downto 0) => turtle_core_0_output_pin(15 downto 0),
      reset_rtl_0 => proc_sys_reset_0_peripheral_aresetn(0)
    );
util_vector_logic_0: component design_1_util_vector_logic_0_0
     port map (
      Op1(0) => debounce_rst_Res,
      Res(0) => proc_sys_reset_0_peripheral_aresetn(0)
    );
end STRUCTURE;
