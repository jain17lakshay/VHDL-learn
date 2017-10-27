----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.09.2017 23:25:21
-- Design Name: 
-- Module Name: dec3x8 - dataflow
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

entity dec3x8 is
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
end dec3x8;

architecture dataflow of dec3x8 is
begin
o0<=(not i0) and (not i1) and (not i2) and en;
o1<=(i0) and (not i1) and (not i2) and en;
o2<=(not i0) and (i1) and (not i2) and en;
o3<=(i0) and (i1) and (not i2) and en;
o4<=(not i0) and (not i1) and (i2) and en;
o5<=(i0) and (not i1) and (i2) and en;
o6<=(not i0) and (i1) and (i2) and en;
o7<=(i0) and (i1) and (i2) and en;
end dataflow;
