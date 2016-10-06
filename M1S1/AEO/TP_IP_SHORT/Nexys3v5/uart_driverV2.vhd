----------------------------------------------------------------------------------
-- Copyright : UNIVERSITE DE LILLE 1 - INRIA Lille Nord de France
--  Villeneuve d'Accsq France
-- 
-- Module Name  : Wrapper_RAM
-- Project Name : Homade V1.5
-- Revision :     no
--                                          
-- Target Device :  spartan 6 spartan 3
-- Tool Version  :  tested on ISE 12.4,
--                                                   
-- Description   :  UART Driver : a wrapper disign for storinf data-RAM providing from PC-USB-connection
-- 
-- 
-- Contributor(s) :
-- Wissem Chouchene ( Creation  Ocotbre 2012) wissem.chouchene@inria.fr
-- Dekeyser Jean-Luc ( ) jean-luc.dekeyser@lifl.fr
-- 
-- Cecil Licence:
-- This software is a computer program whose purpose is to Implement the
-- Homade processor on Xilinx FPGA systems.
-- 
-- This software is governed by the CeCILL license under French law and
-- abiding by the rules of distribution of free software.  You can  use,
-- modify and/ or redistribute the software under the terms of the CeCILL
-- license as circulated by CEA, CNRS and INRIA at the following URL
-- "http://www.cecill.info".
-- 
-- As a counterpart to the access to the source code and  rights to copy,
-- modify and redistribute granted by the license, users are provided only
-- with a limited warranty  and the software's author,  the holder of the
-- economic rights,  and the successive licensors  have only  limited
-- liability.
--                                                                                          
-- In this respect, the user's attention is drawn to the risks associated
-- with loading,  using,  modifying and/or developing or reproducing the
-- software by the user in light of its specific status of free software,
-- that may mean  that it is complicated to manipulate,  and  that  also
-- therefore means  that it is reserved for developers  and  experienced
-- professionals having in-depth computer knowledge. Users are therefore
-- encouraged to load and test the software's suitability as regards their                                                                           
-- requirements in conditions enabling the security of their systems and/or
-- data to be ensured and,  more generally, to use and operate it in the
-- same conditions as regards security.
-- 
-- The fact that you are presently reading this means that you have had
-- knowledge of the CeCILL license and that you accept its terms.   
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_Logic_1164.ALL;
use IEEE.std_Logic_UNSIGNED.ALL;
use IEEE.std_Logic_ARITH.ALL;


entity Wrapper_RAM is
    Port ( 
			start        :out std_logic;
        rx_in        :in  std_logic;
       rxclk     : in     STD_LOGIC;  
		 Hclk      : in     STD_LOGIC;  	 
--Master
       wphase_M           : out     STD_LOGIC;
       data_M             : out     STD_LOGIC;
--Slave
       data_S             : out     STD_LOGIC;
       wphase_S           : out     STD_LOGIC
			  );
attribute clock_signal : string;
attribute clock_signal of rxclk : signal is "yes";

end Wrapper_RAM;

architecture rom_io of Wrapper_RAM is
--
	COMPONENT uart_rx
	PORT(
		rx_in : IN std_logic;
		rxclk ,Hclk : IN std_logic;  
		rx_reg : OUT std_logic_vector(7 downto 0);
		rx_ok : OUT std_logic
		);
	END COMPONENT;

component uart_baudClock is
    Port (      in_clk : in std_logic;
             baud_clk : out std_logic
         );
end component;

  COMPONENT shitfreg8
   PORT( D	:	IN	STD_LOGIC; 
          CE	:	IN	STD_LOGIC; 
          clk	:	IN	STD_LOGIC; 
          Q	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;
	
  COMPONENT pulse
     PORT( clk : IN STD_LOGIC; 
          inp : IN STD_LOGIC; 
          outp : OUT STD_LOGIC);
   END COMPONENT;
	
	COMPONENT uart_dispatch
	PORT(
		rx8 : IN std_logic_vector(7 downto 0);
		rxe : IN std_logic;
		clk : IN std_logic;          
		data_m : OUT std_logic;
		data_s : OUT std_logic;
		e_m : OUT std_logic;
		e_s : OUT std_logic;
		start : OUT std_logic
		);
	END COMPONENT;
--=====================================================================================
signal buf8 : std_logic_vector(7 downto 0);
signal rx_ok , buf8E: std_logic;
signal  baud_clk : std_logic;
--==============================
--==============================
begin
	Inst_uart_rx: uart_rx PORT MAP(
		rx_reg => buf8,
		rx_ok => rx_ok,
		rx_in => rx_in,
		Hclk=> hclk,
		rxclk => baud_clk
	);

							
pulse_shift: pulse PORT MAP(
  clk => Hclk, 
  inp => rx_ok, 
  outp => buf8E
   );


uart_baudClock_inst : uart_baudClock

  port map (      in_clk => rxclk,
               baud_clk => baud_clk
           );
			  
			  

	Inst_uart_dispatch: uart_dispatch PORT MAP(
		rx8 => buf8,
		rxe => buf8E,
		data_m => data_M,
		data_s => data_S,
		e_m => wphase_M,
		e_s => wphase_S,
		start => start,
		clk => Hclk
	);







end rom_io;
