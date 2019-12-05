library ieee;
use ieee.std_logic_1164.all;

-- Generic Register

entity reg_5 is
    port (IN_1, IN_2: in std_logic;
			 IN_3, IN_4: in std_logic_vector(31 downto 0);
          IN_5: in std_logic_vector(4 downto 0);
			 clk : in std_logic;
          O_1, O_2: out std_logic;
			 O_3, O_4: out std_logic_vector(31 downto 0);
          O_5: out std_logic_vector(4 downto 0));
end;

architecture reg_5_comp of reg_5 is
    begin
        process(clk)
        begin
        if rising_edge(clk) then
            O_1 <= IN_1;
				O_2 <= IN_2;
            O_3 <= IN_3;
				O_4 <= IN_4;
            O_5 <= IN_5;

        end if;
        end process;
    end;