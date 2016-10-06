--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : reset_mem.vhf
-- /___/   /\     Timestamp : 10/21/2014 17:19:36
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath /home/m1/josias/Documents/AEO/TP5/Nexys3v5/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl /home/m1/josias/Documents/AEO/TP5/Nexys3v5/reset_mem.vhf -w /home/m1/josias/Documents/AEO/TP5/Nexys3v5/reset_mem.sch
--Design Name: reset_mem
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity reset_mem is
   port ( clk          : in    std_logic; 
          reset_homade : in    std_logic; 
          reset_mem    : out   std_logic);
end reset_mem;

architecture BEHAVIORAL of reset_mem is
   attribute BOX_TYPE   : string ;
   signal XLXN_13      : std_logic;
   signal XLXN_14      : std_logic;
   signal XLXN_22      : std_logic;
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
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : FD
      port map (C=>clk,
                D=>reset_homade,
                Q=>XLXN_14);
   
   XLXI_2 : FD
      port map (C=>clk,
                D=>XLXN_14,
                Q=>XLXN_22);
   
   XLXI_5 : INV
      port map (I=>XLXN_14,
                O=>XLXN_13);
   
   XLXI_7 : AND2
      port map (I0=>XLXN_22,
                I1=>XLXN_13,
                O=>reset_mem);
   
end BEHAVIORAL;


