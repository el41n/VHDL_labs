----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/10/2019 03:28:32 PM
-- Design Name: 
-- Module Name: first - Behavioral
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

entity first is
    port(
        A0: in std_logic;
        A1: in std_logic;
        A2: in std_logic;
        A3: in std_logic;
        B0: in std_logic;
        B1: in std_logic;
        B2: in std_logic;
        B3: in std_logic;
        AlB: in std_logic;
        AeB: in std_logic;
        AgB: in std_logic;
        
        L: out std_logic;
        E: out std_logic;
        G: out std_logic
    );
--  Port ( );
end first;

architecture Behavioral of first is
    signal y1, y2, y3, y4: std_logic;
    signal z1, z2, z3, z4, z5, z6, z7, z8: std_logic;
    signal m1, m2, m3, m4: std_logic;
    signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12: std_logic;
--    signal l1, e, g: std_logic;
begin
    y1 <= not (A3 and B3); 
    y2 <= not (A2 and B2); 
    y3 <= not (A1 and B1); 
    y4 <= not (A0 and B0); 
    
    z1 <= A3 and y1;
    z2 <= B3 and y1;
    z3 <= A2 and y2;
    z4 <= B2 and y2;
    z5 <= A1 and y3;
    z6 <= B1 and y3;
    z7 <= A0 and y4;
    z8 <= B0 and y4;
    
    m1 <= not (z1 or z2);
    m2 <= not (z3 or z4);
    m3 <= not (z5 or z6);
    m4 <= not (z7 or z8);
    
    n1 <= B3 and y1;
    n2 <= B2 and y2 and m1;
    n3 <= B1 and y3 and m1 and m2;
    n4 <= B0 and y4 and m1 and m2 and m3;
    n5 <= AlB and m1 and m2 and m3 and m4;
    n6 <= AeB and m1 and m2 and m3 and m4;
    n7 <= AeB and m1 and m2 and m3 and m4;
    n8 <= AgB and m1 and m2 and m3 and m4;
    n9 <= A0 and y4 and m1 and m2 and m3;
    n10 <= A1 and y3 and m1 and m2;
    n11 <= A2 and y2 and m1;
    n12 <= A3 and y1;
    
    L <= not n7 and not n8 and not n9 and not n10 and not n11 and not n12;
    E <= m1 and m2 and m3 and m4 and AeB;
    G <= not n1 and not n2 and not n3 and not n4 and not n5 and not n6;
end Behavioral;
