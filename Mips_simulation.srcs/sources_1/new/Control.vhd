----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/14/2022 03:46:53 PM
-- Design Name: 
-- Module Name: Control - Behavioral
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

entity Control is
  Port ( 
           -- input signal
           ID_inst        : in std_logic_vector(31 downto 0);
           
           -- output signal
           ID_RegDst      : out std_logic;
           ID_ALUSrc      : out std_logic;
           ID_ALUOp       : out std_logic_vector(1 downto 0);
           ID_Branch      : out std_logic;
           ID_MemRead     : out std_logic;
           ID_MemWrite    : out std_logic;
           ID_RegWrite    : out std_logic;
           ID_MemToReg    : out std_logic);
end Control;

architecture Behavioral of Control is
    signal Opcode : std_logic_vector(5 downto 0);
    signal R_format, lw, sw, beq, addi : std_logic;
begin
    Opcode <= ID_inst(31 downto 26);
    R_format <= '1' when Opcode = "000000" else '0';
    lw <= '1' when Opcode = "100011" else '0';
    sw <= '1' when Opcode = "101011" else '0';
    beq <= '1' when Opcode = "000100" else '0';
    addi <= '1' when Opcode = "001000" else '0';
    ID_RegDst <= R_format;
    ID_ALUSrc <= (lw or sw or addi);
    ID_MemToReg <= lw;
    ID_RegWrite <= (R_format or lw or addi);
    ID_MemRead <= lw;
    ID_MemWrite <= sw;
    ID_Branch <= beq;
    ID_ALUOp(1) <= R_format;
    ID_ALUOp(0) <= beq;
end Behavioral;