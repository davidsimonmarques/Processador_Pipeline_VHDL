library verilog;
use verilog.vl_types.all;
entity Data_mem is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        WD              : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        WE              : in     vl_logic;
        RD              : out    vl_logic_vector(31 downto 0)
    );
end Data_mem;
