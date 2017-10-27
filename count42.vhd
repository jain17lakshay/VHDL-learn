----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.10.2017 21:09:07
-- Design Name: 
-- Module Name: count42 - Behavioral
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

entity count42 is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           red,green,yellow : out  STD_LOGIC:='0';

end count42;

architecture Behavioral of count42 is
component count1 is
 port(tin:in std_logic;
 clk : in std_logic;
 rst, updown:in std_logic;
 q:out std_logic_vector(1 downto 0);
 qb:out std_logic);
end component;
begin
u0:count 1 port map(tin,clk,rst,'1',q(1 downto 0),qb);

end Behavioral;
