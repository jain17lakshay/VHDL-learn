----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.10.2017 09:32:04
-- Design Name: 
-- Module Name: count1 - Behavioral
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

entity count1 is
 port(tin,clk,rst, updown:in std_logic;
 q:out std_logic_vector(1 downto 0);
 qb:out std_logic);
end count1;

architecture Behavioral of count1 is
 component tffl is
port(t,rst,clk:in std_logic;
q,qb:out std_logic);
end component;
signal s:std_logic;
signal o:std_logic_vector(1 downto 0);
signal a:std_logic;
signal b:std_logic;
signal c:std_logic;
begin

a1:tffl port map(tin,rst,clk,o(0),s);
q(0)<=o(0);
a<= updown and o(0);
b<= (not updown) and s;
c<= a or b;
a2:tffl port map(c,rst,clk,o(1),qb);
q(1)<=o(1);
--a(1)<= a(0) and q(1);
--b(1)<= b(0) and s(1);
--c(1)<= a(1) or b(1);
--a3:tffl port map(c(1),rst,clk,q(2),s(2));
--a(2)<= a(1) and q(2);
--b(2)<= b(1) and s(2);
--c(2)<= a(2) or b(2);
--a4:tffl port map(c(2),rst,clk,q(3),s(3));
end Behavioral;
