library verilog;
use verilog.vl_types.all;
entity mult4_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end mult4_vlg_sample_tst;
