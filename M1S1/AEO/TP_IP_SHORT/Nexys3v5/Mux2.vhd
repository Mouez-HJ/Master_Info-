----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:10:29 11/06/2012 
-- Design Name: 
-- Module Name:    Mux4 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux2 is
    Port ( X0 : in  STD_LOGIC_VECTOR (31 downto 0);
           X1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Y : out  STD_LOGIC_VECTOR (31 downto 0);
           sel : in  STD_LOGIC);
end Mux2;

architecture Behavioral of Mux2 is

begin
y <= X0 when sel = '0' else X1 ;

end Behavioral;

