library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity adder4 is 
	port(a:in std_logic_vector(31 downto 0);
		  y: out std_logic_vector(31 downto 0));
end;

architecture behave of adder4 is
begin 
	y <= a+4;
end;