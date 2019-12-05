library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Data_mem is 
    port(A, WD: in std_logic_vector(31 downto 0); --A: Entrada  WD: Write Data 
         clk, WE: in std_logic; --WE: Write Enable   Se WE = 0 acontece a LEITURA, se WE = 1 acontece a ESCRITA
			RD: out std_logic_vector(31 downto 0)); --Saida
end Data_mem;

architecture acesso_memoria of Data_mem is
	type ram_16_x_32 is array (0 to 15) of std_logic_vector(31 downto 0);--Vamos ter 16 posicoes para inserir dados de 32 bits
	--Conteudo da memoria de dados
	--Assumimos que os endereços de memoria partem de 0x100010000
	signal Data_m : ram_16_x_32 := (x"00000000", --0x10010000 = 268500992
											  x"00000001", --0x10010004 = 268500996
										     x"00000002", --0x10010008 = 268501000‬
										     x"00000003", --0x1001000C = 268501004‬
											  x"00000004", --0x10010010 = 268501008
											  x"00000005", --0x10010014 = 268501012
											  x"00000006", --0x10010018 = 268501016
											  x"00000007", --0x1001001C = 268501020
											  x"00000008", --0x10010020 = 268501024
											  x"00000009", --0x10010024 = 268501028
											  x"0000000A", --0x10010028 = 268501032
											  x"0000000B", --0x1001002C = 268501036
											  x"0000000C", --0x10010030 = 268501040
											  x"0000000D", --0x10010034 = 268501044
											  x"0000000E", --0x10010038 = 268501048
											  x"0000000F" 	--0x1001003C = 268501052
										     ); 
begin
	process (clk, A)
		begin
			--loop       
				if rising_edge(clk) then
					if (WE = '1') then 
						Data_m((to_integer(unsigned(A))-268500992)/4) <= WD; --Como nossa memoria parte do endereço 0x100010000(bin) = 268500992(decimal)
						--Dividimos por 4 pois os endereços da memoria sao espacados de 4
					end if;
				end if;		
				RD <= Data_m((to_integer(unsigned(A))-268500992)/4);
			--end loop;
	end process;
end acesso_memoria;