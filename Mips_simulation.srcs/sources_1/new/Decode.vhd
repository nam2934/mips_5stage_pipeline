library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use ieee.numeric_std;
package regfile_type is
    type register_files is array(0 to 31) of std_logic_vector(31 downto 0);
end package;


library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.ALL;
use work.regfile_type.all;

entity Decode is
	port (
		-- Users to add ports here
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
end Decode;

architecture Behavioral of Decode is
     signal registers : register_files := (
                x"00000000",
                x"00000000",
                x"00000000",
                x"00000000",
                x"00000006",
                x"00000001",
                x"00000200",
                x"00000000",
                x"00000000",
                x"00000000",
                x"00000000",
                x"00000200",
                x"00000000",
                x"00000000",
                x"00000000",
                x"00000000",
                x"00000000",
                x"00000000",
                x"00000000",
                x"00000000",
                x"00000000",
                x"00000000",
                x"00000000",
                x"00000000",
                x"00000000",
                x"00000000",
                x"00000000",
                x"00000000",
                x"00000000",
                x"00000000",
                x"00000000",
                x"00000000"  
           );   
       signal iReadRegister1, iReadRegister2 : std_logic_vector(4 downto 0); 
       signal imm_16                         : std_logic_vector(15 downto 0);                   
begin
    register_out <= registers;
    iReadRegister1 <= inst(25 downto 21); 
    iReadRegister2 <= inst(20 downto 16); 
    inst_20_16 <= inst(20 downto 16);
    inst_15_11 <= inst(15 downto 11);
    imm_16 <= inst(15 downto 0);
    signExtdImm <= CONV_STD_LOGIC_VECTOR(SIGNED(imm_16), signExtdImm'length);
    oReadData1 <= registers(CONV_INTEGER(UNSIGNED(iReadRegister1)));
    oReadData2 <= registers(CONV_INTEGER(UNSIGNED(iReadRegister2)));                            
    process(Clk)   
    begin     
        if(regWrite = '1' and writeRegister /= "00000") then 
            registers(CONV_INTEGER(UNSIGNED(writeRegister))) <= writeData;                                                                         
        end if;                                                     
    end process;     
end behavioral;