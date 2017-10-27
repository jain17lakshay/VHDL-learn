----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.09.2017 23:51:40
-- Design Name: 
-- Module Name: dec3x8st - structural
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

entity dec3x8st is
    Port ( a : in STD_LOGIC;
       b : in STD_LOGIC;
       c : in STD_LOGIC;
       y : out STD_LOGIC);
end dec3x8st;


architecture structural of dec3x8st is
component dec3x8 is
    Port ( i0 : in STD_LOGIC;
           i1 : in STD_LOGIC;
           i2 : in STD_LOGIC;
           o0 : out STD_LOGIC;
           o1 : out STD_LOGIC;
           o2 : out STD_LOGIC;
           o3 : out STD_LOGIC;
           o4 : out STD_LOGIC;
           o5 : out STD_LOGIC;
           o6 : out STD_LOGIC;
           o7 : out STD_LOGIC;
           en : in STD_LOGIC);
end component;
signal s1,s2,s3,s4 :std_logic;
begin
g1: dec3x8 port map(i0=>a,i1=>b,i2=>c,o1=>s1,o2=>s2,o5=>s3,o7=>s4,en=>'1');
y <= s1 or s2 or s3 or s4;
end structural;
