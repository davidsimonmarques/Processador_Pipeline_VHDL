library verilog;
use verilog.vl_types.all;
entity leitor_txt_vlg_sample_tst is
    port(
        address         : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end leitor_txt_vlg_sample_tst;
