----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/14/2022 04:52:47 PM
-- Design Name: 
-- Module Name: Excute - Behavioral
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
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned;
use ieee.numeric_std;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Excute is
   Port ( 
          -- input signal
          pc               : in std_logic_vector(31 downto 0);
          oReadData1       : in std_logic_vector(31 downto 0);
          oReadData2       : in std_logic_vector(31 downto 0);
          signExtdImm      : in std_logic_vector(31 downto 0);
          inst_20_16       : in std_logic_vector(4 downto 0);
          inst_15_11       : in std_logic_vector(4 downto 0);
          ALUSrc           : in std_logic;
          ALUOp            : in std_logic_vector(1 downto 0);
          RegDst           : in std_logic;
          
          -- output signal
          branchTargetAddr : out std_logic_vector(31 downto 0);
          oResult          : out std_logic_vector(31 downto 0);
          oZero            : out std_logic;
          writeRegToRegisters : out std_logic_vector(4 downto 0));
end Excute;

architecture Behavioral of Excute is
    component ALUControl is
        Port ( 
               -- input signal
               signExtdImm  : in std_logic_vector(31 downto 0);
               ALUOp        : in std_logic_vector(1 downto 0);
               
               -- output signal
               ALUCtrlInput : out std_logic_vector(3 downto 0));
    end component;
    component ALU is
      Port ( 
             -- input signal
             oReadData1   : in std_logic_vector(31 downto 0);
             ALUInput     : in std_logic_vector(31 downto 0);
             ALUCtrlInput : in std_logic_vector(3 downto 0);
                
             -- output signal 
             oResult      : out std_logic_vector(31 downto 0);
             oZero        : out std_logic);
    end component;    
    signal ALUCtrlInput  : std_logic_vector(3 downto 0);
    signal shiftLeft2bit : std_logic_vector(33 downto 0);
    signal ALUInput      : std_logic_vector(31 downto 0);
begin
    aluCtrl_comp : ALUControl port map(
        signExtdImm => signExtdImm,
        ALUOp => ALUOp,
        ALUCtrlInput => ALUCtrlInput);
    alu_comp : ALU port map(
        oReadData1 => oReadData1,
        ALUCtrlInput => ALUCtrlInput,
        ALUInput => ALUInput,
        oResult => oResult,   
        oZero => oZero);
    shiftLeft2bit <= signExtdImm & "00";
    branchTargetAddr <= SIGNED(pc) + SIGNED(shiftLeft2bit(31 downto 0));
    ALUInput <= oReadData2 when ALUSrc = '0' else
                signExtdImm when ALUSrc = '1';
    writeRegToRegisters <= inst_20_16 when RegDst = '0' else
                           inst_15_11 when RegDst = '1';
end Behavioral;