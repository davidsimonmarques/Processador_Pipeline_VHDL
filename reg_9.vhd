library ieee;
use ieee.std_logic_1164.all;

-- Generic Register

entity reg_9 is
    port (IN_1, IN_2, IN_3, IN_4, IN_5: in std_logic;
			 IN_6, IN_7, IN_9: in std_logic_vector(31 downto 0);
          IN_8: in std_logic_vector(4 downto 0);
			 clk : in std_logic;
          O_1, O_2, O_3, O_4, O_5: out std_logic;
			 O_6, O_7, O_9: out std_logic_vector(31 downto 0);
          O_8: out std_logic_vector(4 downto 0));
end;

architecture reg_9_comp of reg_9 is
    begin
        process(clk)
        begin
        if (clk'event and clk='1') then
            O_1 <= IN_1;
				O_2 <= IN_2;
            O_3 <= IN_3;
				O_4 <= IN_4;
            O_5 <= IN_5;
				O_6 <= IN_6;
            O_7 <= IN_7;
				O_8 <= IN_8;
            O_9 <= IN_9;

        end if;
        end process;
    end;