----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:48:25 02/27/2014 
-- Design Name: 
-- Module Name:    QD - Behavioral 
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

entity QD is
	 generic(N : integer := 32);
	 port(
		 d : in STD_LOGIC_VECTOR(N-1 downto 0);
		 clk : in STD_LOGIC;
		 q : out STD_LOGIC_VECTOR(N-1 downto 0)
	     );

		attribute clock_signal : string;
	attribute clock_signal of clk : signal is "yes";
end QD;
architecture QD of QD is
begin
	process(clk)
	begin
	if clk'event   and clk = '1' then
			q <= d;
	end if;						 
	end process;
end QD;