----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/14/2022 04:59:53 PM
-- Design Name: 
-- Module Name: ALUControl - Behavioral
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

entity ALUControl is
    Port ( 
           -- input signal
           signExtdImm : in std_logic_vector(31 downto 0);
           ALUOp       : in std_logic_vector(1 downto 0);
           
           -- output signal
           ALUCtrlInput : out std_logic_vector(3 downto 0));
end ALUControl;

architecture Behavioral of ALUControl is
    signal funct : std_logic_vector(3 downto 0); 
begin
    funct <= signExtdImm(3 downto 0);
    ALUCtrlInput <= "0010" when ALUOp = "00" or (ALUOp(1) = '1' and funct = "0000") else
                    "0110" when ALUOp(0) = '1' or (ALUOp(1) = '1' and funct = "0010") else
                    "0000" when ALUOp(1) = '1' and funct = "0100" else
                    "0001" when ALUOp(1) = '1' and funct = "0101" else
                    "0111" when ALUOp(1) = '1' and funct = "1010";
end Behavioral;