library verilog;
use verilog.vl_types.all;
entity Mem_Instr_vlg_check_tst is
    port(
        RD              : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end Mem_Instr_vlg_check_tst;
