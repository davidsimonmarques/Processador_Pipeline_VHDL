library ieee;
use ieee.std_logic_1164.all;
--Apenas mux de duas entradas sao utilizadas no processador pipeline
entity mux is 
	 port(In_1, In_2: in std_logic_vector(31 downto 0); --Entrada 1 e 2 do mux
			O: out std_logic_vector(31 downto 0); --Saida do mux
         S: in std_logic);--porta para selecionar, se s = 0, sai o valor de In_1, se s=1, sai o valor de In_2 
end mux;

architecture sistema of mux is
begin
	O <= In_2 when S = '1' else In_1;
end;