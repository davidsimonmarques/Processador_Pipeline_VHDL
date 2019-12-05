library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        ALU_Control     : in     vl_logic_vector(2 downto 0);
        zero            : out    vl_logic;
        IN_1            : in     vl_logic_vector(31 downto 0);
        IN_2            : in     vl_logic_vector(31 downto 0);
        ALU_Result      : out    vl_logic_vector(31 downto 0)
    );
end ALU;
