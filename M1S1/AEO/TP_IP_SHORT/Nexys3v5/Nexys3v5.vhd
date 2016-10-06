----------------------------------------------------------------------------------
-- Copyright : UNIVERSITE DE LILLE 1 - INRIA Lille Nord de France
--  Villeneuve d'Accsq France
-- 
-- Module Name  : Nexys3v3
-- Project Name : Homade V5
-- Revision :     Make common mclk and mclk25 process
--                                         
-- Target Device :     spartan 6 spartan 3
-- Tool Version : tested on ISE 12.4,
--                                                   
-- Description :  Homade Association unit
-- 
-- 
-- Contributor(s) :
-- Dekeyser Jean-Luc ( Creation  juin 2012) jean-luc.dekeyser@lifl.fr
-- Nouvelle FUNIT , pipeline 2 stage, branchement retardé
-- 
-- 
-- Cecil Licence:
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Nexys3v5 is
    Port ( btn   : in  STD_LOGIC_VECTOR (4 downto 0);
			  an      : out  STD_LOGIC_VECTOR (3 downto 0);
           a_to_g   : out  STD_LOGIC_VECTOR (6 downto 0);
			  sw     : in STD_LOGIC_VECTOR (7 downto 0);
			  led    : out STD_LOGIC_VECTOR (7 downto 0);
           mclk : in  STD_LOGIC;
           rx_in   :in  std_logic
		  );
	attribute clock_signal : string;
	attribute clock_signal of mclk : signal is "yes";

end Nexys3v5;

architecture Behavioral of Nexys3v5 is

component HMaster
Port 	(			clock: in std_logic;
					reset : in std_logic;
					Out32:out std_logic_vector(15 downto 0);
					Out8:out std_logic_vector(7 downto 0);
					In8:in std_logic_vector(7 downto 0);
					InBtn : in std_logic_vector (4 downto 0);
			--   Master ============
              enb      : in STD_LOGIC;
				  data_WR : in STD_LOGIC ;
			--   Slaves ============
              data_S             : in     STD_LOGIC;
              wphase_S           : in     STD_LOGIC			  
			);
end component;

component timer
port
 (-- Clock in ports
  CLK_IN1           : in     std_logic;
  -- Clock out ports
  CLK_OUT1          : out    std_logic;
  CLK_OUT2          : out    std_logic
 );
end component;

COMPONENT afficheur
   PORT( din	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          sevenseg	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0); 
          clk	:	IN	STD_LOGIC; 
          anodes	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          E190	:	IN	STD_LOGIC);
   END COMPONENT;

COMPONENT Enable190 -- generate Enable signal actif for one period any 1/190 seconde for 100Mhz input clock
   PORT( Enable190	:	OUT	STD_LOGIC; 
          clk	:	IN	STD_LOGIC);
   END COMPONENT;

--=================================================================
COMPONENT Wrapper_RAM 
    Port ( 

		  start        :out std_logic;
        rx_in        :in  std_logic;
       rxclk         : in     STD_LOGIC;  
		 Hclk      : in     STD_LOGIC;  
--Master
       wphase_M           : out     STD_LOGIC;
       data_M             : out     STD_LOGIC;
--Slave
       data_S             : out     STD_LOGIC;
       wphase_S           : out     STD_LOGIC
			  );
end COMPONENT;

 
component ckl_gen
port
 (-- Clock in ports
  CLK_IN1           : in     std_logic;
  -- Clock out ports
  CLK_OUT1          : out    std_logic
 );
end component;
--========================================		 
COMPONENT debounce4
	PORT(
		cclk : IN std_logic;
		clr : IN std_logic;
		E : IN std_logic;
		inp : IN std_logic_vector(4 downto 0);          
		outp : OUT std_logic_vector(4 downto 0)
		);
	END COMPONENT;
	
component sample is
    Port ( data : in std_logic_vector(31 downto 0);
           RS : out  STD_LOGIC;
           RW : out  STD_LOGIC;
           E : out  STD_LOGIC;
           dout : out  STD_LOGIC_VECTOR (3 downto 0);
			  clk50 : in std_logic  
			  );
	END COMPONENT;
signal Busdisplay : std_logic_vector (15 downto 0) := x"0000" ;
signal Hclk , clk190 , clk200Mhz, clk100, clk50, E190, ram_clk : std_logic ;
signal btnd : std_logic_vector (4 downto 0) ;
signal swin : std_logic_vector (7 downto 0) ;
signal master_data : std_logic ;--
signal reset_Homade, start ,slave_W, master_W, slave_data: std_logic;--


type state_type is (idle,finish);
    signal next_state: state_type:=idle;
begin

Hclk <= clk50;

--==========================================
UART_Wrapper : Wrapper_RAM  PORT MAP(
	start     => start,
	rx_in     => rx_in,
	rxclk     => clk100, 
	Hclk      => Hclk,
	data_M    => master_data,   
	data_S    => slave_data,  
	wphase_M  => master_W,  
	wphase_S  => slave_W
);
--==========================


my_Master : HMaster PORT MAP(
		clock => Hclk,
		reset => reset_homade,
		Out32 => Busdisplay,
		Out8 => led,
		In8 => sw,
		InBtn => Btnd ,
		enb		=> master_W,
		data_WR	=> master_data,
		---==============

		 data_S  => slave_data,
		 wphase_S => slave_W
	
	);

--	======================================
--=====================================================================================

Inst_debounce4: debounce4 PORT MAP(
		cclk => clk100,
		clr => reset_homade,
		E => E190,
		inp => btn,	
		outp => btnd);

clk_gen : timer
  port map
   (-- Clock in ports
    CLK_IN1            => mclk,
    -- Clock out ports
    CLK_OUT1           => clk100,
    CLK_OUT2           => clk50);

D7seg_display : afficheur PORT MAP(
		din => Busdisplay, 
		sevenseg => a_to_g, 
		clk => clk100, 
		anodes => an, 
		E190 => E190
   );
	
My_E190: Enable190 PORT MAP(
		Enable190 => E190, 
		clk => clk100
   );
--====
--====================================================================================	
	
	
reset_logic: process(Hclk)
begin

if Hclk'event and Hclk='1' then

	case next_state is
---====================
		when idle =>	
			reset_homade <='1';
			if start = '1' then 
				next_state <= finish;  
			else 
				next_state <= idle;
			end if ;	
---====================	
		when finish =>	
			reset_homade <='0';
			if start = '0' then 
				next_state <= idle;
			else 
				next_state <= finish;
			end if ;
		when others =>
			reset_homade <='1';
			next_state <= idle;
	end case;
end if ;
end process;

end Behavioral;

