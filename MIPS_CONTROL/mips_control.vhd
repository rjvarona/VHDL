library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY mips_control IS
	PORT(	opcode					:	IN	STD_LOGIC_VECTOR(5 DOWNTO 0);
			funct						:	IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			RegDst, ALUSrc			:	OUT STD_LOGIC;
			Jump, jal, Jr			:	OUT STD_LOGIC;
			Beq, Bne					:	OUT STD_LOGIC;
			MemRead, MemWrite		:	OUT STD_LOGIC;
			RegWrite, MemtoReg	:	OUT STD_LOGIC;
			ALUControl				:  OUT STD_LOGIC_VECTOR(3 DOWNTO 0)	);
END mips_control;

ARCHITECTURE Behavior OF mips_control IS

BEGIN 
	CASE opcode IS
		WHEN X"00" => 				--R functions
			RegDst <= '1';
			ALUSrc <= '0';
			Beg <= 'X';
			Bne <= 'X';
			MemRead <= '0';
			MemWrite <= '0';
			RegWrite <= '1';
			MemtoReg <= '0';
			
			CASE funct IS		-- Jump or not
				WHEN X"08" =>		--jr
					Jump <= '1';
					jal <= --
					Jr <= --
				WHEN OTHERS =>
					Jump <= '0';
					jal <= '0';
					Jr <= '0';
			END CASE;
			
			CASE funct IS		-- ALUControl
				WHEN X"20" =>		--add
					ALUControl <= 
				WHEN X"21" =>		--addu
					ALUControl <=
				WHEN X"24" =>		--and
					ALUControl <=
				WHEN X"08" =>		--jr
					ALUControl <=
				WHEN X"27" =>		--nor
					ALUControl <=
				WHEN X"25" =>		--or
					ALUControl <=
				WHEN X"2a" =>		--slt
					ALUControl <=
				WHEN X"00" =>		--sll
					ALUControl <=
				WHEN X"02" =>		--srl
					ALUControl <=
				WHEN X"04" =>		--sllv
					ALUControl <=
				WHEN X"06" =>		--srlv
					ALUControl <=
				WHEN X"22" =>		--sub
					ALUControl <=
				WHEN X"23" =>		--subu
					ALUControl <=
			END CASE;
		WHEN X"08" =>		--addi
			RegDst <= 
			ALUSrc <=
			Jump <=
			jal <=
			Jr <=
			Beq <=
			Bne <=
			MemRead <=
			MemWrite <=
			RegWrite <=
			MemtoReg <=
			ALUControl <=
		WHEN X"09" =>		--addiu
			RegDst <= 
			ALUSrc <=
			Jump <=
			jal <=
			Jr <=
			Beq <=
			Bne <=
			MemRead <=
			MemWrite <=
			RegWrite <=
			MemtoReg <=
			ALUControl <=
		WHEN X"0c" =>		--andi
			RegDst <= 
			ALUSrc <=
			Jump <=
			jal <=
			Jr <=
			Beq <=
			Bne <=
			MemRead <=
			MemWrite <=
			RegWrite <=
			MemtoReg <=
			ALUControl <=
		WHEN X"04" =>		--beq
			RegDst <= 
			ALUSrc <=
			Jump <=
			jal <=
			Jr <=
			Beq <=
			Bne <=
			MemRead <=
			MemWrite <=
			RegWrite <=
			MemtoReg <=
			ALUControl <=
		WHEN X"05" =>		--bne
			RegDst <= 
			ALUSrc <=
			Jump <=
			jal <=
			Jr <=
			Beq <=
			Bne <=
			MemRead <=
			MemWrite <=
			RegWrite <=
			MemtoReg <=
			ALUControl <=
		WHEN X"02" =>		--j
			RegDst <= 
			ALUSrc <=
			Jump <=
			jal <=
			Jr <=
			Beq <=
			Bne <=
			MemRead <=
			MemWrite <=
			RegWrite <=
			MemtoReg <=
			ALUControl <=
		WHEN X"03" =>		--jal
			RegDst <= 
			ALUSrc <=
			Jump <=
			jal <=
			Jr <=
			Beq <=
			Bne <=
			MemRead <=
			MemWrite <=
			RegWrite <=
			MemtoReg <=
			ALUControl <=
		WHEN X"0f" =>		--lui
			RegDst <= 
			ALUSrc <=
			Jump <=
			jal <=
			Jr <=
			Beq <=
			Bne <=
			MemRead <=
			MemWrite <=
			RegWrite <=
			MemtoReg <=
			ALUControl <=
		WHEN X"23" =>		--lw
			RegDst <= 
			ALUSrc <=
			Jump <=
			jal <=
			Jr <=
			Beq <=
			Bne <=
			MemRead <=
			MemWrite <=
			RegWrite <=
			MemtoReg <=
			ALUControl <=
		WHEN X"0d" =>		--ori
			RegDst <= 
			ALUSrc <=
			Jump <=
			jal <=
			Jr <=
			Beq <=
			Bne <=
			MemRead <=
			MemWrite <=
			RegWrite <=
			MemtoReg <=
			ALUControl <=
		WHEN X"0a" =>		--slti
			RegDst <= 
			ALUSrc <=
			Jump <=
			jal <=
			Jr <=
			Beq <=
			Bne <=
			MemRead <=
			MemWrite <=
			RegWrite <=
			MemtoReg <=
			ALUControl <=
		WHEN X"2b" =>		--sw
			RegDst <= 
			ALUSrc <=
			Jump <=
			jal <=
			Jr <=
			Beq <=
			Bne <=
			MemRead <=
			MemWrite <=
			RegWrite <=
			MemtoReg <=
			ALUControl <=
	END CASE;
			
END Behavior;