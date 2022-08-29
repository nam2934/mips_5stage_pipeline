----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/18/2022 04:55:10 PM
-- Design Name: 
-- Module Name: MEM_WB_latch - Behavioral
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

entity MEM_WB_latch is
  Port (
        -- input signal 
        MEM_RegWrite            : in std_logic;
        MEM_MemToReg            : in std_logic;
        MEM_oResult             : in std_logic_vector(31 downto 0);
        MEM_oReadData           : in std_logic_vector(31 downto 0);
        MEM_writeRegToRegisters : in std_logic_vector(4 downto 0);
        Clk                     : in std_logic;
        
        -- output signal
        WB_RegWrite            : out std_logic;
        WB_MemToReg            : out std_logic;
        WB_oResult             : out std_logic_vector(31 downto 0);
        WB_oReadData           : out std_logic_vector(31 downto 0);
        WB_writeRegToRegisters : out std_logic_vector(4 downto 0));
end MEM_WB_latch;

architecture Behavioral of MEM_WB_latch is
begin
    process(Clk)
    begin
        if(rising_edge(Clk)) then
            WB_RegWrite <= MEM_RegWrite;
            WB_MemToReg <= MEM_MemToReg;
            WB_oResult <= MEM_oResult;
            WB_oReadData <= MEM_oReadData;
            WB_writeRegToRegisters <= MEM_writeRegToRegisters;
        end if;
    end process;

end Behavioral;