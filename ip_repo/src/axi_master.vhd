----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/13/2025 09:09:00 AM
-- Design Name: 
-- Module Name: axi_master - RTL
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments: Standard https://developer.arm.com/documentation/ihi0022/latest/ (Ver. K)
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity axi_master is
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
end axi_master;

architecture RTL of axi_master is
     type t_write_state_type is (rst_state, wait_for_write, wait_for_awready_wready, wait_for_wready, wait_for_awready, assert_bvalid);
     
     signal s_write_current_state : t_write_state_type := rst_state;
     signal s_write_next_state    : t_write_state_type := rst_state;
     signal s_write_addr          : std_logic_vector(2**ADDR_WIDTH_log2 - 1 downto 0);
     signal s_write_data          : std_logic_vector(2**DATA_WIDTH_log2 - 1 downto 0);
begin
    M_AXI_ACLK <= clk;
    -- All QOS to 0 for equal read/write (p
    M_AXI_AWQOS <= (others => '0');
    M_AXI_ARQOS <= (others => '0');
    -- All LOCK to 0 for non-exclusive access (p.113)
    M_AXI_AWLOCK <= (others => '0');
    M_AXI_ARLOCK <= (others => '0');
    -- All PROT to 0 Unprivileged, secure, data access (p.83)
    M_AXI_AWPROT <= (others => '0');
    M_AXI_ARPROT <= (others => '0');
    -- No use of cache attribute (p.72)
    M_AXI_AWCACHE   <= (others => '0');
    M_AXI_ARCACHE   <= (others => '0');
    -- No use of user signals (p.200)
    M_AXI_AWUSER    <= (others => '0');
    M_AXI_ARUSER    <= (others => '0');
    -- Incr burst (p.52)
    M_AXI_AWBURST   <= "01";
    M_AXI_ARBURST   <= "01";
    -- Number of bytes per transfer (p.49)
    M_AXI_AWSIZE    <= std_logic_vector(to_unsigned(DATA_WIDTH_log2-3, 3));
    M_AXI_ARSIZE    <= std_logic_vector(to_unsigned(DATA_WIDTH_log2-3, 3));
    -- Burst length 1 (p.50)
    M_AXI_AWLEN     <= (others => '0');
    M_AXI_ARLEN     <= (others => '0');
    -- Burst length implies packet is always last
    M_AXI_WLAST <= '1';
    -- All ID to 0 for default value (p.93)
    M_AXI_AWID <= (others => '0');
    M_AXI_WID <= (others => '0');
    M_AXI_ARID <= (others => '0');
    
    
    --------------------
    -- Write Logic
    --------------------
    process (clk, rstn) is
    begin
        if rstn = '0' then
            s_write_current_state <= rst_state;
        elsif rising_edge(clk) then
            s_write_current_state <= s_write_next_state;
        end if;
    end process;
    
    process (s_write_current_state, ready_to_write, M_AXI_AWREADY, M_AXI_WREADY, M_AXI_BVALID) is
    begin
        s_write_next_state <= s_write_current_state;
        case s_write_current_state is
            when rst_state => 
                s_write_next_state <= wait_for_write;
            when wait_for_write => 
                if ready_to_write = '1' then
                    s_write_next_state <= wait_for_awready_wready;
                end if;
            when wait_for_awready_wready =>
                if M_AXI_AWREADY = '1' and M_AXI_WREADY = '1' then
                    s_write_next_state <= assert_bvalid;
                elsif M_AXI_AWREADY = '1' then
                    s_write_next_state <= wait_for_wready;
                elsif M_AXI_WREADY = '1' then
                    s_write_next_state <= wait_for_awready;
                end if;
            when wait_for_wready =>
                if M_AXI_WREADY = '1' then
                    s_write_next_state <= assert_bvalid;
                end if;
            when wait_for_awready =>
                if M_AXI_AWREADY = '1' then
                    s_write_next_state <= assert_bvalid;
                end if;
            when assert_bvalid =>
                if M_AXI_BVALID = '1' then
                    s_write_next_state <= wait_for_write;
                end if;
        end case;
    end process;
    
    process (clk) is
    begin
        if falling_edge(clk) then
            s_write_addr <= write_addr;
            s_write_data <= write_data;
        end if;
    end process;
    
    process (s_write_current_state) is
    begin
        s_write_next_state <= s_write_current_state;
        case s_write_current_state is
            when rst_state =>
                M_AXI_BREADY    <= '0';
                M_AXI_AWVALID   <= '0';
                M_AXI_WVALID    <= '0';
                M_AXI_AWADDR    <= (others => '0');
                M_AXI_WDATA     <= (others => '0');
                M_AXI_WSTRB     <= (others => '0');
            when wait_for_write => 
                M_AXI_BREADY    <= '0';
                M_AXI_AWVALID   <= '0';
                M_AXI_WVALID    <= '0';
                M_AXI_AWADDR    <= (others => '0');
                M_AXI_WDATA     <= (others => '0');
                M_AXI_WSTRB     <= (others => '0');
            when wait_for_awready_wready =>
                M_AXI_BREADY    <= '0';
                M_AXI_AWVALID   <= '1';
                M_AXI_WVALID    <= '1';
                M_AXI_AWADDR    <= s_write_addr;
                M_AXI_WDATA     <= s_write_data;
                M_AXI_WSTRB     <= (others => '0');
            when wait_for_wready =>
                M_AXI_BREADY    <= '0';
                M_AXI_AWVALID   <= '0';
                M_AXI_WVALID    <= '1';
            when wait_for_awready =>
                M_AXI_BREADY    <= '0';
                M_AXI_AWVALID   <= '1';
                M_AXI_WVALID    <= '0';
            when assert_bvalid =>
                M_AXI_BREADY    <= '1';
                M_AXI_AWVALID   <= '0';
                M_AXI_WVALID    <= '0';
        end case;
    end process;
    
    
    --------------------
    -- Read Logic
    --------------------
end RTL;
