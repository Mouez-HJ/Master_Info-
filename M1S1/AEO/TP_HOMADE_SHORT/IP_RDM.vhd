----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:48:31 11/20/2014 
-- Design Name: 
-- Module Name:    IP_Rdm - Behavioral 
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

entity IP_Rdm is
    GENERIC (Mycode : std_logic_vector(10 downto 0) ); 
        port (
    clk , reset : in std_logic; 
    IPcode : in std_logic_vector (10 downto 0);
    Tout : out std_logic_vector (31 downto 0)
    ); 
end IP_Rdm;

architecture Behavioral of IP_Rdm is

signal rdm: std_logic_vector(31 downto 0) ;
signal rst, enbl: std_logic;

COMPONENT random is

		generic ( width : integer :=  32 ); 

	port (
		clk , reset : in std_logic;
		enable : in std_logic;
		random_num : out std_logic_vector (width-1 downto 0)   --output vector            
	);

end COMPONENT;

begin
	RDM_count : random
		port map(
		clk => clk,
		reset => reset,
		enable => enbl,
		random_num => rdm
		);
		
enbl <= '1' when ipcode(10 downto 0)= Mycode else '0';		
Tout <= rdm when ipcode(10 downto 0)= Mycode else (others =>'Z');
end Behavioral;
