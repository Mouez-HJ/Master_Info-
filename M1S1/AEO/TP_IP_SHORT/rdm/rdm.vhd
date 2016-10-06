----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:36:29 11/18/2014 
-- Design Name: 
-- Module Name:    rdm - Behavioral 
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

entity rdm is
	generic ( width : integer :=  32 ); 
		port (
			clk , reset : in std_logic;
			enable : in std_logic;
			random_num : out std_logic_vector (width-1 downto 0)   --output vector            
		);
end rdm;

architecture random of rdm is
signal rdm : STD_LOGIC_VECTOR (width-1 downto 0) := x"80000000";
signal first : STD_LOGIC := '0';
begin

random : process(clk)
begin
	if clk'event and clk = '1' then
		if reset = '1' then
			rdm <= x"80000000";
		else
			if enable = '1' then
				first <= (((rdm(0) xnor rdm(2)) xnor rdm(3)) xnor rdm(4));
				rdm <= first & rdm(width-1 downto 1);
			end if;
		end if;
	end if;
	random_num <= rdm;
end process;

end random;