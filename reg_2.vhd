library ieee;
use ieee.std_logic_1164.all;

-- Generic Register

entity reg_2 is
    port (IN_1, IN_2   : in std_logic_vector(31 downto 0);
          clk : in std_logic;
          O_1, O_2   : out std_logic_vector(31 downto 0));
end;

architecture reg_2_comp of reg_2 is
    begin
        process(clk)
        begin
        if (clk'event and clk='1') then
            O_1 <= IN_1;
				O_2 <= IN_2;
        end if;
        end process;
    end;