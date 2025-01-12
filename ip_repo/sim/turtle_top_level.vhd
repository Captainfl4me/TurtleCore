--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
--Date        : Sun Jan 12 23:01:03 2025
--Host        : GBNicoArch running 64-bit unknown
--Command     : generate_target turtle_top_level.bd
--Design      : turtle_top_level
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity turtle_top_level is
  port (
    clk_50MHz : in STD_LOGIC;
    input_ROM_bus : in STD_LOGIC_VECTOR ( 7 downto 0 );
    input_pin : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output_ROM_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    output_pin : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset_rtl_0 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of turtle_top_level : entity is "turtle_top_level,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=turtle_top_level,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=1,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of turtle_top_level : entity is "turtle_top_level.hwdef";
end turtle_top_level;

architecture STRUCTURE of turtle_top_level is
  component turtle_top_level_turtle_processing_un_0_0 is
  port (
    i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_data_bus : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_data_bus : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_rw : out STD_LOGIC;
    o_addr_bus : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component turtle_top_level_turtle_processing_un_0_0;
  component turtle_top_level_rst_clk_50MHz_50M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component turtle_top_level_rst_clk_50MHz_50M_0;
  component turtle_top_level_MMU_0_0 is
  port (
    i_clk : in STD_LOGIC;
    i_rstn : in STD_LOGIC;
    i_rw : in STD_LOGIC;
    i_write_cpu_bus : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_addr_bus : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_data_RAM : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_data_ROM : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_switch_bar : in STD_LOGIC_VECTOR ( 15 downto 0 );
    o_debug_bus : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_read_cpu_bus : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_addr_RAM : out STD_LOGIC_VECTOR ( 14 downto 0 );
    o_write_RAM : out STD_LOGIC;
    o_led_bar : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_addr_ROM : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  end component turtle_top_level_MMU_0_0;
  component turtle_top_level_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component turtle_top_level_blk_mem_gen_0_0;
  signal MMU_0_o_addr_RAM : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal MMU_0_o_addr_ROM : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal MMU_0_o_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MMU_0_o_led_bar : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal MMU_0_o_read_cpu_bus : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MMU_0_o_write_RAM : STD_LOGIC;
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clk_50MHz_1 : STD_LOGIC;
  signal input_ROM_bus_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal input_pin_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reset_rtl_0_1 : STD_LOGIC;
  signal rst_clk_50MHz_50M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal turtle_processing_un_0_o_addr_bus : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal turtle_processing_un_0_o_data_bus : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal turtle_processing_un_0_o_rw : STD_LOGIC;
  signal NLW_MMU_0_o_debug_bus_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_rst_clk_50MHz_50M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_clk_50MHz_50M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_50MHz_50M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_50MHz_50M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_50MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_50MHZ CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_50MHz : signal is "XIL_INTERFACENAME CLK.CLK_50MHZ, CLK_DOMAIN turtle_top_level_clk_50MHz, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of reset_rtl_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_rtl_0 : signal is "XIL_INTERFACENAME RST.RESET_RTL_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of input_ROM_bus : signal is "xilinx.com:signal:data:1.0 DATA.INPUT_ROM_BUS DATA";
  attribute X_INTERFACE_PARAMETER of input_ROM_bus : signal is "XIL_INTERFACENAME DATA.INPUT_ROM_BUS, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of input_pin : signal is "xilinx.com:signal:data:1.0 DATA.INPUT_PIN DATA";
  attribute X_INTERFACE_PARAMETER of input_pin : signal is "XIL_INTERFACENAME DATA.INPUT_PIN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of output_ROM_addr : signal is "xilinx.com:signal:data:1.0 DATA.OUTPUT_ROM_ADDR DATA";
  attribute X_INTERFACE_PARAMETER of output_ROM_addr : signal is "XIL_INTERFACENAME DATA.OUTPUT_ROM_ADDR, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of output_pin : signal is "xilinx.com:signal:data:1.0 DATA.OUTPUT_PIN DATA";
  attribute X_INTERFACE_PARAMETER of output_pin : signal is "XIL_INTERFACENAME DATA.OUTPUT_PIN, LAYERED_METADATA undef";
begin
  clk_50MHz_1 <= clk_50MHz;
  input_ROM_bus_1(7 downto 0) <= input_ROM_bus(7 downto 0);
  input_pin_1(15 downto 0) <= input_pin(15 downto 0);
  output_ROM_addr(14 downto 0) <= MMU_0_o_addr_ROM(14 downto 0);
  output_pin(15 downto 0) <= MMU_0_o_led_bar(15 downto 0);
  reset_rtl_0_1 <= reset_rtl_0;
MMU_0: component turtle_top_level_MMU_0_0
     port map (
      i_addr_bus(15 downto 0) => turtle_processing_un_0_o_addr_bus(15 downto 0),
      i_clk => clk_50MHz_1,
      i_data_RAM(7 downto 0) => blk_mem_gen_0_douta(7 downto 0),
      i_data_ROM(7 downto 0) => input_ROM_bus_1(7 downto 0),
      i_rstn => rst_clk_50MHz_50M_peripheral_aresetn(0),
      i_rw => turtle_processing_un_0_o_rw,
      i_switch_bar(15 downto 0) => input_pin_1(15 downto 0),
      i_write_cpu_bus(7 downto 0) => turtle_processing_un_0_o_data_bus(7 downto 0),
      o_addr_RAM(14 downto 0) => MMU_0_o_addr_RAM(14 downto 0),
      o_addr_ROM(14 downto 0) => MMU_0_o_addr_ROM(14 downto 0),
      o_data(7 downto 0) => MMU_0_o_data(7 downto 0),
      o_debug_bus(7 downto 0) => NLW_MMU_0_o_debug_bus_UNCONNECTED(7 downto 0),
      o_led_bar(15 downto 0) => MMU_0_o_led_bar(15 downto 0),
      o_read_cpu_bus(7 downto 0) => MMU_0_o_read_cpu_bus(7 downto 0),
      o_write_RAM => MMU_0_o_write_RAM
    );
blk_mem_gen_0: component turtle_top_level_blk_mem_gen_0_0
     port map (
      addra(14 downto 0) => MMU_0_o_addr_RAM(14 downto 0),
      clka => clk_50MHz_1,
      dina(7 downto 0) => MMU_0_o_data(7 downto 0),
      douta(7 downto 0) => blk_mem_gen_0_douta(7 downto 0),
      wea(0) => MMU_0_o_write_RAM
    );
rst_clk_50MHz_50M: component turtle_top_level_rst_clk_50MHz_50M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_clk_50MHz_50M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => reset_rtl_0_1,
      interconnect_aresetn(0) => NLW_rst_clk_50MHz_50M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_clk_50MHz_50M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_clk_50MHz_50M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_clk_50MHz_50M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_50MHz_1
    );
turtle_processing_un_0: component turtle_top_level_turtle_processing_un_0_0
     port map (
      i_clk => clk_50MHz_1,
      i_data_bus(7 downto 0) => MMU_0_o_read_cpu_bus(7 downto 0),
      i_rst => rst_clk_50MHz_50M_peripheral_aresetn(0),
      o_addr_bus(15 downto 0) => turtle_processing_un_0_o_addr_bus(15 downto 0),
      o_data_bus(7 downto 0) => turtle_processing_un_0_o_data_bus(7 downto 0),
      o_rw => turtle_processing_un_0_o_rw
    );
end STRUCTURE;
