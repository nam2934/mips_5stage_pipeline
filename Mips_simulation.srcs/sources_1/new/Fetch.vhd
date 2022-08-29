----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/12/2022 03:49:43 PM
-- Design Name: 
-- Module Name: Fetch - Behavioral
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

entity Fetch is
    Port ( 
           -- input signal
           PCInput1   : in std_logic_vector(31 downto 0);
           PCSrc, Clk : in std_logic;
           reset      : in std_logic;
           
           -- output signal
           pc         : out std_logic_vector(31 downto 0);
           inst   : out std_logic_vector(31 downto 0));
end Fetch;

architecture Behavioral of Fetch is
--    -- array type def 
    type inst_memory is array(4095 downto 0) of std_logic_vector(31 downto 0);
    -- instruction memory
    signal inst_mem : inst_memory;
    signal NextPC : std_logic_vector(31 downto 0); 
    signal CurPC : std_logic_vector(31 downto 0);
--    component inst_mem_blk is
--      PORT (
--        clka : IN STD_LOGIC;
--        ena : IN STD_LOGIC;
--        addra : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
--        douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
--      );
--    end component;
begin        
    inst_mem(1024) <= x"21080001";          
    inst_mem(1028) <= x"216b0004";
    inst_mem(1032) <= x"01054824";
    inst_mem(1036) <= x"00000020";
    inst_mem(1040) <= x"00000020";
    inst_mem(1044) <= x"0125502a";
    inst_mem(1048) <= x"11450010";
    inst_mem(1052) <= x"00000020";
    inst_mem(1056) <= x"00000020";
    inst_mem(1060) <= x"8d6cfffc";
    inst_mem(1064) <= x"8d6d0000";
    inst_mem(1068) <= x"00000020";
    inst_mem(1072) <= x"018c6020";
    inst_mem(1076) <= x"00000020";
    inst_mem(1080) <= x"00000020";
    inst_mem(1084) <= x"01856025";
    inst_mem(1088) <= x"00000020";
    inst_mem(1092) <= x"00000020";
    inst_mem(1096) <= x"018d6022";
    inst_mem(1100) <= x"00000020";
    inst_mem(1104) <= x"00000020";
    inst_mem(1108) <= x"ad6cfffc";
    inst_mem(1112) <= x"0104702a";
    inst_mem(1116) <= x"00000020";
    inst_mem(1120) <= x"00000020";
    inst_mem(1124) <= x"11c5ffe6";
    inst_mem(1128) <= x"00000020";
    inst_mem(1132) <= x"00000020";
    inst_mem(1136) <= x"00000020";
    inst_mem(1140) <= x"00000020";
    inst_mem(1144) <= x"00000020";
    inst_mem(1148) <= x"00000020";
    inst_mem(1152) <= x"00000020";
    inst_mem(1156) <= x"00000020";
    inst_mem(1160) <= x"00000020";
    inst_mem(1164) <= x"00000020";
    inst_mem(1168) <= x"00000020";
    inst_mem(1172) <= x"00000020";
    inst_mem(1176) <= x"00000020";
    inst_mem(1180) <= x"00000020";
    inst_mem(1184) <= x"00000020";
    inst_mem(1188) <= x"00000020";
    inst_mem(1192) <= x"00000020";
    inst_mem(1196) <= x"00000020";
    inst_mem(1200) <= x"00000020";
    inst_mem(1204) <= x"00000020";
    inst_mem(1208) <= x"00000020";
    inst_mem(1212) <= x"00000020";
    inst_mem(1216) <= x"00000020";
    inst_mem(1220) <= x"00000020";
    inst_mem(1224) <= x"00000020";
    inst_mem(1228) <= x"00000020";           


    NextPC <= PCInput1 when PCSrc = '1' else
              SIGNED(CurPC) + 4;     
    process(Clk)    
    begin    
        pc <= SIGNED(NextPC) + 4;        
        inst <= inst_mem(CONV_INTEGER(UNSIGNED(NextPC)));   
        if(rising_edge(Clk)) then
            if(reset = '1') then
                CurPC <= x"000003fc";
            else
                CurPC <= NextPC;                    
            end if;             
        end if;
                                      
    end process;    
         
end Behavioral;