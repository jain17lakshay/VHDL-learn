----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.09.2017 23:04:29
-- Design Name: 
-- Module Name: dec2x4 - Behavioral
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

entity dec2x4 is
Port ( i: in STD_LOGIC_VECTOR(1 downto 0);
       o: out STD_LOGIC_VECTOR(3 downto 0);
       en: in STD_LOGIC);
end dec2x4;

architecture Behavioral of dec2x4 is
begin
process(i,en)
begin
if(en='1') then

    case i is
        when "00" => o <= "0001";
        when "01" => o <="0010";
        when "10" => o <="0100";
        when others =>o <="1000";
    end case;
else
    o<="0000";
end if;
end process;
end Behavioral;