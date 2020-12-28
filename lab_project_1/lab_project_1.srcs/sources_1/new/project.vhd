----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.10.2020 19:46:51
-- Design Name: 
-- Module Name: project - Behavioral
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

entity project is
    Port ( SS : in STD_LOGIC_VECTOR(5 downto 0);
           DD : out STD_LOGIC);
           
end project;

architecture Behavioral of project is
    component model_0 is
        Port ( notinput : in STD_LOGIC_VECTOR(5 downto 0);
           notoutput : out STD_LOGIC_VECTOR(5 downto 0));
    end component;
    component model_1 is
        Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : out STD_LOGIC);
    end component;
    component model_2 is
        Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           z : in STD_LOGIC;
           t : out STD_LOGIC);
    end component;
    component model_3 is
        Port ( aa : in STD_LOGIC;
           bb : in STD_LOGIC;
           cc : out STD_LOGIC);
    end component;
    
signal w: STD_LOGIC_VECTOR(5 downto 0);
signal x: STD_LOGIC;
signal y: STD_LOGIC;

begin
    M0 : model_0 PORT MAP (SS, w);
    M1 : model_1 PORT MAP (w(5), w(4), W(3), x);
    M2 : model_2 PORT MAP (w(2), w(1), w(0), y);
    M3 : model_3 PORT MAP (x, y, DD);

end Behavioral;
