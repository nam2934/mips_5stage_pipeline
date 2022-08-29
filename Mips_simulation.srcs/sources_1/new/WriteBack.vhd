----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/18/2022 05:03:11 PM
-- Design Name: 
-- Module Name: WriteBack - Behavioral
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

entity WriteBack is
    Port ( 
          -- input signal
          oResult   : in std_logic_vector(31 downto 0);
          oReadData : in std_logic_vector(31 downto 0);
          MemToReg  : in std_logic;
          
          -- output signal          
          writeData : out std_logic_vector(31 downto 0));
end WriteBack;

architecture Behavioral of WriteBack is

begin
    writeData <= oResult when MemToReg = '0' else
                 oReadData when MemToReg = '1';
end Behavioral;