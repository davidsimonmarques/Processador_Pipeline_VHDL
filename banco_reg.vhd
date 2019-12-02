library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.std_logic_unsigned.all;

entity banco_reg is 
    port(clk: in std_logic;
			A1, A2, A3: in std_logic_vector(5 downto 0); 
         WD3: in std_logic_vector(31 downto 0);
			WE3: in std_logic;
			RD1, RD2: out std_logic_vector(31 downto 0)); 
			
end banco_reg;
architecture comp_banco of banco_reg is
type array_m is array (31 downto 0) of std_logic_vector(31 downto 0);
signal registros: array_m;

begin

	process(clk)
	begin 
			if(falling_edge(clk)) then
				if WE3 = '1' then registros(to_integer(unsigned(A3))) <= WD3; --Se o WriteEnable = 1 coloca no registrador A3 o valor de WD3
				end if;
			end if;
	end process;
	process (clk, A1, A2, A3, WD3, WE3)
	begin
		if(to_integer(unsigned(A1)) = 0) then RD1 <= x"00000000"; --Se a entrada A1 for 0, a saida RD1 tambem sera 0
		else RD1 <= registros(to_integer(unsigned(A1))); --Caso contrario, a saida RD1 recebe o valor do registrador de indice A1 
		end if;
		if(to_integer(unsigned(A2)) = 0) then RD2 <= x"00000000"; --Se a entrada A2 for 0, a saida RD2 tambem sera 0
		else RD2 <= registros(to_integer(unsigned(A2))); --Caso contrario, a saida RD2 recebe o valor do registrador de indice A2 
		end if;
	end process;
end;