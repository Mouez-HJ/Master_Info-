--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : netring_master.vhf
-- /___/   /\     Timestamp : 10/21/2014 17:19:36
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath /home/m1/josias/Documents/AEO/TP5/Nexys3v5/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl /home/m1/josias/Documents/AEO/TP5/Nexys3v5/netring_master.vhf -w /home/m1/josias/Documents/AEO/TP5/Nexys3v5/netring_master.sch
--Design Name: netring_master
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

entity netring_master is
   port ( clk      : in    std_logic; 
          E_master : in    std_logic; 
          E_put    : in    std_logic; 
          E_shift  : in    std_logic; 
          I_master : in    std_logic_vector (31 downto 0); 
          I_put    : in    std_logic_vector (31 downto 0); 
          I_X      : in    std_logic_vector (31 downto 0); 
          I_Xmoins : in    std_logic_vector (31 downto 0); 
          I_Y      : in    std_logic_vector (31 downto 0); 
          I_Ymoins : in    std_logic_vector (31 downto 0); 
          P_M      : in    std_logic; 
          X_Y      : in    std_logic; 
          O        : out   std_logic_vector (31 downto 0));
end netring_master;

architecture BEHAVIORAL of netring_master is
   attribute BOX_TYPE   : string ;
   signal sel      : std_logic_vector (1 downto 0);
   signal XLXN_19  : std_logic;
   signal XLXN_28  : std_logic_vector (31 downto 0);
   signal XLXN_47  : std_logic_vector (31 downto 0);
   signal XLXN_48  : std_logic_vector (31 downto 0);
   component QDE
      port ( E   : in    std_logic; 
             clk : in    std_logic; 
             d   : in    std_logic_vector (31 downto 0); 
             q   : out   std_logic_vector (31 downto 0));
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component Mux2
      port ( sel : in    std_logic; 
             X0  : in    std_logic_vector (31 downto 0); 
             X1  : in    std_logic_vector (31 downto 0); 
             Y   : out   std_logic_vector (31 downto 0));
   end component;
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component Mux4
      port ( X0  : in    std_logic_vector (31 downto 0); 
             X1  : in    std_logic_vector (31 downto 0); 
             X2  : in    std_logic_vector (31 downto 0); 
             X3  : in    std_logic_vector (31 downto 0); 
             sel : in    std_logic_vector (1 downto 0); 
             Y   : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   XLXI_5 : QDE
      port map (clk=>clk,
                d(31 downto 0)=>XLXN_48(31 downto 0),
                E=>XLXN_19,
                q(31 downto 0)=>O(31 downto 0));
   
   XLXI_7 : BUF
      port map (I=>X_Y,
                O=>sel(0));
   
   XLXI_8 : Mux2
      port map (sel=>E_put,
                X0(31 downto 0)=>XLXN_28(31 downto 0),
                X1(31 downto 0)=>I_put(31 downto 0),
                Y(31 downto 0)=>XLXN_47(31 downto 0));
   
   XLXI_13 : OR3
      port map (I0=>E_put,
                I1=>E_shift,
                I2=>E_master,
                O=>XLXN_19);
   
   XLXI_14 : Mux2
      port map (sel=>E_master,
                X0(31 downto 0)=>XLXN_47(31 downto 0),
                X1(31 downto 0)=>I_master(31 downto 0),
                Y(31 downto 0)=>XLXN_48(31 downto 0));
   
   XLXI_15 : Mux4
      port map (sel(1 downto 0)=>sel(1 downto 0),
                X0(31 downto 0)=>I_X(31 downto 0),
                X1(31 downto 0)=>I_Y(31 downto 0),
                X2(31 downto 0)=>I_Xmoins(31 downto 0),
                X3(31 downto 0)=>I_Ymoins(31 downto 0),
                Y(31 downto 0)=>XLXN_28(31 downto 0));
   
   XLXI_17 : BUF
      port map (I=>P_M,
                O=>sel(1));
   
end BEHAVIORAL;


