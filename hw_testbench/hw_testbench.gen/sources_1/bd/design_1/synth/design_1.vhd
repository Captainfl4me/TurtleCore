--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
--Date        : Tue Nov 19 12:33:13 2024
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
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=7,numReposBlks=7,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=2,synth_mode=None}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_turtle_core_0_0 is
  port (
    i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_data_bus : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_data_bus : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_rw : out STD_LOGIC;
    o_addr_bus : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_turtle_core_0_0;
  component design_1_clk_wiz_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );
  end component design_1_clk_wiz_0;
  component design_1_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_blk_mem_gen_0_0;
  component design_1_MCC_0_0 is
  port (
    i_rw : in STD_LOGIC;
    i_write_cpu_bus : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_addr_bus : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_data_RAM : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_data_ROM : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_led_bar : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_switch_bar : in STD_LOGIC_VECTOR ( 15 downto 0 );
    o_debug_bus : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_read_cpu_bus : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_addr_RAM : out STD_LOGIC_VECTOR ( 14 downto 0 );
    o_write_RAM : out STD_LOGIC;
    o_addr_led_bar : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_write_led_bar : out STD_LOGIC;
    o_addr_ROM : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  end component design_1_MCC_0_0;
  component design_1_dist_mem_gen_0_1 is
  port (
    a : in STD_LOGIC_VECTOR ( 14 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_dist_mem_gen_0_1;
  component design_1_led_bar_0_0 is
  port (
    i_rw : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_addr : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_leds : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_led_bar_0_0;
  component design_1_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_util_vector_logic_0_0;
  signal MCC_0_o_addr_RAM : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal MCC_0_o_addr_ROM : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal MCC_0_o_addr_led_bar : STD_LOGIC_VECTOR ( 0 to 0 );
  signal MCC_0_o_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MCC_0_o_read_cpu_bus : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MCC_0_o_write_RAM : STD_LOGIC;
  signal MCC_0_o_write_led_bar : STD_LOGIC;
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal debounce_clk_Res : STD_LOGIC;
  signal debounce_rst_Res : STD_LOGIC;
  signal dist_mem_gen_0_spo : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal led_bar_0_o_leds : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sw_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal turtle_core_0_o_addr_bus : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal turtle_core_0_o_data_bus : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal turtle_core_0_o_rw : STD_LOGIC;
  signal NLW_MCC_0_o_debug_bus_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
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
  leds(15 downto 0) <= led_bar_0_o_leds(15 downto 0);
  sw_1(15 downto 0) <= sw(15 downto 0);
MCC_0: component design_1_MCC_0_0
     port map (
      i_addr_bus(15 downto 0) => turtle_core_0_o_addr_bus(15 downto 0),
      i_data_RAM(7 downto 0) => blk_mem_gen_0_douta(7 downto 0),
      i_data_ROM(7 downto 0) => dist_mem_gen_0_spo(7 downto 0),
      i_led_bar(15 downto 0) => led_bar_0_o_leds(15 downto 0),
      i_rw => turtle_core_0_o_rw,
      i_switch_bar(15 downto 0) => sw_1(15 downto 0),
      i_write_cpu_bus(7 downto 0) => turtle_core_0_o_data_bus(7 downto 0),
      o_addr_RAM(14 downto 0) => MCC_0_o_addr_RAM(14 downto 0),
      o_addr_ROM(14 downto 0) => MCC_0_o_addr_ROM(14 downto 0),
      o_addr_led_bar(0) => MCC_0_o_addr_led_bar(0),
      o_data(7 downto 0) => MCC_0_o_data(7 downto 0),
      o_debug_bus(7 downto 0) => NLW_MCC_0_o_debug_bus_UNCONNECTED(7 downto 0),
      o_read_cpu_bus(7 downto 0) => MCC_0_o_read_cpu_bus(7 downto 0),
      o_write_RAM => MCC_0_o_write_RAM,
      o_write_led_bar => MCC_0_o_write_led_bar
    );
blk_mem_gen_0: component design_1_blk_mem_gen_0_0
     port map (
      addra(14 downto 0) => MCC_0_o_addr_RAM(14 downto 0),
      clka => debounce_clk_Res,
      dina(7 downto 0) => MCC_0_o_data(7 downto 0),
      douta(7 downto 0) => blk_mem_gen_0_douta(7 downto 0),
      wea(0) => MCC_0_o_write_RAM
    );
clk_wiz: component design_1_clk_wiz_0
     port map (
      clk_in1 => clk_1,
      clk_out1 => debounce_clk_Res,
      reset => debounce_rst_Res
    );
dist_mem_gen_0: component design_1_dist_mem_gen_0_1
     port map (
      a(14 downto 0) => MCC_0_o_addr_ROM(14 downto 0),
      spo(7 downto 0) => dist_mem_gen_0_spo(7 downto 0)
    );
led_bar_0: component design_1_led_bar_0_0
     port map (
      i_addr(0) => MCC_0_o_addr_led_bar(0),
      i_clk => debounce_clk_Res,
      i_data(7 downto 0) => MCC_0_o_data(7 downto 0),
      i_rst => proc_sys_reset_0_peripheral_aresetn(0),
      i_rw => MCC_0_o_write_led_bar,
      o_leds(15 downto 0) => led_bar_0_o_leds(15 downto 0)
    );
turtle_core_0: component design_1_turtle_core_0_0
     port map (
      i_clk => debounce_clk_Res,
      i_data_bus(7 downto 0) => MCC_0_o_read_cpu_bus(7 downto 0),
      i_rst => proc_sys_reset_0_peripheral_aresetn(0),
      o_addr_bus(15 downto 0) => turtle_core_0_o_addr_bus(15 downto 0),
      o_data_bus(7 downto 0) => turtle_core_0_o_data_bus(7 downto 0),
      o_rw => turtle_core_0_o_rw
    );
util_vector_logic_0: component design_1_util_vector_logic_0_0
     port map (
      Op1(0) => debounce_rst_Res,
      Res(0) => proc_sys_reset_0_peripheral_aresetn(0)
    );
end STRUCTURE;
