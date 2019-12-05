library verilog;
use verilog.vl_types.all;
entity banco_reg is
    port(
        clk             : in     vl_logic;
        A1              : in     vl_logic_vector(5 downto 0);
        A2              : in     vl_logic_vector(5 downto 0);
        A3              : in     vl_logic_vector(5 downto 0);
        WD3             : in     vl_logic_vector(31 downto 0);
        WE3             : in     vl_logic;
        RD1             : out    vl_logic_vector(31 downto 0);
        RD2             : out    vl_logic_vector(31 downto 0)
    );
end banco_reg;
