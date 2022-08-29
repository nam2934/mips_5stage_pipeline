----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/14/2022 06:28:26 PM
-- Design Name: 
-- Module Name: ALU - Behavioral
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
use IEEE.std_logic_arith.ALL;
use ieee.numeric_std;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
  Port ( 
         -- input signal
         oReadData1 : in std_logic_vector(31 downto 0);
         ALUInput   : in std_logic_vector(31 downto 0);
         ALUCtrlInput : in std_logic_vector(3 downto 0);
            
         -- output signal 
         oResult    : out std_logic_vector(31 downto 0);
         oZero      : out std_logic);
end ALU;

architecture Behavioral of ALU is
    signal comp_oResult : std_logic_vector(31 downto 0);
begin
    oZero <= '1' when comp_oResult = x"00000000" else '0';          
    process(oReadData1,ALUInput,ALUCtrlInput)
    begin
        if(ALUCtrlInput = "0000") then
            comp_oResult <= oReadData1 and ALUInput;
        elsif(ALUCtrlInput = "0001") then
            comp_oResult <= oReadData1 or ALUInput;
        elsif(ALUCtrlInput = "0010") then
            comp_oResult <= SIGNED(oReadData1) + SIGNED(ALUInput);
        elsif(ALUCtrlInput = "0110") then
            comp_oResult <= SIGNED(oReadData1) - SIGNED(ALUInput);
        elsif(ALUCtrlInput = "0111") then
            if(SIGNED(oReadData1) < SIGNED(ALUInput)) then
                comp_oResult <= x"00000001";
            else
                comp_oResult <= x"00000000";
            end if;
        end if;
    end process;
    oResult <= comp_oResult;
end Behavioral;