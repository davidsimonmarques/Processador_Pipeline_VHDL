library verilog;
use verilog.vl_types.all;
entity banco_reg_vlg_check_tst is
    port(
        RD1             : in     vl_logic_vector(31 downto 0);
        RD2             : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end banco_reg_vlg_check_tst;
