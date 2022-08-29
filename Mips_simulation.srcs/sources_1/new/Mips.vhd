----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/12/2022 08:23:44 PM
-- Design Name: 
-- Module Name: Mips - Behavioral
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

entity Mips is
    Port( 
        axi_clk : in std_logic;    
        reset : in std_logic; 
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
        MEM_WB_ctrl_WB_MemToReg : out std_logic          
        );        
end Mips;

architecture Behavioral of Mips is
    -- fetch
    component Fetch is
        Port ( PCInput1   : in std_logic_vector(31 downto 0);
               reset   : in std_logic;
               PCSrc, Clk : in std_logic;
               pc         : out std_logic_vector(31 downto 0);
               inst   : out std_logic_vector(31 downto 0));
    end component;
    
    -- if_id_latch
    component IF_ID_latch is
    Port ( IF_pc   : in std_logic_vector(31 downto 0);
           IF_inst : in std_logic_vector(31 downto 0);
           Clk     : in std_logic;
           ID_pc   : out std_logic_vector(31 downto 0);
           ID_inst : out std_logic_vector(31 downto 0));
    end component;

    
    -- decode
    component Decode is
      Port ( 
         -- input signal
         inst          : in std_logic_vector(31 downto 0);
         writeRegister : in std_logic_vector(4 downto 0);
         writeData     : in std_logic_vector(31 downto 0);
         regWrite      : in std_logic;
         Clk           : in std_logic;
         -- output signal
         oReadData1    : out std_logic_vector(31 downto 0);
         oReadData2    : out std_logic_vector(31 downto 0);
         signExtdImm   : out std_logic_vector(31 downto 0);
         inst_20_16    : out std_logic_vector(4 downto 0);
         inst_15_11    : out std_logic_vector(4 downto 0);
         register_out  : out register_files
             );
    end component;    
    
    -- Control
    component Control is
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
    end component;   
         
    -- id_ex_latch 
    component ID_EX_latch is
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
    end component;    
    
    -- excute 
    component Excute is
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
    end component;
    
    -- ex_mem_latch 
    component EX_MEM_latch is
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
    end component;    
    
    -- memory access 
    component MemoryAccess is
     Port ( 
            -- input signal
            Branch : in std_logic;
            oZero  : in std_logic;
            ALUResult : in std_logic_vector(31 downto 0);
            oReadData2 : in std_logic_vector(31 downto 0);
            MemWrite   : in std_logic;
            MemRead    : in std_logic;
            
            -- output signal
            PCSrc      : out std_logic;
            oReadData   : out std_logic_vector(31 downto 0));
    end component;    
    
    -- mem_wb_latch 
    component MEM_WB_latch is
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
    end component;    
    
    -- write back 
    component WriteBack is
        Port ( 
              -- input signal
              oResult   : in std_logic_vector(31 downto 0);
              oReadData : in std_logic_vector(31 downto 0);
              MemToReg  : in std_logic;
              
              -- output signal          
              writeData : out std_logic_vector(31 downto 0));
    end component;    

    signal IF_pc, IF_inst : std_logic_vector(31 downto 0);
    signal PCInput1 : std_logic_vector(31 downto 0);
    signal pcSrc : std_logic;
    
    signal ID_pc, ID_inst : std_logic_vector(31 downto 0);
    
    signal writeRegister : std_logic_vector(4 downto 0);
    signal writeData : std_logic_vector(31 downto 0);
    signal regWrite : std_logic;
    signal ID_oReadData1, ID_oReadData2, ID_signExtdImm : std_logic_vector(31 downto 0);
    signal ID_inst_20_16, ID_inst_15_11 : std_logic_vector(4 downto 0);
    
    signal ID_RegDst, ID_ALUSrc, ID_Branch, ID_MemRead, ID_MemWrite, ID_RegWrite, ID_MemToReg : std_logic;
    signal ID_ALUOp : std_logic_vector(1 downto 0);
    
    signal EX_RegDst, EX_ALUSrc, EX_Branch, EX_MemRead, EX_MemWrite, EX_RegWrite, EX_MemToReg : std_logic;
    signal EX_ALUOp : std_logic_vector(1 downto 0);
    signal EX_oReadData1, EX_oReadData2, EX_signExtdImm, EX_pc : std_logic_vector(31 downto 0);
    signal EX_inst_20_16, EX_inst_15_11 : std_logic_vector(4 downto 0);    
    
    signal EX_branchTargetAddr, EX_ALUResult : std_logic_vector(31 downto 0);
    signal EX_oZero : std_logic;
    signal EX_writeRegToRegisters : std_logic_vector(4 downto 0);
    
    signal MEM_Branch, MEM_MemRead, MEM_MemWrite, MEM_RegWrite, MEM_MemToReg : std_logic;
    signal MEM_oReadData2, MEM_ALUResult : std_logic_vector(31 downto 0);
    signal MEM_oZero : std_logic;
    signal MEM_writeRegToRegisters : std_logic_vector(4 downto 0);
    
    signal MEM_oReadData : std_logic_vector(31 downto 0);
    
    signal WB_MemToReg : std_logic;
    signal WB_oResult, WB_oReadData : std_logic_vector(31 downto 0); 
    signal reg_files_sig : register_files;   
begin
    
    fetch_component : Fetch port map(
                      reset => reset,
                      pc => IF_PC,
                      inst => IF_inst,
                      PCInput1 => PCInput1,
                      PCSrc => pcSrc,
                      Clk => axi_clk);
    if_id_latch_component : IF_ID_latch port map(
                            IF_pc => IF_pc,
                            IF_inst => IF_inst,
                            Clk => axi_clk,
                            ID_pc => ID_pc,
                            ID_inst => ID_inst);
    decode_component : Decode port map(
             -- input signal
             inst => ID_inst,         
             writeRegister => writeRegister,
             writeData => writeData,
             regWrite => regWrite,            
             Clk => axi_clk,            
                              
             -- output signal
             oReadData1 => ID_oReadData1,
             oReadData2 => ID_oReadData2,
             signExtdImm => ID_signExtdImm,
             inst_20_16 => ID_inst_20_16,    
             inst_15_11 => ID_inst_15_11,
             register_out => reg_files_sig     
             );
    control_component : Control port map(
               -- input signal
               ID_inst => ID_inst,
               -- output signal
               ID_RegDst => ID_RegDst,
               ID_ALUSrc => ID_ALUSrc,
               ID_ALUOp => ID_ALUOp,
               ID_Branch => ID_Branch,
               ID_MemRead => ID_MemRead,
               ID_MemWrite => ID_MemWrite,              
               ID_RegWrite => ID_RegWrite,
               ID_MemToReg => ID_MemToReg);
     id_ex_latch_component : ID_EX_latch port map(
               -- input signal
               ID_RegDst => ID_RegDst,
               ID_ALUSrc => ID_ALUSrc,
               ID_ALUOp => ID_ALUOp,
               ID_Branch => ID_Branch,
               ID_MemRead => ID_MemRead,
               ID_MemWrite => ID_MemWrite,
               ID_RegWrite => ID_RegWrite,
               ID_MemToReg => ID_MemToReg,
               ID_oReadData1 => ID_oReadData1,
               ID_oReadData2 => ID_oReadData2,
               ID_signExtdImm => ID_signExtdImm,
               ID_inst_20_16  => ID_inst_20_16,
               ID_inst_15_11  => ID_inst_15_11,
               ID_pc => ID_pc,
               Clk => axi_clk,
               
               -- output signal
               EX_RegDst => EX_RegDst,     
               EX_ALUSrc => EX_ALUSrc,
               EX_ALUOp => EX_ALUOp,
               EX_Branch => EX_Branch,
               EX_MemRead => EX_MemRead,
               EX_MemWrite => EX_MemWrite,
               EX_RegWrite => EX_RegWrite,
               EX_MemToReg => EX_MemToReg,
               EX_oReadData1 => EX_oReadData1,
               EX_oReadData2 => EX_oReadData2,
               EX_signExtdImm => EX_signExtdImm,
               EX_inst_20_16 => EX_inst_20_16,
               EX_inst_15_11 => EX_inst_15_11,
               EX_pc => EX_pc);    
     excute_component : Excute port map(
              -- input signal
              pc => EX_pc,
              oReadData1 => EX_oReadData1,
              oReadData2 => EX_oReadData2,
              signExtdImm => EX_signExtdImm,
              inst_20_16 => EX_inst_20_16,
              inst_15_11 => EX_inst_15_11,
              ALUSrc => EX_ALUSrc,
              ALUOp => EX_ALUOp,
              RegDst => EX_RegDst,
              
              -- output signal
              branchTargetAddr => EX_branchTargetAddr,
              oResult => EX_ALUResult,
              oZero => EX_oZero, 
              writeRegToRegisters => EX_writeRegToRegisters);
      ex_mem_latch_component : EX_MEM_latch port map(
               -- input signal
               EX_Branch => EX_Branch,
               EX_MemRead => EX_MemRead,
               EX_MemWrite => EX_MemWrite,
               EX_RegWrite => EX_RegWrite,
               EX_MemToReg => EX_MemToReg,
               EX_oReadData2 => EX_oReadData2,
               EX_branchTargetAddr => EX_branchTargetAddr,
               EX_ALUResult => EX_ALUResult,
               EX_oZero => EX_oZero,
               EX_writeRegToRegisters => EX_writeRegToRegisters,
               Clk => axi_clk,
               
               -- output signal
               MEM_Branch => MEM_Branch,
               MEM_MemRead => MEM_MemRead,
               MEM_MemWrite => MEM_MemWrite,
               MEM_RegWrite => MEM_RegWrite,
               MEM_MemToReg => MEM_MemToReg,
               MEM_oReadData2 => MEM_oReadData2,
               MEM_branchTargetAddr => PCInput1,
               MEM_ALUResult => MEM_ALUResult,
               MEM_oZero => MEM_oZero,
               MEM_writeRegToRegisters => MEM_writeRegToRegisters);
       memory_access_component : MemoryAccess port map(
            -- input signal
            Branch => MEM_Branch,
            oZero  => MEM_oZero,
            ALUResult => MEM_ALUResult,
            oReadData2 => MEM_oReadData2,
            MemWrite => MEM_MemWrite,
            MemRead => MEM_MemRead,
            
            -- output signal
            PCSrc => pcSrc,
            oReadData => MEM_oReadData);
       mem_wb_latch_component : MEM_WB_latch port map(
            -- input signal 
            MEM_RegWrite => MEM_RegWrite,
            MEM_MemToReg => MEM_MemToReg,
            MEM_oResult => MEM_ALUResult,
            MEM_oReadData => MEM_oReadData,
            MEM_writeRegToRegisters => MEM_writeRegToRegisters,
            Clk => axi_clk,
            
            -- output signal
            WB_RegWrite => regWrite,
            WB_MemToReg => WB_MemToReg,
            WB_oResult => WB_oResult,
            WB_oReadData => WB_oReadData,
            WB_writeRegToRegisters => writeRegister);
       write_back_component : WriteBack port map(
              -- input signal
              oResult => WB_oResult,
              oReadData => WB_oReadData,
              MemToReg => WB_MemToReg,
              
              -- output signal          
              writeData => writeData); 
    reg_files <= reg_files_sig;                                             
    IF_ID_PCPlus4 <= IF_pc;
    IF_ID_inst <= IF_inst;
    ID_EX_PCPlus4 <= ID_pc;
    ID_EX_registersReadData1 <= ID_oReadData1;
    ID_EX_registersReadData2 <= ID_oReadData2;
    ID_EX_signExtdImm <= ID_signExtdImm;
    ID_EX_inst_20_16 <= ID_inst_20_16;
    ID_EX_inst_15_11 <= ID_inst_15_11;       
    ID_EX_ctrl_EX_RegDst <= ID_RegDst;
    ID_EX_ctrl_EX_ALUSrc <= ID_ALUSrc;
    ID_EX_ctrl_EX_ALUOp <= ID_ALUOp;
    ID_EX_ctrl_MEM_Branch <= ID_Branch;
    ID_EX_ctrl_MEM_MemRead <= ID_MemRead;
    ID_EX_ctrl_MEM_MemWrite <= ID_MemWrite;
    ID_EX_ctrl_WB_RegWrite <= ID_RegWrite;
    ID_EX_ctrl_WB_MemToReg <= ID_MemToReg;
    EX_MEM_branchTargetAddr <= EX_branchTargetAddr;
    EX_MEM_ALUResult <= EX_ALUResult;
    EX_MEM_registersReadData2 <= EX_oReadData2;
    EX_MEM_writeRegForRegisters <= EX_writeRegToRegisters; 
    EX_MEM_ctrl_MEM_Branch <= EX_Branch;
    EX_MEM_ctrl_MEM_MemRead <= EX_MemRead;
    EX_MEM_ctrl_MEM_MemWrite <= EX_MemWrite;
    EX_MEM_ctrl_MEM_ALUZero <= EX_oZero;
    EX_MEM_ctrl_WB_RegWrite <= EX_RegWrite;
    EX_MEM_ctrl_WB_MemToReg <= EX_MemToReg;
    MEM_WB_dataMemReadData <= MEM_oReadData;
    MEM_WB_ALUResult <= MEM_ALUResult;
    MEM_WB_writeRegForRegisters <= MEM_writeRegToRegisters;
    MEM_WB_ctrl_WB_RegWrite <= MEM_RegWrite;
    MEM_WB_ctrl_WB_MemToReg <= MEM_MemToReg;
                                             
end Behavioral;