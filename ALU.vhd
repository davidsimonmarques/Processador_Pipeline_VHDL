library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is 
    port(ALU_Control: in std_logic_vector(2 downto 0);--ALU_Control para escolha da funcao
			zero: out std_logic; --Flag para caso o sinal da saida seja igual a 0
			IN_1, IN_2: in std_logic_vector(31 downto 0); --duas entradas
			ALU_Result: out std_logic_vector(31 downto 0)); --saída
			
end ALU;
--Tabela verdade do ALU_decoder;
--ALUOp  |        Funct           | ALU_Control
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
architecture funcao of ALU is

signal resultado: std_logic_vector(31 downto 0); --variavel temporaria para receber os resultados das operações
begin
	process (IN_1, IN_2, ALU_Control)
	begin 
		case ALU_Control is 
			when "000" => resultado <= IN_1 and IN_2;
			when "001" => resultado <= IN_1 or IN_2;
			when "010" => resultado <= std_logic_vector(unsigned(IN_1) + unsigned(IN_2)); --no caso da soma e sub é necessario converter cada entrada primeiro de std_logic_vector para unsigned e somar
																												--depois devemos converter o resultado de volta para std_logic_vector
			when "011" => resultado <= std_logic_vector(unsigned(IN_1) - unsigned(IN_2));
			--when "100" => resultado <= IN_1 *funcao* IN_2;
			--when "101" => resultado <= IN_1 *funcao* IN_2;
			--when "110" => resultado <= IN_1 *funcao* IN_2;
			when "111" => 
				if(IN_1>IN_2) then
					resultado <= x"00000001"; --um bit na saida caso a entrada 1 seja maior que a segunda
				else
					resultado <= x"00000000";
				end if;
			when others =>
				resultado <= x"00000000";
		 end case; 
	end process;
	ALU_Result <= resultado;
	--vamos tratar a flag 'zero':
	zero <= '1' when resultado = x"00000000" else --nao podemos ler a saida ALU_Result pq e uma saida, logo usamos o sinal resultado para essa comparacao
			  '0' ; 
end funcao;