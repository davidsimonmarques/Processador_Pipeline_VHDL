library verilog;
use verilog.vl_types.all;
entity mult4 is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        O               : out    vl_logic_vector(31 downto 0)
    );
end mult4;
