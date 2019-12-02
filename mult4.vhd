library ieee;
use ieee.std_logic_1164.all;

entity mult4 is 
    port(A: in std_logic_vector(31 downto 0); 
         O: out std_logic_vector(31 downto 0)); 
end mult4;

architecture multiplica of mult4 is
begin
	O <= A(29 downto 0) & "00";
end;