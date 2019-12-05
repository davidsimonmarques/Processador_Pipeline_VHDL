library verilog;
use verilog.vl_types.all;
entity Data_mem_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        WD              : in     vl_logic_vector(31 downto 0);
        WE              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Data_mem_vlg_sample_tst;
