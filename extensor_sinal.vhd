library ieee;
use ieee.std_logic_1164.all;

entity extensor_sinal is 
	port (a: in std_logic_vector(15 downto 0);
			y: out std_logic_vector(31 downto 0));
end extensor_sinal;


architecture ext_comp of extensor_sinal is
begin
	y <= x"0000" & a when a(15)='0' else X"ffff" & a;
end;

