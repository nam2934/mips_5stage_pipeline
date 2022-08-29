----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/14/2022 03:39:06 PM
-- Design Name: 
-- Module Name: ID_EX_latch - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ID_EX_latch is
    Port ( 
           -- input signal
           ID_RegDst      : in std_logic;
           ID_ALUSrc      : in std_logic;
           ID_ALUOp       : in std_logic_vector(1 downto 0);
           ID_Branch      : in std_logic;
           ID_MemRead     : in std_logic;
           ID_MemWrite    : in std_logic;
           ID_RegWrite    : in std_logic;
           ID_MemToReg    : in std_logic;
           ID_oReadData1  : in std_logic_vector(31 downto 0);
           ID_oReadData2  : in std_logic_vector(31 downto 0);
           ID_signExtdImm : in std_logic_vector(31 downto 0);
           ID_inst_20_16  : in std_logic_vector(4 downto 0);
           ID_inst_15_11  : in std_logic_vector(4 downto 0);
           ID_pc          : in std_logic_vector(31 downto 0);
           Clk            : in std_logic;
           
           -- output signal
           EX_RegDst      : out std_logic;
           EX_ALUSrc      : out std_logic;
           EX_ALUOp       : out std_logic_vector(1 downto 0);
           EX_Branch      : out std_logic;
           EX_MemRead     : out std_logic;
           EX_MemWrite    : out std_logic;
           EX_RegWrite    : out std_logic;
           EX_MemToReg    : out std_logic;
           EX_oReadData1  : out std_logic_vector(31 downto 0);
           EX_oReadData2  : out std_logic_vector(31 downto 0);
           EX_signExtdImm : out std_logic_vector(31 downto 0);
           EX_inst_20_16  : out std_logic_vector(4 downto 0);
           EX_inst_15_11  : out std_logic_vector(4 downto 0);
           EX_pc          : out std_logic_vector(31 downto 0));           
end ID_EX_latch;

architecture Behavioral of ID_EX_latch is

begin
    process(Clk)
    begin
        if(rising_edge(Clk)) then
            EX_RegDst <= ID_RegDst;     
            EX_ALUSrc <= ID_ALUSrc;
            EX_ALUOp <= ID_ALUOp;
            EX_Branch <= ID_Branch;
            EX_MemRead <= ID_MemRead;
            EX_MemWrite <= ID_MemWrite;
            EX_RegWrite <= ID_RegWrite;
            EX_MemToReg <= ID_MemToReg;
            EX_oReadData1 <= ID_oReadData1;
            EX_oReadData2 <= ID_oReadData2;
            EX_signExtdImm <= ID_signExtdImm;
            EX_inst_20_16 <= ID_inst_20_16;
            EX_inst_15_11 <= ID_inst_15_11;
            EX_pc <= ID_pc;
        end if;
    end process;
end Behavioral;