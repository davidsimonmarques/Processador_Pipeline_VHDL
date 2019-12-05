library verilog;
use verilog.vl_types.all;
entity leitor_txt is
    port(
        address         : in     vl_logic_vector(3 downto 0);
        dataout         : out    vl_logic_vector(3 downto 0)
    );
end leitor_txt;
