library verilog;
use verilog.vl_types.all;
entity mux_vlg_sample_tst is
    port(
        In_1            : in     vl_logic_vector(31 downto 0);
        In_2            : in     vl_logic_vector(31 downto 0);
        S               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mux_vlg_sample_tst;
