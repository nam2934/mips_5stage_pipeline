----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/22/2022 07:00:10 PM
-- Design Name: 
-- Module Name: mips_testbench - Behavioral
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
package regfile_type is
    type register_files is array(0 to 31) of std_logic_vector(31 downto 0);
end package;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
package data_mem_type is
    type data_memory is array(1023 downto 0) of std_logic_vector(31 downto 0);
end package;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.regfile_type.all;
use work.data_mem_type.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mips_testbench is
end mips_testbench;

architecture Behavioral of mips_testbench is
    component MIPS
        Port( 
        axi_clk : in std_logic;     
        reset   : in std_logic;
        reg_files : out register_files; 
        IF_ID_PCPlus4 : out std_logic_vector(31 downto 0);
        IF_ID_inst : out std_logic_vector(31 downto 0);
        ID_EX_PCPlus4 : out std_logic_vector(31 downto 0);
        ID_EX_registersReadData1 : out std_logic_vector(31 downto 0);
        ID_EX_registersReadData2 : out std_logic_vector(31 downto 0);
        ID_EX_signExtdImm : out std_logic_vector(31 downto 0);
        ID_EX_inst_20_16 : out std_logic_vector(4 downto 0);
        ID_EX_inst_15_11 : out std_logic_vector(4 downto 0);
        ID_EX_ctrl_EX_RegDst : out std_logic;
        ID_EX_ctrl_EX_ALUSrc : out std_logic;
        ID_EX_ctrl_EX_ALUOp : out std_logic_vector(1 downto 0);
        ID_EX_ctrl_MEM_Branch : out std_logic;
        ID_EX_ctrl_MEM_MemRead : out std_logic;
        ID_EX_ctrl_MEM_MemWrite : out std_logic;
        ID_EX_ctrl_WB_RegWrite : out std_logic;
        ID_EX_ctrl_WB_MemToReg : out std_logic;
        EX_MEM_branchTargetAddr : out std_logic_vector(31 downto 0);
        EX_MEM_ALUResult : out std_logic_vector(31 downto 0);
        EX_MEM_registersReadData2 : out std_logic_vector(31 downto 0);
        EX_MEM_writeRegForRegisters : out std_logic_vector(4 downto 0);
        EX_MEM_ctrl_MEM_Branch : out std_logic;
        EX_MEM_ctrl_MEM_MemRead : out std_logic;
        EX_MEM_ctrl_MEM_MemWrite : out std_logic;
        EX_MEM_ctrl_MEM_ALUZero : out std_logic;
        EX_MEM_ctrl_WB_RegWrite : out std_logic;
        EX_MEM_ctrl_WB_MemToReg : out std_logic;     
        MEM_WB_dataMemReadData : out std_logic_vector(31 downto 0);
        MEM_WB_ALUResult : out std_logic_vector(31 downto 0);
        MEM_WB_writeRegForRegisters : out std_logic_vector(4 downto 0);
        MEM_WB_ctrl_WB_RegWrite : out std_logic;
        MEM_WB_ctrl_WB_MemToReg : out std_logic);      
    end component;
        signal clk : std_logic := '0';     
        signal reset : std_logic := '1';
        signal cycle : integer := 0;    
        signal reg_files : register_files;
        signal IF_ID_PCPlus4 :  std_logic_vector(31 downto 0);
        signal IF_ID_inst :  std_logic_vector(31 downto 0);
        signal ID_EX_PCPlus4 :  std_logic_vector(31 downto 0);
        signal ID_EX_registersReadData1 :  std_logic_vector(31 downto 0);
        signal ID_EX_registersReadData2 :  std_logic_vector(31 downto 0);
        signal ID_EX_signExtdImm :  std_logic_vector(31 downto 0);
        signal ID_EX_inst_20_16 :  std_logic_vector(4 downto 0);
        signal ID_EX_inst_15_11 :  std_logic_vector(4 downto 0);
        signal ID_EX_ctrl_EX_RegDst :  std_logic;
        signal ID_EX_ctrl_EX_ALUSrc :  std_logic;
        signal ID_EX_ctrl_EX_ALUOp :  std_logic_vector(1 downto 0);
        signal ID_EX_ctrl_MEM_Branch :  std_logic;
        signal ID_EX_ctrl_MEM_MemRead :  std_logic;
        signal ID_EX_ctrl_MEM_MemWrite :  std_logic;
        signal ID_EX_ctrl_WB_RegWrite :  std_logic;
        signal ID_EX_ctrl_WB_MemToReg :  std_logic;
        signal EX_MEM_branchTargetAddr :  std_logic_vector(31 downto 0);
        signal EX_MEM_ALUResult :  std_logic_vector(31 downto 0);
        signal EX_MEM_registersReadData2 :  std_logic_vector(31 downto 0);
        signal EX_MEM_writeRegForRegisters :  std_logic_vector(4 downto 0);
        signal EX_MEM_ctrl_MEM_Branch :  std_logic;
        signal EX_MEM_ctrl_MEM_MemRead :  std_logic;
        signal EX_MEM_ctrl_MEM_MemWrite :  std_logic;
        signal EX_MEM_ctrl_MEM_ALUZero :  std_logic;
        signal EX_MEM_ctrl_WB_RegWrite :  std_logic;
        signal EX_MEM_ctrl_WB_MemToReg :  std_logic;     
        signal MEM_WB_dataMemReadData :  std_logic_vector(31 downto 0);
        signal MEM_WB_ALUResult :  std_logic_vector(31 downto 0);
        signal MEM_WB_writeRegForRegisters :  std_logic_vector(4 downto 0);
        signal MEM_WB_ctrl_WB_RegWrite :  std_logic;
        signal MEM_WB_ctrl_WB_MemToReg :  std_logic;
begin    
    clk <= not clk after 3ns;
    reset <= '0' after 6ns; 
    UUT : MIPS port map (
                axi_clk   => clk,
                reg_files => reg_files,    
                reset => reset, 
                IF_ID_PCPlus4 =>IF_ID_PCPlus4,
                IF_ID_inst => IF_ID_inst,
                ID_EX_PCPlus4 => ID_EX_PCPlus4,
                ID_EX_registersReadData1 => ID_EX_registersReadData1,
                ID_EX_registersReadData2 => ID_EX_registersReadData2,
                ID_EX_signExtdImm => ID_EX_signExtdImm,
                ID_EX_inst_20_16 => ID_EX_inst_20_16,
                ID_EX_inst_15_11 => ID_EX_inst_15_11, 
                ID_EX_ctrl_EX_RegDst => ID_EX_ctrl_EX_RegDst,
                ID_EX_ctrl_EX_ALUSrc => ID_EX_ctrl_EX_ALUSrc,
                ID_EX_ctrl_EX_ALUOp => ID_EX_ctrl_EX_ALUOp,
                ID_EX_ctrl_MEM_Branch => ID_EX_ctrl_MEM_Branch,
                ID_EX_ctrl_MEM_MemRead => ID_EX_ctrl_MEM_MemRead,
                ID_EX_ctrl_MEM_MemWrite => ID_EX_ctrl_MEM_MemWrite,
                ID_EX_ctrl_WB_RegWrite => ID_EX_ctrl_WB_RegWrite,
                ID_EX_ctrl_WB_MemToReg => ID_EX_ctrl_WB_MemToReg,
                EX_MEM_branchTargetAddr => EX_MEM_branchTargetAddr,
                EX_MEM_ALUResult => EX_MEM_ALUResult,
                EX_MEM_registersReadData2 => EX_MEM_registersReadData2,
                EX_MEM_writeRegForRegisters =>  EX_MEM_writeRegForRegisters,
                EX_MEM_ctrl_MEM_Branch => EX_MEM_ctrl_MEM_Branch,
                EX_MEM_ctrl_MEM_MemRead => EX_MEM_ctrl_MEM_MemRead,
                EX_MEM_ctrl_MEM_MemWrite => EX_MEM_ctrl_MEM_MemWrite,
                EX_MEM_ctrl_MEM_ALUZero => EX_MEM_ctrl_MEM_ALUZero,
                EX_MEM_ctrl_WB_RegWrite => EX_MEM_ctrl_WB_RegWrite,
                EX_MEM_ctrl_WB_MemToReg => EX_MEM_ctrl_WB_MemToReg,
                MEM_WB_dataMemReadData => MEM_WB_dataMemReadData,
                MEM_WB_ALUResult => MEM_WB_ALUResult,
                MEM_WB_writeRegForRegisters => MEM_WB_writeRegForRegisters,
                MEM_WB_ctrl_WB_RegWrite => MEM_WB_ctrl_WB_RegWrite,
                MEM_WB_ctrl_WB_MemToReg => MEM_WB_ctrl_WB_MemToReg          
                );
    process(clk)    
    begin               
        if(clk = '1') then 
            cycle <= cycle + 1;
        end if;
    end process;
end Behavioral;