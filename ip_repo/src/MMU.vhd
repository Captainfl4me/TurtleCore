----------------------------------------------------------------------------------
-- Engineer: Nicolas THIERRY
-- 
-- Create Date: 10/10/2024 06:34:47 PM
-- Design Name: 
-- Module Name: MCC - RTL
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MMU is
    Generic(
        AXI_FIFO_SIZE : integer range 1 to 256 := 16
    );
    Port (
        i_clk           : in std_logic;
        i_rstn          : in std_logic;
        i_rw            : in std_logic;
        i_write_cpu_bus : in std_logic_vector(7 downto 0);
        i_addr_bus      : in std_logic_vector(15 downto 0);
        i_data_RAM      : in std_logic_vector(7 downto 0);
        i_data_ROM      : in std_logic_vector(7 downto 0);
        i_input_pins    : in std_logic_vector(15 downto 0);
        
        o_debug_bus     : out std_logic_vector(7 downto 0);
        o_read_cpu_bus  : out std_logic_vector(7 downto 0);
        o_data          : out std_logic_vector(7 downto 0);
        -- RAM
        o_addr_RAM      : out std_logic_vector(14 downto 0);
        o_write_RAM     : out std_logic;
        -- Output pins
        o_output_pins   : out std_logic_vector(15 downto 0);
        -- ROM
        o_addr_ROM      : out std_logic_vector(14 downto 0);
        
        -- Global
        M_AXI_ACLK          :   out std_logic;
        M_AXI_ARESETn       :   out std_logic;
        -- Write address channel
        M_AXI_AWID          :   out std_logic_vector(2 DOWNTO 0);
        M_AXI_AWADDR        :   out std_logic_vector(15 downto 0);
        M_AXI_AWLEN         :   out std_logic_vector(7 downto 0);
        M_AXI_AWSIZE        :   out std_logic_vector(2 downto 0);
        M_AXI_AWBURST       :   out std_logic_vector(1 downto 0);
        M_AXI_AWLOCK        :   out std_logic_vector(1 downto 0);
        M_AXI_AWCACHE       :   out std_logic_vector(3 downto 0);
        M_AXI_AWPROT        :   out std_logic_vector(2 downto 0);
        M_AXI_AWQOS         :   out std_logic_vector(3 downto 0);
        M_AXI_AWUSER        :   out std_logic_vector(4 downto 0);
        M_AXI_AWVALID       :   out std_logic;
        M_AXI_AWREADY       :   in  std_logic;
        -- Write data channelhttps://developer.arm.com/documentation/ihi0022/latest/
        M_AXI_WID           :   out std_logic_vector(2 downto 0);
        M_AXI_WDATA         :   out std_logic_vector(7 downto 0);
        M_AXI_WSTRB         :   out std_logic_vector(0 downto 0);
        M_AXI_WLAST         :   out std_logic;
        M_AXI_WVALID        :   out std_logic;
        M_AXI_WREADY        :   in  std_logic;
        --  Write response channel
        M_AXI_BID           :   in  std_logic_vector(2 downto 0);
        M_AXI_BRESP         :   in  std_logic_vector(1 downto 0);
        M_AXI_BVALID        :   in  std_logic;
        M_AXI_BREADY        :   out std_logic;
        --  Read address channel
        M_AXI_ARID          :   out std_logic_vector(2 downto 0);
        M_AXI_ARADDR        :   out std_logic_vector(15 downto 0);
        M_AXI_ARLEN         :   out std_logic_vector(7 downto 0);
        M_AXI_ARSIZE        :   out std_logic_vector(2 downto 0);
        M_AXI_ARBURST       :   out std_logic_vector(1 downto 0);
        M_AXI_ARLOCK        :   out std_logic_vector(1 downto 0);
        M_AXI_ARCACHE       :   out std_logic_vector(3 downto 0);
        M_AXI_ARPROT        :   out std_logic_vector(2 downto 0);
        M_AXI_ARQOS         :   out std_logic_vector(3 downto 0);
        M_AXI_ARUSER        :   out std_logic_vector(4 downto 0);
        M_AXI_ARVALID       :   out std_logic;
        M_AXI_ARREADY       :   in  std_logic;
        -- Read data channel
        M_AXI_RID           :   in  std_logic_vector(2 downto 0);
        M_AXI_RDATA         :   in  std_logic_vector(7 downto 0);
        M_AXI_RRESP         :   in  std_logic_vector(1 downto 0);
        M_AXI_RLAST         :   in  std_logic;
        M_AXI_RVALID        :   in  std_logic;
        M_AXI_RREADY        :   out std_logic
    );
end MMU;

architecture RTL of MMU is
    component axi_master is
        Generic (
            DATA_WIDTH_log2 : integer range 3 to 10 := 3;
            ADDR_WIDTH_log2 : integer range 4 to 10 := 4
        );
        Port (
            clk                 :   in  std_logic;
            rstn                :   in  std_logic;
            write_addr          :   in  std_logic_vector(2**ADDR_WIDTH_log2 - 1 downto 0);
            write_data          :   in  std_logic_vector(2**DATA_WIDTH_log2 - 1 downto 0);
            ready_to_write      :   in  std_logic;
            write_completed     :   out  std_logic;
            read_addr           :   in  std_logic_vector(2**ADDR_WIDTH_log2 - 1 downto 0);
            read_data           :   out std_logic_vector(2**DATA_WIDTH_log2 - 1 downto 0);
            ready_to_read       :   in  std_logic;
            read_completed      :   out  std_logic;
            -- Global
            M_AXI_ACLK          :   out std_logic;
            M_AXI_ARESETn       :   out std_logic;
            -- Write address channel
            M_AXI_AWID          :   out std_logic_vector(2 DOWNTO 0);
            M_AXI_AWADDR        :   out std_logic_vector(2**ADDR_WIDTH_log2 - 1 downto 0);
            M_AXI_AWLEN         :   out std_logic_vector(7 downto 0);
            M_AXI_AWSIZE        :   out std_logic_vector(2 downto 0);
            M_AXI_AWBURST       :   out std_logic_vector(1 downto 0);
            M_AXI_AWLOCK        :   out std_logic_vector(1 downto 0);
            M_AXI_AWCACHE       :   out std_logic_vector(3 downto 0);
            M_AXI_AWPROT        :   out std_logic_vector(2 downto 0);
            M_AXI_AWQOS         :   out std_logic_vector(3 downto 0);
            M_AXI_AWUSER        :   out std_logic_vector(4 downto 0);
            M_AXI_AWVALID       :   out std_logic;
            M_AXI_AWREADY       :   in  std_logic;
            -- Write data channelhttps://developer.arm.com/documentation/ihi0022/latest/
            M_AXI_WID           :   out std_logic_vector(2 downto 0);
            M_AXI_WDATA         :   out std_logic_vector(2**DATA_WIDTH_log2 - 1 downto 0);
            M_AXI_WSTRB         :   out std_logic_vector(2**(DATA_WIDTH_log2 - 3) - 1 downto 0);
            M_AXI_WLAST         :   out std_logic;
            M_AXI_WVALID        :   out std_logic;
            M_AXI_WREADY        :   in  std_logic;
            --  Write response channel
            M_AXI_BID           :   in  std_logic_vector(2 downto 0);
            M_AXI_BRESP         :   in  std_logic_vector(1 downto 0);
            M_AXI_BVALID        :   in  std_logic;
            M_AXI_BREADY        :   out std_logic;
            --  Read address channel
            M_AXI_ARID          :   out std_logic_vector(2 downto 0);
            M_AXI_ARADDR        :   out std_logic_vector(2**ADDR_WIDTH_log2 - 1 downto 0);
            M_AXI_ARLEN         :   out std_logic_vector(7 downto 0);
            M_AXI_ARSIZE        :   out std_logic_vector(2 downto 0);
            M_AXI_ARBURST       :   out std_logic_vector(1 downto 0);
            M_AXI_ARLOCK        :   out std_logic_vector(1 downto 0);
            M_AXI_ARCACHE       :   out std_logic_vector(3 downto 0);
            M_AXI_ARPROT        :   out std_logic_vector(2 downto 0);
            M_AXI_ARQOS         :   out std_logic_vector(3 downto 0);
            M_AXI_ARUSER        :   out std_logic_vector(4 downto 0);
            M_AXI_ARVALID       :   out std_logic;
            M_AXI_ARREADY       :   in  std_logic;
            -- Read data channel
            M_AXI_RID           :   in  std_logic_vector(2 downto 0);
            M_AXI_RDATA         :   in  std_logic_vector(2**DATA_WIDTH_log2 - 1 downto 0);
            M_AXI_RRESP         :   in  std_logic_vector(1 downto 0);
            M_AXI_RLAST         :   in  std_logic;
            M_AXI_RVALID        :   in  std_logic;
            M_AXI_RREADY        :   out std_logic
        );
    end component axi_master;

    signal s_cpu_read_bus: std_logic_vector(7 downto 0) := (others => '0');
    
    -- Output pins
    signal s_output_pins_reg: std_logic_vector(15 downto 0) := (others => '0');
    
    -- Interrupts pins
    -- NOT IMPLEMENTED #TO-DO
    
    -- AXI 0
    signal s_axi0_ctrl_reg        : std_logic_vector(7 downto 0) := (others => '0');
    signal s_axi0_write_completed : std_logic := '0';
    signal s_axi0_read_completed  : std_logic := '0';
    subtype t_axi_fifo_addr is std_logic_vector(15 downto 0);
    type t_axi_addr_fifo_arr is array(AXI_FIFO_SIZE - 1 downto 0) of t_axi_fifo_addr;
    type t_axi_addr_fifo is record
        fifo_arr  : t_axi_addr_fifo_arr;
        fifo_tail : integer range t_axi_addr_fifo_arr'low to t_axi_addr_fifo_arr'high; 
        fifo_head : integer range t_axi_addr_fifo_arr'low to t_axi_addr_fifo_arr'high;
    end record t_axi_addr_fifo;
    signal s_axi0_write_trigger   : std_logic := '0';
    signal s_axi0_write_addr_temp : std_logic_vector(7 downto 0) := (others => '0');
    signal s_axi0_write_addr_fifo : t_axi_addr_fifo := (fifo_arr => (others => (others => '0')), fifo_tail => 0, fifo_head => 0);
    signal s_axi0_write_addr_tail : t_axi_fifo_addr := (others => '0');
    signal s_axi0_read_addr_temp  : std_logic_vector(7 downto 0) := (others => '0');
    signal s_axi0_read_addr_fifo  : t_axi_addr_fifo := (fifo_arr => (others => (others => '0')), fifo_tail => 0, fifo_head => 0);
    signal s_axi0_read_addr_tail  : t_axi_fifo_addr := (others => '0');
    subtype t_axi_fifo_data is std_logic_vector(7 downto 0);
    type t_axi_data_fifo_arr is array(AXI_FIFO_SIZE - 1 downto 0) of t_axi_fifo_data;
    type t_axi_data_fifo is record
        fifo_arr        : t_axi_data_fifo_arr;
        fifo_tail       : integer range t_axi_data_fifo_arr'low to t_axi_data_fifo_arr'high; 
        fifo_head       : integer range t_axi_data_fifo_arr'low to t_axi_data_fifo_arr'high;
    end record t_axi_data_fifo;
    signal s_axi0_read_fifo_tail_next : integer range t_axi_data_fifo_arr'low to t_axi_data_fifo_arr'high := 0;
    signal s_axi0_read_trigger    : std_logic := '0';
    signal s_axi0_write_data_fifo : t_axi_data_fifo := (fifo_arr => (others => (others => '0')), fifo_tail => 0, fifo_head => 0);
    signal s_axi0_write_data_tail : t_axi_fifo_data := (others => '0');
    signal s_axi0_read_data_fifo  : t_axi_data_fifo := (fifo_arr => (others => (others => '0')), fifo_tail => 0, fifo_head => 0);
    signal s_axi0_read_data_head  : t_axi_fifo_data := (others => '0');
begin
    -- Read register map
    s_cpu_read_bus <= i_data_ROM when i_addr_bus(15) = '0' else
                      s_output_pins_reg(7 downto 0) when i_addr_bus = x"FFFF" else
                      s_output_pins_reg(15 downto 8) when i_addr_bus = x"FFFE" else
                      i_input_pins(7 downto 0) when i_addr_bus = x"FFFD" else
                      i_input_pins(15 downto 8) when i_addr_bus = x"FFFC" else
                      s_axi0_read_data_fifo.fifo_arr(s_axi0_read_data_fifo.fifo_tail) when i_addr_bus = x"FFD3" else
                      i_data_RAM;
    
    process (i_clk, i_rstn) is -- Read triggers
    begin
        if (i_rstn = '0') then
            s_axi0_read_fifo_tail_next <= 0;
        elsif (rising_edge(i_clk) and i_rw = '0') then
            case i_addr_bus is
                when x"FFD3" => 
                    if s_axi0_read_fifo_tail_next = t_axi_data_fifo_arr'high then
                        s_axi0_read_fifo_tail_next <= 0;
                    else
                        s_axi0_read_fifo_tail_next <= s_axi0_read_fifo_tail_next + 1;
                    end if;
                when others => s_axi0_read_fifo_tail_next <= s_axi0_read_fifo_tail_next;
            end case;
        end if;
    end process;
    
    -- Write register map
    process(i_clk, i_rstn) is
    begin
        if (i_rstn = '0') then
            s_output_pins_reg <= (others => '0');
            s_axi0_ctrl_reg <= (others => '0');
            s_axi0_write_addr_temp <= (others => '0');
            s_axi0_write_addr_fifo.fifo_arr <= (others => (others => '0'));
            s_axi0_write_addr_fifo.fifo_head <= 0;
            s_axi0_read_addr_fifo.fifo_arr <= (others => (others => '0'));
            s_axi0_read_addr_fifo.fifo_head <= 0;
            s_axi0_write_data_fifo.fifo_arr <= (others => (others => '0'));
            s_axi0_write_data_fifo.fifo_head <= 0;
        elsif (rising_edge(i_clk) and i_rw = '1') then
            if i_addr_bus = x"FFFF" then
                s_output_pins_reg(7 downto 0) <= i_write_cpu_bus;
            elsif i_addr_bus = x"FFFE" then
                s_output_pins_reg(15 downto 8) <= i_write_cpu_bus;
            elsif i_addr_bus = x"FFD9" then
                s_axi0_ctrl_reg <= i_write_cpu_bus;
            elsif i_addr_bus = x"FFD8" then
                s_axi0_write_addr_temp <= i_write_cpu_bus;
            elsif i_addr_bus = x"FFD7" then
                s_axi0_write_addr_fifo.fifo_arr(s_axi0_write_addr_fifo.fifo_head)(15 downto 8) <= i_write_cpu_bus;
                s_axi0_write_addr_fifo.fifo_arr(s_axi0_write_addr_fifo.fifo_head)(7 downto 0) <= s_axi0_write_addr_temp;
                if s_axi0_write_addr_fifo.fifo_head = t_axi_addr_fifo_arr'high then
                    s_axi0_write_addr_fifo.fifo_head <= 0;
                else
                    s_axi0_write_addr_fifo.fifo_head <= s_axi0_write_addr_fifo.fifo_head + 1;
                end if;
            elsif i_addr_bus = x"FFD6" then
                s_axi0_write_data_fifo.fifo_arr(s_axi0_write_data_fifo.fifo_head) <= i_write_cpu_bus;
                if s_axi0_write_data_fifo.fifo_head = t_axi_data_fifo_arr'high then
                    s_axi0_write_data_fifo.fifo_head <= 0;
                else
                    s_axi0_write_data_fifo.fifo_head <= s_axi0_write_data_fifo.fifo_head + 1;
                end if;
            elsif i_addr_bus = x"FFD5" then
                s_axi0_read_addr_temp <= i_write_cpu_bus;
            elsif i_addr_bus = x"FFD4" then
                s_axi0_read_addr_fifo.fifo_arr(s_axi0_read_addr_fifo.fifo_head)(15 downto 8) <= i_write_cpu_bus;
                s_axi0_read_addr_fifo.fifo_arr(s_axi0_read_addr_fifo.fifo_head)(7 downto 0) <= s_axi0_read_addr_temp;
                if s_axi0_read_addr_fifo.fifo_head = t_axi_addr_fifo_arr'high then
                    s_axi0_read_addr_fifo.fifo_head <= 0;
                else
                    s_axi0_read_addr_fifo.fifo_head <= s_axi0_read_addr_fifo.fifo_head + 1;
                end if;
            end if;
        end if;
    end process;
    
    -- AXI 0
    s_axi0_write_trigger <= '1' when s_axi0_write_addr_fifo.fifo_tail /= s_axi0_write_addr_fifo.fifo_head and s_axi0_write_data_fifo.fifo_tail /= s_axi0_write_data_fifo.fifo_head else '0';
    s_axi0_read_trigger <= '1' when s_axi0_read_addr_fifo.fifo_tail /= s_axi0_read_addr_fifo.fifo_head else '0';
    s_axi0_write_addr_tail <= s_axi0_write_addr_fifo.fifo_arr(s_axi0_write_addr_fifo.fifo_tail);
    s_axi0_write_data_tail <= s_axi0_write_data_fifo.fifo_arr(s_axi0_write_data_fifo.fifo_tail);
    s_axi0_read_addr_tail <= s_axi0_read_addr_fifo.fifo_arr(s_axi0_read_addr_fifo.fifo_tail);
    s_axi0_read_data_head <= s_axi0_read_data_fifo.fifo_arr(s_axi0_read_data_fifo.fifo_head);
    process (i_clk, i_rstn) is -- Read fifo tail update
    begin
        if (i_rstn = '0') then
            s_axi0_read_data_fifo.fifo_tail <= 0;
        elsif falling_edge(i_clk) then
            s_axi0_read_data_fifo.fifo_tail <= s_axi0_read_fifo_tail_next;
        end if;
    end process;
    process (s_axi0_write_completed, i_rstn) is -- Write completed fifo tail update
    begin
        if (i_rstn = '0') then
            s_axi0_write_addr_fifo.fifo_tail <= 0;
            s_axi0_write_data_fifo.fifo_tail <= 0;
        elsif rising_edge(s_axi0_write_completed) then
            if s_axi0_write_addr_fifo.fifo_tail = t_axi_addr_fifo_arr'high then
                s_axi0_write_addr_fifo.fifo_tail <= 0;
            else
                s_axi0_write_addr_fifo.fifo_tail <= s_axi0_write_addr_fifo.fifo_tail + 1;
            end if;
            if s_axi0_write_data_fifo.fifo_tail = t_axi_data_fifo_arr'high then
                s_axi0_write_data_fifo.fifo_tail <= 0;
            else
                s_axi0_write_data_fifo.fifo_tail <= s_axi0_write_data_fifo.fifo_tail + 1;
            end if;
        end if;
    end process;
    process (s_axi0_read_completed, i_rstn) is -- Read completed fifo head update
    begin
        if (i_rstn = '0') then
            s_axi0_read_addr_fifo.fifo_tail <= 0;
        elsif rising_edge(s_axi0_read_completed) then
            if s_axi0_read_addr_fifo.fifo_tail = t_axi_addr_fifo_arr'high then
                s_axi0_read_addr_fifo.fifo_tail <= 0;
            else
                s_axi0_read_addr_fifo.fifo_tail <= s_axi0_read_addr_fifo.fifo_tail + 1;
            end if;
        end if;
    end process;
    M_AXI: axi_master
        Generic map (
            DATA_WIDTH_log2 => 3,
            ADDR_WIDTH_log2 => 4
        )
        Port map (
            clk                 => i_clk,
            rstn                => i_rstn,
            write_addr          => s_axi0_write_addr_tail,
            write_data          => s_axi0_write_data_tail,
            ready_to_write      => s_axi0_write_trigger,
            write_completed     => s_axi0_write_completed,
            read_addr           => s_axi0_read_addr_tail,
            read_data           => s_axi0_read_data_head,
            ready_to_read       => s_axi0_read_trigger,
            read_completed      => s_axi0_read_completed,
            M_AXI_ACLK          => M_AXI_ACLK,
            M_AXI_ARESETn       => M_AXI_ARESETn,
            M_AXI_AWID          => M_AXI_AWID,
            M_AXI_AWADDR        => M_AXI_AWADDR,
            M_AXI_AWLEN         => M_AXI_AWLEN,
            M_AXI_AWSIZE        => M_AXI_AWSIZE,
            M_AXI_AWBURST       => M_AXI_AWBURST,
            M_AXI_AWLOCK        => M_AXI_AWLOCK,
            M_AXI_AWCACHE       => M_AXI_AWCACHE,
            M_AXI_AWPROT        => M_AXI_AWPROT,
            M_AXI_AWQOS         => M_AXI_AWQOS,
            M_AXI_AWUSER        => M_AXI_AWUSER,
            M_AXI_AWVALID       => M_AXI_AWVALID,
            M_AXI_AWREADY       => M_AXI_AWREADY,
            M_AXI_WID           => M_AXI_WID,
            M_AXI_WDATA         => M_AXI_WDATA,
            M_AXI_WSTRB         => M_AXI_WSTRB,
            M_AXI_WLAST         => M_AXI_WLAST,
            M_AXI_WVALID        => M_AXI_WVALID,
            M_AXI_WREADY        => M_AXI_WREADY,
            M_AXI_BID           => M_AXI_BID,
            M_AXI_BRESP         => M_AXI_BRESP,
            M_AXI_BVALID        => M_AXI_BVALID,
            M_AXI_BREADY        => M_AXI_BREADY,
            M_AXI_ARID          => M_AXI_ARID,
            M_AXI_ARADDR        => M_AXI_ARADDR,
            M_AXI_ARLEN         => M_AXI_ARLEN,
            M_AXI_ARSIZE        => M_AXI_ARSIZE,
            M_AXI_ARBURST       => M_AXI_ARBURST,
            M_AXI_ARLOCK        => M_AXI_ARLOCK,
            M_AXI_ARCACHE       => M_AXI_ARCACHE,
            M_AXI_ARPROT        => M_AXI_ARPROT,
            M_AXI_ARQOS         => M_AXI_ARQOS,
            M_AXI_ARUSER        => M_AXI_ARUSER,
            M_AXI_ARVALID       => M_AXI_ARVALID,
            M_AXI_ARREADY       => M_AXI_ARREADY,
            M_AXI_RID           => M_AXI_RID,
            M_AXI_RDATA         => M_AXI_RDATA,
            M_AXI_RRESP         => M_AXI_RRESP,
            M_AXI_RLAST         => M_AXI_RLAST,
            M_AXI_RVALID        => M_AXI_RVALID,
            M_AXI_RREADY        => M_AXI_RREADY
        );

    -- Output MMU pins mapping
    o_read_cpu_bus <= s_cpu_read_bus;
    o_debug_bus <= i_write_cpu_bus when i_rw = '1' else s_cpu_read_bus;
    
    o_data <= i_write_cpu_bus;
    
    o_addr_RAM <= i_addr_bus(14 downto 0);
    o_write_RAM <= '1' when i_rw = '1' and i_addr_bus >= x"8000" and i_addr_bus < x"FFFE" else '0';
    
    o_addr_ROM <= i_addr_bus(14 downto 0);
    
    o_output_pins <= s_output_pins_reg;
end RTL;
