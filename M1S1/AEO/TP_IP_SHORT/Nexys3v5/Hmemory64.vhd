----------------------------------------------------------------------------------
-- Copyright : UNIVERSITE DE LILLE 1 - INRIA Lille Nord de France
--  Villeneuve d'Accsq France
-- 
-- Module Name  : Hmemory64
-- Project Name : Homade V2.1
-- Revision :     yes
--                                         
-- Target Device :     spartan 6 spartan 3
-- Tool Version : tested on ISE 12.4,
--                                                   
-- Description :  Hmemory unit 
-- 
-- 
-- Contributor(s) :
-- Dekeyser Jean-Luc ( Creation  juin 2012) jean-luc.dekeyser@lifl.fr
-- Wissem Chouchene ( revision 001,  Ocotbre 2012) wissem.chouchene@inria.fr
-- Dekeyser Jean-Luc + Wissem Chouchene ( revision 002,  Ocotbre 2012)
-- 			debug two consecutive instructions with the same type


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
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_signed.ALL;
use work.OPcodes.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity HCU is
    Port ( 
           StartHomade : in  STD_LOGIC;
           Startadres : in  STD_LOGIC_VECTOR (31 downto 0);
			  ortree : out std_logic;
			  orwait : in std_logic;
           clr : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           offset : in  STD_LOGIC;
			  write_adr : out STD_LOGIC_VECTOR (31 downto 0);
			  write_data : out STD_LOGIC_VECTOR (47 downto 0);
			  write_en, w48e : out STD_LOGIC;
           prog_adr : out  STD_LOGIC_VECTOR (31 downto 0);
           Prog_instr : in  STD_LOGIC_VECTOR (63 downto 0);
			  IPdone : in std_logic;
			   Tlit : out  STD_LOGIC_VECTOR (11 downto 0);
           Ipcode : out  STD_LOGIC_VECTOR (10 downto 0);
           LITload : out  STD_LOGIC;
			  shortIP : out std_logic;
			  X, Y : out std_logic_vector (1 downto 0);
			  spmdcode: out std_logic_vector ( 12 downto 0);
			  spmdtrig : out std_logic
			  );

	attribute clock_signal : string;
	attribute clock_signal of clk : signal is "yes";
end HCU;

architecture Behavioral of HCU is

type StateType is (short_instr,long_instr, next_wait);
signal etat : StateType:= short_instr;

signal stackpush, stackpop, Trld ,W48, running: std_logic;
signal osbusin,osbusout: std_logic_vector(9 downto 0);
signal ortreeld, ortreeload, ortreestate: std_logic_vector(0 downto 0);

signal retbus,PC_adr, PC_ret: std_logic_vector(31 downto 0):=x"00000000";

signal ins: std_logic_vector(15 downto 0):=x"0000";






	COMPONENT reg_offset
	PORT(
		load : IN std_logic;
		d : IN std_logic_vector(9 downto 0);
		clr ,clk: IN std_logic;          
		q : OUT std_logic_vector(9 downto 0)
		);
	END COMPONENT;

	
	COMPONENT reg0
		generic (N : integer := 32);
	PORT(
		load : IN std_logic;
		d : IN std_logic_vector(N-1 downto 0);
		clr ,clk: IN std_logic;          
		q : OUT std_logic_vector(N-1 downto 0)
		);
	END COMPONENT;
	
	COMPONENT reg1
			generic (N : integer := 32);
	PORT(
		load : IN std_logic;
		d : IN std_logic_vector(N-1 downto 0);
		clr ,clk: IN std_logic;          
		q : OUT std_logic_vector(N-1 downto 0)
		);
	END COMPONENT;
	
	COMPONENT rstack
	PORT(
		clk : IN std_logic;
		push : IN std_logic;
		pop : IN std_logic;
		data_in : IN std_logic_vector(31 downto 0);
		clr : IN std_logic;          
		data_out : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
--	
--	

---- dummy code
begin

		Prog_adr <= "00" & PC_adr( 31 downto 2 );
		w48e <= w48;


-- flag_ortree :reg1
--	generic map ( N => 1)
--		port map(
--                d=>ortreeld,
--                load=>'1',
--					 clk=>clk,
--					 clr => starthomade,
--                q=>ortreestate
--					 ); 
					 
--	ortree <= (not starthomade )and ortreestate(0);
--ortreeload(0) <= (not starthomade )and ortreeld(0);
--

ortree <= running or starthomade;

	Inst_returnstack: rstack PORT MAP(
		clk => clk,
		push => Stackpush,
		pop => Stackpop,
		data_in => PC_ret(31 downto 0),
		data_out => retbus(31 downto 0),
		clr => clr
	);					 

process (clk,clr,starthomade,startadres)
variable PC: std_logic_vector (31 downto 0)  ;
variable plus : integer range 0 to 7;
variable plusret : integer range 0 to 7;
variable wr_adr: std_logic_vector (31 downto 0):=x"00000000"  ;	
variable inslocal: std_logic_vector (15 downto 0) ;	
variable orlocal: std_logic_vector (0 downto 0) ;	
variable wr_data: std_logic_vector (47 downto 0) := x"000000000000";	
variable  stpush, stpop, wr_en: std_logic :='0';


--	attribute KEEP : string;
--	attribute KEEP of PCret : variable is "yes";
--	attribute KEEP of PC : variable is "yes";
--	attribute KEEP of wr_adr : variable is "yes";
--	attribute KEEP of wr_data : variable is "yes";

begin

if  clk'event and clk = '1' then
	if  (clr = '1' ) then
			PC_adr <= x"00000000";
         etat <= short_instr;
			running<= '1';
	elsif StartHomade = '1' then
			PC_adr <= Startadres ;
			etat <= short_instr;
			running<='1';
	else
	   PC := PC_adr;
		stpush:='0';
		w48<='0';
		stpop := '0';		
		wr_en :='0';
		wr_adr := x"00000000";
		wr_data := x"000000000000";
		orlocal :="0";
		shortip <= '0';
		Litload <= '0';
		x<="00";
		Y<= "00";
		Tlit<=x"000";
		Ipcode<= "11111111111";
		etat <= short_instr;	
		PC_adr<= PC_adr;
		spmdcode <="0000000000000";
		spmdtrig<='0';
		running<= '1';
		plus := 1;
		case PC(1 downto 0) is
		when "00" =>
			if Prog_instr ( 47 downto 32 ) = x"ffff" then
				plus := 4 ;
			end if; 
		when "01" =>
			if Prog_instr ( 31 downto 16 ) = x"ffff" then
				plus := 3 ;
			end if; 				
		when "10" =>
			if Prog_instr ( 15 downto 0 ) = x"ffff" then
				plus := 2 ;
			end if; 
		when others => plus :=1;
		end case;
		
			case etat is
--********************************************************************************************************************************************			
			when short_instr =>
					case 	    PC_adr( 1 downto 0 ) is
						when  "00"  => inslocal := 		Prog_instr(63 downto 48);
						when  "01"  => inslocal :=		Prog_instr(47 downto 32); 
						when  "10"	=> inslocal :=		Prog_instr(31 downto 16); 
						when  "11"	=> inslocal :=		Prog_instr(15 downto 0) ; 
						when others	=> inslocal :=		x"0000" ;
					end case;		
--================================================================================
					if inslocal /= HLT then
						if  inslocal= 	BRANCH_ABSOLUTE or inslocal = CALL then
								if PC(1 downto 0)= "00" then
									PC_adr <= Prog_instr ( 47 downto 16 );
								else
									PC_adr <= Prog_instr ( 31 downto 0 );
								end if;
						end if;
						if inslocal = CALL then
								if PC(1 downto 0)= "00" and  Prog_instr ( 15 downto 0 ) = x"ffff" then
										Plusret :=4;
								else 
										Plusret := 3;							
								end if ;
									PC_Ret <= PC + Plusret;
								stpush:='1';					
						end if ;
						if inslocal = RET then
								PC_adr <= retbus;
								stpop:= '1';							
						end if;
						if inslocal(15 downto 10) = 	BRANCH_RELATIVE then

								PC_adr <= PC +  inslocal( 9 downto 0) ;--conv_integer ( inslocal( 9 downto 0) );						
						end if;
						if inslocal(15 downto 10) =  BRANCH_ZERO  then
								if  offset = '0'  then
								    PC_adr <= PC +  inslocal( 9 downto 0)  ;--conv_integer ( inslocal( 9 downto 0) );
								else
									PC_adr <= PC+ plus;
								end if;								
						end if;
						if inslocal(15 downto 10) =  BRANCH_NOT_ZERO then
								if  offset /= '0'  then 
								    PC_adr <= PC +  inslocal( 9 downto 0)  ;--conv_integer ( inslocal( 9 downto 0) );
								else
									PC_adr <= PC+ Plus;
								end if;
					
						end if;
						if inslocal = x"ffff" then
								PC_adr <=PC + plus;
						end if;
						if (inslocal (10) = '1' and inslocal (15) = '1' ) then   ---  long  IP  
								etat <= long_instr;
								IPcode <= inslocal (10 downto 0);
						end if;
						if inslocal(15 downto 13 ) = IWAIT then   ---   WAIT
							if orwait = '0' then 
								PC_adr <= PC + plus;		
								etat <= short_instr;
							else
								etat <= next_wait;
							end if;
						end if;
						if inslocal (15 downto 12) = WIM then
							wr_adr := x"00000" & inslocal( 11 downto 0);
							wr_data := prog_instr(47 downto 0);
							wr_en :='1';
							w48 <= '1';
							PC_adr <= PC + 4;
							
						end if;
						-- short IP ou LIT
						if  inslocal(15 downto 12) =  LIT then --- Literal  12 bits
												Tlit <=   inslocal (11 downto 0);
												LITload<='1';
												X<= "00";
												Y<= "01";
												PC_adr <= PC + plus ;
						end if;
												
						if inslocal(15) = '1' then --- IP
												IPcode <= inslocal (10 downto 0);
												X<= inslocal (14 downto 13);
												Y <= inslocal(12 downto 11);
												if inslocal(10) = '0' then --- instruction in one cycle
													shortIP<='1';
													PC_adr <= PC + plus;
												else 
													etat <= long_instr;
												end if;
								elsif inslocal(15 downto 13) = SPMD then --- SPMD
												SPMDcode <= inslocal (12 downto 0);
												SPMDtrig <='1';
						--- instruction in one cycle
												shortIP<='1';
												PC_adr <= PC + plus ;

						end if;


					else
						orlocal:="1";
						running <= '0';
					end if;

--********************************************************************************************************************************************
			when long_instr =>
				X <= inslocal (14 downto 13);
				Y <= inslocal (12 downto 11);
				if IPdone ='1'  then 
					PC_adr <= PC + plus;		
					etat <= short_instr;
				else
					etat <= long_instr;
				end if;
			when next_wait =>
				if  orwait = '0' then 
					PC_adr <= PC + plus;
					etat <= short_instr;
				else
					etat <= next_wait;
				end if;

--********************************************************************************************************************************************					
			when others => etat <= short_instr;
			end case;
	end if;
	stackpush<= stpush;
	stackpop<= stpop;	
	write_adr <= wr_adr;
	write_data <= wr_data;
	write_en <= wr_en;
--	ortreeld(0)  <= orlocal(0)  and not spmdlocal;

	ins <= inslocal;
end if;
end process;

end Behavioral;



