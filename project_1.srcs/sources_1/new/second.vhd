----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/10/2019 05:38:42 PM
-- Design Name: 
-- Module Name: second - Behavioral
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

entity second is
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
end second;

architecture Behavioral of second is
    signal y1, y2, y3, y4: std_logic;
    signal z1, z2, z3, z4, z5, z6, z7, z8: std_logic;
    signal m1, m2, m3, m4: std_logic;
    signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12: std_logic;
begin

    y1_p: process(A3, B3)
    begin
        y1 <= not (a3 and b3);
    end process;
    
    y2_p: process(A2, B2)
    begin
        y2 <= not (a2 and b2);
    end process;
    
    y3_p: process(A1, B1)
    begin
        y3 <= not (A1 and B1);
    end process;
    
    y4_p: process(A0, B0)
    begin
        y4 <= not (A0 and B0);
    end process;
    
    m1_p: process(y1)
    begin
        m1 <= not((A3 and y1) or (B3 and y1));
    end process;
    
    m2_p: process(y2)
    begin
        m1 <= not((A2 and y2) or (B2 and y2));
    end process;
    
    m3_p: process(y3)
    begin
        m1 <= not((A1 and y3) or (B1 and y3));
    end process;
    
    m4_p: process(y4)
    begin
        m1 <= not((A0 and y4) or (B0 and y4));
    end process;
    
    greater: process(m1, m2, m3, m4, AlB, AeB)
    begin
        G <= not(B3 and y1) 
             and 
             not(B2 and y2 and m1)
             and 
             not(B1 and y3 and m1 and m2)
             and
             not(B0 and y4 and m1 and m2 and m3)
             and
             not(AlB and m1 and m2 and m3 and m4)
             and
             not(AeB and m1 and m2 and m3 and m4);
    end process;
    
    equal: process(m1, m2, m3, m4, Aeb)
    begin
        E <= m1 and m2 and m3 and m4 and AeB;
    end process;
    
    less: process(m1, m2, m3, m4, AgB, AeB)
    begin
        L <= not(A3 and y1) 
             and 
             not(A2 and y2 and m1)
             and 
             not(A1 and y3 and m1 and m2)
             and
             not(A0 and y4 and m1 and m2 and m3)
             and
             not(AgB and m1 and m2 and m3 and m4)
             and
             not(AeB and m1 and m2 and m3 and m4);
    end process;

end Behavioral;
