library verilog;
use verilog.vl_types.all;
entity banco_reg_vlg_sample_tst is
    port(
        A1              : in     vl_logic_vector(5 downto 0);
        A2              : in     vl_logic_vector(5 downto 0);
        A3              : in     vl_logic_vector(5 downto 0);
        clk             : in     vl_logic;
        WD3             : in     vl_logic_vector(31 downto 0);
        WE3             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end banco_reg_vlg_sample_tst;
