library ieee;
use ieee.std_logic_1164.all;

--As entidades servem para definir as entradas e saídas do "componente"
entity ALU_decoder is 
    port(funct: in std_logic_vector(5 downto 0); --Funct: 6 bits
         aluop: in std_logic_vector(1 downto 0); --ALUOp: 2 bits
         alucontrol: out std_logic_vector (2 downto 0)); --ALUControl: 3 bits
end ALU_decoder;
--Tabela verdade do ALU_decoder;
--ALUOp  |        Funct           | ALUControl
-------------------------------------------------|
-- 00    |           X            |  010(soma)
-------------------------------------------------
-- X1    |           X            |  110(subtracao)
-------------------------------------------------
-- 1X    |     100000(add)        |  010(add)
-------------------------------------------------
-- 1X    |     100010(sub)        |  110(subtracao)
-------------------------------------------------
-- 1X    |     100100(and)        |  000(and)
-------------------------------------------------
-- 1X    |     100101(or)         |  001(or)
-------------------------------------------------
-- 1X    |     101010(slt)        |  111(set less than)
architecture arch_ALU_decoder of ALU_decoder is
begin
process(funct, aluop)--Para tratar de comandos SEQUENCIAIS
    begin
        case aluop is --Interpreta os dados de ALUOp 
            when "00" => alucontrol <= "010"; --SOMA para casos SEM FUNCT
            when "01" => alucontrol <= "110"; --SUBTRACAO para casos SEM FUNCT
            when others => --Avaliando casos onde há FUNCT
                case funct is 
                    when "100000" => alucontrol <= "010"; --SOMA
                    when "100010" => alucontrol <= "110"; --SUBTRACAO
                    when "100100" => alucontrol <= "000"; --AND
                    when "100101" => alucontrol <= "001"; --OR
                    when "101010" => alucontrol <= "111"; --SLT
						  when others => alucontrol <= "---"; 
                end case;
        end case;
    end process;
end arch_ALU_decoder;