library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Mem_Instr is 
    port(A: in std_logic_vector(31 downto 0); 
         RD: out std_logic_vector(31 downto 0)); 
end Mem_Instr;

architecture acesso of Mem_Instr is
	type ram_3_x_32 is array (0 to 3) of std_logic_vector(31 downto 0);--Vamos ter 3 posicoes para inserir instruções de 32 bits
	--Conteudo da memoria de instrucoes 
	signal I_m : ram_3_x_32 := (x"01285020", --0x0040 0000--add $t2, $t1, $t0
										 x"1211fffb", --0x0040 0004--beq $s0, $s1, $L1 - se quisermos comparar s1 com s1 para dar sempre true trocar por 1210fffb
										 x"018b6825", --0x0040 0008--or $t5, t4, t3
										 x"08100000"  --0x0040 000C--j 0x0040 0000 --endereço inicial
										); 
											
begin
	RD <= x"00000000" when A = x"00000000" else-- Isso é usado como um código de reset da memoria
			I_m((to_integer(unsigned(A))-4194304)/4); --OBS:4194304 = 0x0040 0000 
end acesso; 