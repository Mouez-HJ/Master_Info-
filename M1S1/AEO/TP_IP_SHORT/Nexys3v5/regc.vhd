----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:44:29 02/27/2014 
-- Design Name: 
-- Module Name:    regc - Behavioral 
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
use IEEE.STD_LOGIC_1164.all;

entity reg0c is
	 generic(N : integer := 32);
	 port(
		 d : in STD_LOGIC_VECTOR(N-1 downto 0);
		 clk : in STD_LOGIC;
		 clr : in STD_LOGIC;
		 q : out STD_LOGIC_VECTOR(N-1 downto 0)
	     );

		attribute clock_signal : string;
	attribute clock_signal of clk : signal is "yes";
end reg0c;
architecture reg0c of reg0c is
begin
	process(clk, clr)
	begin
	if clk'event   and clk = '0' then
		if clr = '1' then
			q <= (others => '0');
		else
				q <= d;
		end if;
	end if;						 
	end process;
end reg0c;

