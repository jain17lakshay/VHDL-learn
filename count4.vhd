----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.10.2017 11:19:15
-- Design Name: 
-- Module Name: count4 - Behavioral
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

entity count4 is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           red,green,yellow : out  STD_LOGIC:='0';
           q : inout  STD_LOGIC_vector(0 to 3));
end count4;
architecture Behavioral of count4 is
component tffl is
port(t,rst,clk:in std_logic;
q,qb:out std_logic);
end component;
signal x,y,z,r,h:std_logic;
signal a:std_logic_vector(3 downto 0);
begin
r<= (q(0) and (not q(1)) and q(2) and q(3));
h<= (r or rst);
u0 : tffl port map('1',rst,clk,q(3),a(3));
u1: tffl port map(q(3),rst,clk,q(2),a(2));
x<=q(2) and q(3);
u2: tffl port map(x,rst,clk,q(1),a(1));
y<=q(1) and x;
u3: tffl port map(y,rst,clk,q(0),a(0));

yellow<= ((not q(0)) and (not q(1)) and (not q(2)) and (not q(3)));
green<= (((not q(0)) and q(1) and (not q(2)) and (not q(3))) or (not q(0) and (not q(1))  and q(3)) or (not q(0) and (not q(1))  and q(2)));
red<=  q(0) or (q(1) and q(3)) or (q(1) and q(2));
end Behavioral;
