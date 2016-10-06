----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:28:59 03/11/2014 
-- Design Name: 
-- Module Name:    IPsleep - Behavioral 
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

entity IP_sleep is
		GENERIC (Mycode : std_logic_vector(10 downto 0) );
    Port ( IPcode : in  STD_LOGIC_VECTOR (10 downto 0);
           activity_reset : out  STD_LOGIC);
end IP_sleep;

architecture Behavioral of IP_sleep is

begin
activity_reset <= '1' when ipcode(10 downto 0)= Mycode else '0';

end Behavioral;

