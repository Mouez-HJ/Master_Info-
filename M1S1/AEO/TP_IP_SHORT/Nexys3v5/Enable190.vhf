--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : Enable190.vhf
-- /___/   /\     Timestamp : 10/21/2014 17:19:36
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath /home/m1/josias/Documents/AEO/TP5/Nexys3v5/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl /home/m1/josias/Documents/AEO/TP5/Nexys3v5/Enable190.vhf -w /home/m1/josias/Documents/AEO/TP5/Nexys3v5/Enable190.sch
--Design Name: Enable190
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL CB4CE_HXILINX_Enable190 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB4CE_HXILINX_Enable190 is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    Q2   : out STD_LOGIC;
    Q3   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CB4CE_HXILINX_Enable190;

architecture Behavioral of CB4CE_HXILINX_Enable190 is

  signal COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '1');
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC   <=  '0' when (CLR = '1') else
         '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO  <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';

Q3 <= COUNT(3);
Q2 <= COUNT(2);
Q1 <= COUNT(1);
Q0 <= COUNT(0);

end Behavioral;

----- CELL CB16CE_HXILINX_Enable190 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB16CE_HXILINX_Enable190 is
port (
    CEO : out STD_LOGIC;
    Q   : out STD_LOGIC_VECTOR(15 downto 0);
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC
    );
end CB16CE_HXILINX_Enable190;

architecture Behavioral of CB16CE_HXILINX_Enable190 is

  signal COUNT : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(15 downto 0) := (others => '1');
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC  <=  '0' when (CLR = '1') else
        '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';
Q   <= COUNT;

end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Enable190 is
   port ( clk       : in    std_logic; 
          Enable190 : out   std_logic);
end Enable190;

architecture BEHAVIORAL of Enable190 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal clk190                 : std_logic;
   signal XLXN_14                : std_logic;
   signal XLXN_17                : std_logic;
   signal XLXN_72                : std_logic;
   signal XLXN_74                : std_logic;
   signal XLXN_76                : std_logic;
   signal XLXI_1_CLR_openSignal  : std_logic;
   signal XLXI_29_CLR_openSignal : std_logic;
   component CB16CE_HXILINX_Enable190
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (15 downto 0); 
             TC  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component NOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR2 : component is "BLACK_BOX";
   
   component CB4CE_HXILINX_Enable190
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_5";
   attribute HU_SET of XLXI_29 : label is "XLXI_29_6";
begin
   XLXI_1 : CB16CE_HXILINX_Enable190
      port map (C=>clk,
                CE=>XLXN_17,
                CLR=>XLXI_1_CLR_openSignal,
                CEO=>XLXN_14,
                Q=>open,
                TC=>open);
   
   XLXI_2 : VCC
      port map (P=>XLXN_17);
   
   XLXI_21 : FD
      port map (C=>clk,
                D=>clk190,
                Q=>XLXN_74);
   
   XLXI_22 : FD
      port map (C=>clk,
                D=>XLXN_74,
                Q=>XLXN_76);
   
   XLXI_24 : INV
      port map (I=>XLXN_74,
                O=>XLXN_72);
   
   XLXI_28 : NOR2
      port map (I0=>XLXN_76,
                I1=>XLXN_72,
                O=>Enable190);
   
   XLXI_29 : CB4CE_HXILINX_Enable190
      port map (C=>clk,
                CE=>XLXN_14,
                CLR=>XLXI_29_CLR_openSignal,
                CEO=>open,
                Q0=>open,
                Q1=>open,
                Q2=>clk190,
                Q3=>open,
                TC=>open);
   
end BEHAVIORAL;


