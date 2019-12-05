library ieee;
use ieee.std_logic_1164.all;

-- Generic Register

entity reg_13 is
    port (IN_1, IN_2, IN_3, IN_4, IN_6, IN_7: in std_logic; 
			 IN_5: in std_logic_vector(2 downto 0);
			 IN_8, IN_9, IN_12, IN_13: in std_logic_vector(31 downto 0);
			 IN_10, IN_11: in std_logic_vector(4 downto 0);
          clk : in std_logic;
          O_1, O_2, O_3, O_4, O_6, O_7: out std_logic; 
			 O_5: out std_logic_vector(2 downto 0);
			 O_8, O_9, O_12, O_13: out std_logic_vector(31 downto 0);
			 O_10, O_11: out std_logic_vector(4 downto 0));
end;

architecture reg_13_comp of reg_13 is
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
				O_10 <= IN_10;
            O_11 <= IN_11;
				O_12 <= IN_12;
            O_13 <= IN_13;
        end if;
        end process;
 end reg_13_comp;