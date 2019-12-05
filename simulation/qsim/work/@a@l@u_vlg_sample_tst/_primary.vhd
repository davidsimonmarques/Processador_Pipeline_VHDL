library verilog;
use verilog.vl_types.all;
entity ALU_vlg_sample_tst is
    port(
        ALU_Control     : in     vl_logic_vector(2 downto 0);
        IN_1            : in     vl_logic_vector(31 downto 0);
        IN_2            : in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end ALU_vlg_sample_tst;
