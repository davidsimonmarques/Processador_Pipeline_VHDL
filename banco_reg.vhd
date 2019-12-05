library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.std_logic_unsigned.all;

entity banco_reg is 
    port(clk: in std_logic;
			A1, A2, A3: in std_logic_vector(4 downto 0); 
         WD3: in std_logic_vector(31 downto 0);
			WE3: in std_logic;
			RD1, RD2: out std_logic_vector(31 downto 0)); 
			
end banco_reg;
architecture comp_banco of banco_reg is
type array_m is array (31 downto 0) of std_logic_vector(31 downto 0);
signal registros: array_m := (x"0000001E", x"0000001D",x"0000001C", x"08100001",x"018b6825", 
										x"1211fffb", x"0000001B",x"0000001A", x"00000019",x"00000018", 
										x"00000017", x"00000016",x"00000015", x"00000014",x"00000013", 
										x"00000012", x"00000011",x"00000010", x"0000000F",x"0000000E", 
										x"0000000D", x"0000000C",x"0000000B", x"0000000A",x"0000101F",
										x"1211fffb", x"018b6825", x"08100000",x"01285020", x"1211fffb",
										x"018b6825", x"00000000"
									--     1            0  --A CONTAGEM DOS INDICES PARTE DE BAIXO
										); 
--registros(0)- The Constant Value 0
--resgistros(1)- Assembler Temporary ($at)
--registros(2) e registros(3) - Values for Function Results and Expression Evaluation ($v0 e $v1)
--de registros(4) a registros(7) - Arguments ($a0-$a3)
--de registros(8) a registros(15) - Temporaries (%t0-$t7) Valores- 10 a 18
--de registros(16) a registros(23) - Saved Temporaries ($s0-$s7)
--de registros(24) a registros(25) - Temporaries ($t8-$t9)
--de registros(26) a registros(27) - Reserved for OS kernel ($k0, $k1)
--de registros(28) -   Global Pointer ($gp)
--de registros(29) -  Stack Pointer ($sp)
--de registros(30) -  Frame Pointer ($fp)
--de registros(31) -  Return Adress ($ra)
 

begin

	process(clk)
	begin 
			if(falling_edge(clk)) then
				if WE3 = '1' then 
					registros(to_integer(unsigned(A3))) <= WD3; --Se o WriteEnable = 1 coloca no registrador A3 o valor de WD3
				end if;
			end if;
	end process;
	process (clk, A1, A2, A3, WD3, WE3)
	begin
		if(to_integer(unsigned(A1)) = 0) then RD1 <= x"00000000"; --Se a entrada A1 for 0, a saida RD1 tambem sera 0
		else RD1 <= registros(to_integer(unsigned(A1))); --Caso contrario, a saida RD1 recebe o valor do registrador de indice A1 
		end if;
		if(to_integer(unsigned(A2)) = 0) then RD2 <= x"00000000"; --Se a entrada A2 for 0, a saida RD2 tambem sera 0
		else RD2 <= registros(to_integer(signed(A2))); --Caso contrario, a saida RD2 recebe o valor do registrador de indice A2 
		end if;
	end process;
end;