----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/14/2022 09:00:02 PM
-- Design Name: 
-- Module Name: EX_MEM_latch - Behavioral
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

entity EX_MEM_latch is
    Port ( 
           -- input signal
           EX_Branch              : in std_logic;
           EX_MemRead             : in std_logic;
           EX_MemWrite            : in std_logic;
           EX_RegWrite            : in std_logic;
           EX_MemToReg            : in std_logic;
           EX_oReadData2          : in std_logic_vector(31 downto 0);
           EX_branchTargetAddr    : in std_logic_vector(31 downto 0);           
           EX_ALUResult           : in std_logic_vector(31 downto 0);
           EX_oZero               : in std_logic;
           EX_writeRegToRegisters : in std_logic_vector(4 downto 0);
           Clk                    : in std_logic;
           
           -- output signal
           MEM_Branch              : out std_logic;
           MEM_MemRead             : out std_logic;
           MEM_MemWrite            : out std_logic;
           MEM_RegWrite            : out std_logic;
           MEM_MemToReg            : out std_logic;
           MEM_oReadData2          : out std_logic_vector(31 downto 0);
           MEM_branchTargetAddr    : out std_logic_vector(31 downto 0);           
           MEM_ALUResult           : out std_logic_vector(31 downto 0);
           MEM_oZero               : out std_logic;
           MEM_writeRegToRegisters : out std_logic_vector(4 downto 0));           
end EX_MEM_latch;

architecture Behavioral of EX_MEM_latch is
begin
    process(Clk)
    begin
        if(rising_edge(Clk)) then
            MEM_Branch <= EX_Branch;       
            MEM_MemRead <= EX_MemRead;
            MEM_MemWrite <= EX_MemWrite;                  
            MEM_RegWrite <= EX_RegWrite;         
            MEM_MemToReg <= EX_MemToReg;           
            MEM_oReadData2 <= EX_oReadData2;        
            MEM_branchTargetAddr <= EX_branchTargetAddr;        
            MEM_ALUResult <= EX_ALUResult;        
            MEM_oZero <= EX_oZero;            
            MEM_writeRegToRegisters <= EX_writeRegToRegisters;
        end if;
    end process;

end Behavioral;