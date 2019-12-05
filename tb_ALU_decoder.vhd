library ieee;
use ieee.std_logic_1164.all;

entity tb_ALU_decoder is
end tb_ALU_decoder;

architecture teste_ALU_decoder of tb_ALU_decoder is
    component ALU_decoder is
        port(funct: in std_logic_vector(5 downto 0); --Funct: 6 bits
         aluop: in std_logic_vector(1 downto 0); --ALUOp: 2 bits
         alucontrol: out std_logic_vector (2 downto 0)); --ALUControl: 3 bits
    end component;

    signal f: std_logic_vector(5 downto 0);
    signal op: std_logic_vector(1 downto 0);
    signal cont: std_logic_vector(2 downto 0);
    begin
        instancia_ALU_decoder: ALU_decoder port map(funct=>f,aluop=>op,alucontrol=>cont);
        --Coloque os valores que deseja testar abaixo:
        op <= "01"
        f <= "000100"--Funct for beq
end teste_ALU_decoder;