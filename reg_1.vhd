library ieee;
use ieee.std_logic_1164.all;

-- Generic Register

entity reg_1 is
    port (IN_1   : in std_logic_vector(31 downto 0);
          clk : in std_logic;
          O_1   : out std_logic_vector(31 downto 0));
end;

architecture reg_1_comp of reg_1 is
    begin
        process(clk)
        begin
        if (clk'event and clk='1') then
            O_1 <= IN_1;
        end if;
        end process;
    end;