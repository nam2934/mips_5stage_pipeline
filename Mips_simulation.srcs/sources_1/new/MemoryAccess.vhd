----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/14/2022 09:28:11 PM
-- Design Name: 
-- Module Name: MemoryAccess - Behavioral
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
package data_mem_type is
    type data_memory is array(1023 downto 0) of std_logic_vector(31 downto 0);
end package;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use work.data_mem_type.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MemoryAccess is
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
end MemoryAccess;

architecture Behavioral of MemoryAccess is
    -- data memory
    signal data_mem : data_memory;        
begin
    PCSrc <= Branch and oZero;
    process(ALUResult, oReadData2, MemWrite, MemRead)
    begin
        data_mem(512) <= x"00000001";
        data_mem(516) <= x"00000002";
        data_mem(520) <= x"00000003";
        data_mem(524) <= x"00000004";
        data_mem(528) <= x"00000005";
        data_mem(532) <= x"00000006";
        data_mem(536) <= x"00000007";
        data_mem(540) <= x"00000008";
        if(MemWrite = '1') then
            data_mem(CONV_INTEGER(UNSIGNED(ALUResult))) <= oReadData2;
        end if;
        if(MemRead = '1') then
            oReadData <= data_mem(CONV_INTEGER(UNSIGNED(ALUResult)));
        end if;                
    end process;
end Behavioral;