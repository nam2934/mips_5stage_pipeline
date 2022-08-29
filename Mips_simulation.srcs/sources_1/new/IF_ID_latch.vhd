----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/12/2022 08:15:32 PM
-- Design Name: 
-- Module Name: IF_ID_latch - Behavioral
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

entity IF_ID_latch is
    Port ( IF_pc   : in std_logic_vector(31 downto 0);
           IF_inst : in std_logic_vector(31 downto 0);
           Clk     : in std_logic;
           ID_pc   : out std_logic_vector(31 downto 0);
           ID_inst : out std_logic_vector(31 downto 0));
end IF_ID_latch;

architecture Behavioral of IF_ID_latch is
begin
    process(Clk)
    begin
        if(rising_edge(Clk)) then
            ID_pc <= IF_pc;
            ID_inst <= IF_inst;
        end if;
    end process;
end Behavioral;