library ieee;
use ieee.std_logic_1164.all;

--As entidades servem para definir as entradas e saídas do "componente"
entity main_controller is 
    port(opcode: in std_logic_vector(5 downto 0); --Opcode: 6 bits
			RegWriteD: out std_logic;	--MemtoReg: 1 bit
			MemtoRegD: out std_logic;	--MemtoReg: 1 bit
			MEmWriteD: out std_logic;	--MemWrite: 1 bit
			BranchD:  out std_logic;	--Branch: 1 bit
			ALUSrcD: out std_logic;	--ALUSrc: 1 bit
			RegDstD: out std_logic;	--RegDst: 1 bit
			JumpD: out std_logic;	--Jump: 1 bit
			ALUOp: out std_logic_vector(1 downto 0));	--ALUOp: 2 bits
       
 end entity;

--Tabela verdade do main_controller;

--Instruction | Opcode | RegWrite | RegDst | ALUSrc | Branch | MemWrite | MemtoReg | ALUOp | Jump |
---------------------------------------------------------------------------------------------------
-- R-type     | 000000 |  		1	 |		1	 |		0	 |		0	 |			0 	|		0	  |	10	 |	  0  |
---------------------------------------------------------------------------------------------------
-- lw    	  | 100011 |  		1	 |		0	 |		1	 |		0	 |			0	|		1	  |	00	 |	  0  |
---------------------------------------------------------------------------------------------------
-- sw   		  | 101011 |		0	 |		X	 |		1	 |		0	 |			1	|		X	  |	00	 |	  0  |
---------------------------------------------------------------------------------------------------
-- beq     	  | 000100 |		0	 |		X	 |		0	 |		1	 |			0	|		X	  |	01	 |	  0  |
---------------------------------------------------------------------------------------------------
-- addi   	  | 001000 | 		1	 |		0	 |		1	 |	 	0	 |			0	|		0	  |	00	 |	  0  |
---------------------------------------------------------------------------------------------------
-- j    		  | 000010 |  		0	 |		X	 |		X	 |		X	 |			0	|		X	  |	XX	 |	  1  |
---------------------------------------------------------------------------------------------------

architecture arch_main_controller of main_controller is

begin


process(opcode)--Para tratar de comandos SEQUENCIAIS
    begin
        case opcode is --Interpreta os dados de Opcode 
            when "000000" =>	RegWriteD <= '1';		--R-type
										RegDstD <= '1'; 
										ALUSrcD <= '0';
										BranchD <= '0';
										MemWriteD <= '0';
										MemtoRegD <= '0';
										ALUOp <= "10";
										JumpD <= '0';
																 
            when "100011" =>	RegWriteD <= '1';		 --lw
										RegDstD <= '0';
										ALUSrcD <= '1';
										BranchD <= '0';
										MemWriteD <= '0';
										MemtoRegD <= '1';
										ALUOp <= "00";
										JumpD <= '0'; 
																 
										
				when "101011" =>  RegWriteD <= '0';		--sw
										RegDstD <= '0';
										ALUSrcD <= '1';
										BranchD <= '0';
										MemWriteD <= '1';
										MemtoRegD <= '0';
										ALUOp <= "00";
										JumpD <= '0';
																 
																
				when "000100" =>	RegWriteD <= '0';	--beq
										RegDstD <= '0';
										ALUSrcD <= '0';
										BranchD <= '1';
										MemWriteD <= '0';
										MemtoRegD <= '0';
										ALUOp <= "01";
										JumpD <= '0'; 
																
																
				when "001000" =>	RegWriteD <= '1';	--addi
										RegDstD <= '0';
										ALUSrcD <= '1';
										BranchD <= '0';
										MemWriteD <= '0';
										MemtoRegD <= '0';
										ALUOp <= "00";
										JumpD <= '0'; 
																 
																
				when "000010" =>	RegWriteD <= '0';		--j
										RegDstD <= '0';
										ALUSrcD <= '0';
										BranchD <= '0';
										MemWriteD <= '0';
										MemtoRegD <= '0';
										ALUOp <= "00";
										JumpD <= '1'; 
				when others =>	RegWriteD <= '0';		
										RegDstD <= '0';
										ALUSrcD <= '0';
										BranchD <= '0';
										MemWriteD <= '0';
										MemtoRegD <= '0';
										ALUOp <= "00";
										JumpD <= '0';
																 
																
        end case;
    end process;
end architecture;
