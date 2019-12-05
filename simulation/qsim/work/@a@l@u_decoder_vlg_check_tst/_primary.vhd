library verilog;
use verilog.vl_types.all;
entity ALU_decoder_vlg_check_tst is
    port(
        alucontrol      : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end ALU_decoder_vlg_check_tst;
