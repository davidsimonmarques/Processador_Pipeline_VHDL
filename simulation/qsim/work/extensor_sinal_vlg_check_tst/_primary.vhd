library verilog;
use verilog.vl_types.all;
entity extensor_sinal_vlg_check_tst is
    port(
        y               : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end extensor_sinal_vlg_check_tst;
