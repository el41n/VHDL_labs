----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/10/2019 04:03:20 PM
-- Design Name: 
-- Module Name: first_test - Behavioral
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

entity first_test is
--  Port ( );
end first_test;

architecture Behavioral of first_test is
    component first is
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
    end component;
    signal a00, a11, a22, a33, b00, b11, b22, b33, albb, aebb, agbb, ll, gg, ee: std_logic := '0';
begin
    first_component: component first
        port map(
            a0 => a00, 
            a1 => a11,
            a2 => a22, 
            a3 => a33,
            b0 => b00,
            b1 => b11,
            b2 => b22,
            b3 => b33,
            alb => albb,
            aeb => aebb,
            agb => agbb,
            
            l => ll,
            e => ee,
            g => gg
        );
    
    process
    begin
        a00 <= not a00;
        wait for 2ns;
    end process;
    process 
    begin
        b00 <= not b00;
        wait for 4ns;
    end process;
    
    process
    begin
        a11 <= not a11;
        wait for 8ns;
    end process;
    process 
    begin
        b11 <= not b11;
        wait for 16ns;
    end process;
    
    process
    begin
        a22 <= not a22;
        wait for 32ns;
    end process;
    process 
    begin
        b22 <= not b22;
        wait for 64ns;
    end process;
    
    process
    begin
        a33 <= not a33;
        wait for 128ns;
    end process;
    process 
    begin
        b33 <= not b33;
        wait for 256ns;
    end process;    
    
    process
    begin
        aebb <= not aebb;
        wait for 512ns;
    end process;
    process 
    begin
        albb <= not albb;
        wait for 1024ns;
    end process;
    process 
    begin
        agbb <= not agbb;
        wait for 2048ns;
    end process;
    
end Behavioral;
