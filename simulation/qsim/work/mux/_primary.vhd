library verilog;
use verilog.vl_types.all;
entity mux is
    port(
        In_1            : in     vl_logic_vector(31 downto 0);
        In_2            : in     vl_logic_vector(31 downto 0);
        O               : out    vl_logic_vector(31 downto 0);
        S               : in     vl_logic
    );
end mux;
