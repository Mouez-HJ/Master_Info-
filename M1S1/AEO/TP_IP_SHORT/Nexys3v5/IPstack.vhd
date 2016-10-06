----------------------------------------------------------------------------------
-- Copyright : UNIVERSITE DE LILLE 1 - INRIA Lille Nord de France
--  Villeneuve d'Accsq France
-- 
-- Module Name  : IP_stack
-- Project Name :  Homade V2.1
-- Revision :     no 
--                                         
-- Target Device :     spartan 6 spartan 3
-- Tool Version : tested on ISE 12.4,
--                                                   
-- Description :  IP Stack
-- 
-- 
-- Contributor(s) :
-- Dekeyser Jean-Luc ( Creation  juin 2012) jean-luc.dekeyser@lifl.fr
-- Wissem Chouchene ( revision 001,  Ocotbre 2012) wissem.chouchene@inria.fr
-- 
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
use IEEE.STD_LOGIC_1164.ALL;
use work.IPcodes.all;



entity IP_stack is
		GENERIC (Mycode : std_logic_vector(7 downto 0) );
    Port ( Tin : in  STD_LOGIC_VECTOR (31 downto 0);
           Nin : in  STD_LOGIC_VECTOR (31 downto 0);
           N2in : in  STD_LOGIC_VECTOR (31 downto 0);
           IPcode : in  STD_LOGIC_vector (10 downto 0);
			  clearstack : out std_logic;
           Tout : out  STD_LOGIC_VECTOR (31 downto 0);
           Nout : out  STD_LOGIC_VECTOR (31 downto 0);
           N2out : out  STD_LOGIC_VECTOR (31 downto 0));
end IP_stack;

architecture Behavioral of IP_stack is

signal tout1, nout1, N2out1 : std_logic_vector (31 downto 0);
signal actif : std_logic ;

begin
actif <= '1' when IPcode(10 downto 3 ) = Mycode else '0' ;

Tout1 <= N2in when IPcode (2 downto 0) =  IRot else
			Tin when (IPcode (2 downto 0) =  IDup or IPcode (2 downto 0) =  ITuck or IPcode (2 downto 0) =  INip) else 
			Nin ;
Tout <= Tout1 when actif='1'  else (others =>'Z');

Nout1 <= N2in when   IPcode (2 downto 0) =  IInvRot else 
			Nin when IPcode (2 downto 0) =  ITuck  else
			Tin ;
Nout <= Nout1 when actif='1'  else (others =>'Z');

N2out1 <= Tin when IPcode (2 downto 0) = IInvRot or IPcode (2 downto 0) = ITuck else 
			Nin ;	
N2out <= N2out1 when actif='1'  else (others =>'Z');

clearstack <= IPcode(2) and IPcode(1) and IPcode(0) and actif ;


end Behavioral;

