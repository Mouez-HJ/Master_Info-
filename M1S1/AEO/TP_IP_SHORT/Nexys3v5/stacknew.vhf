--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : stacknew.vhf
-- /___/   /\     Timestamp : 10/21/2014 17:19:35
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath /home/m1/josias/Documents/AEO/TP5/Nexys3v5/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl /home/m1/josias/Documents/AEO/TP5/Nexys3v5/stacknew.vhf -w /home/m1/josias/Documents/AEO/TP5/Nexys3v5/stacknew.sch
--Design Name: stacknew
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

entity stacknew is
   port ( clk       : in    std_logic; 
          ipdone    : in    std_logic; 
          Lit       : in    std_logic_vector (11 downto 0); 
          Litload   : in    std_logic; 
          Nin       : in    std_logic_vector (31 downto 0); 
          N2in      : in    std_logic_vector (31 downto 0); 
          reset     : in    std_logic; 
          shortIP   : in    std_logic; 
          Tin       : in    std_logic_vector (31 downto 0); 
          X         : in    std_logic_vector (1 downto 0); 
          Y         : in    std_logic_vector (1 downto 0); 
          Nout      : out   std_logic_vector (31 downto 0); 
          N2out     : out   std_logic_vector (31 downto 0); 
          offset    : out   std_logic; 
          oversized : out   std_logic_vector (31 downto 0); 
          Tout      : out   std_logic_vector (31 downto 0));
   attribute clock_signal : string ;
   attribute clock_signal of clk : signal is "yes";
end stacknew;

architecture BEHAVIORAL of stacknew is
   attribute BOX_TYPE   : string ;
   signal adr0       : std_logic_vector (3 downto 0);
   signal adr1       : std_logic_vector (3 downto 0);
   signal adr2       : std_logic_vector (3 downto 0);
   signal adr3       : std_logic_vector (3 downto 0);
   signal count      : std_logic_vector (7 downto 0);
   signal lastcycle  : std_logic;
   signal R0in       : std_logic_vector (31 downto 0);
   signal R1in       : std_logic_vector (31 downto 0);
   signal R2in       : std_logic_vector (31 downto 0);
   signal R3in       : std_logic_vector (31 downto 0);
   signal selin0     : std_logic_vector (1 downto 0);
   signal selin1     : std_logic_vector (1 downto 0);
   signal selin2     : std_logic_vector (1 downto 0);
   signal selin3     : std_logic_vector (1 downto 0);
   signal selreg0    : std_logic_vector (1 downto 0);
   signal selreg1    : std_logic_vector (1 downto 0);
   signal selreg2    : std_logic_vector (1 downto 0);
   signal selreg3    : std_logic_vector (1 downto 0);
   signal selTout    : std_logic_vector (1 downto 0);
   signal we0        : std_logic;
   signal we1        : std_logic;
   signal we2        : std_logic;
   signal we3        : std_logic;
   signal XLXN_17    : std_logic_vector (31 downto 0);
   signal XLXN_26    : std_logic_vector (31 downto 0);
   signal XLXN_34    : std_logic_vector (31 downto 0);
   signal XLXN_39    : std_logic_vector (31 downto 0);
   signal XLXN_41    : std_logic_vector (31 downto 0);
   signal XLXN_46    : std_logic_vector (31 downto 0);
   signal XLXN_48    : std_logic_vector (31 downto 0);
   signal XLXN_53    : std_logic_vector (31 downto 0);
   signal XLXN_82    : std_logic_vector (1 downto 0);
   signal XLXN_83    : std_logic_vector (1 downto 0);
   signal XLXN_223   : std_logic_vector (1 downto 0);
   signal XLXN_225   : std_logic_vector (31 downto 0);
   signal XLXN_226   : std_logic_vector (31 downto 0);
   signal XLXN_227   : std_logic_vector (31 downto 0);
   signal XLXN_259   : std_logic_vector (31 downto 0);
   signal XLXN_269   : std_logic_vector (31 downto 0);
   signal XLXN_332   : std_logic;
   signal XLXN_338   : std_logic;
   signal XLXN_340   : std_logic;
   signal XLXN_342   : std_logic;
   signal Tout_DUMMY : std_logic_vector (31 downto 0);
   component constant32
      port ( value   : in    std_logic_vector (11 downto 0); 
             value32 : out   std_logic_vector (31 downto 0));
   end component;
   
   component Mux4
      port ( X0  : in    std_logic_vector (31 downto 0); 
             X1  : in    std_logic_vector (31 downto 0); 
             X2  : in    std_logic_vector (31 downto 0); 
             X3  : in    std_logic_vector (31 downto 0); 
             sel : in    std_logic_vector (1 downto 0); 
             Y   : out   std_logic_vector (31 downto 0));
   end component;
   
   component Mux2
      port ( sel : in    std_logic; 
             X0  : in    std_logic_vector (31 downto 0); 
             X1  : in    std_logic_vector (31 downto 0); 
             Y   : out   std_logic_vector (31 downto 0));
   end component;
   
   component predicat
      port ( tin      : in    std_logic_vector (31 downto 0); 
             predicat : out   std_logic);
   end component;
   
   component Ram8
      port ( clk     : in    std_logic; 
             we      : in    std_logic; 
             addr    : in    std_logic_vector (3 downto 0); 
             datain  : in    std_logic_vector (31 downto 0); 
             dataout : out   std_logic_vector (31 downto 0));
   end component;
   
   component QDE
      port ( E   : in    std_logic; 
             clk : in    std_logic; 
             d   : in    std_logic_vector (31 downto 0); 
             q   : out   std_logic_vector (31 downto 0));
   end component;
   
   component select_in
      port ( Lastcycle : in    std_logic; 
             litload   : in    std_logic; 
             count     : in    std_logic_vector (7 downto 0); 
             X         : in    std_logic_vector (1 downto 0); 
             Y         : in    std_logic_vector (1 downto 0); 
             we0       : out   std_logic; 
             we1       : out   std_logic; 
             we2       : out   std_logic; 
             we3       : out   std_logic; 
             adr0      : out   std_logic_vector (3 downto 0); 
             adr1      : out   std_logic_vector (3 downto 0); 
             adr2      : out   std_logic_vector (3 downto 0); 
             adr3      : out   std_logic_vector (3 downto 0); 
             selin0    : out   std_logic_vector (1 downto 0); 
             selin1    : out   std_logic_vector (1 downto 0); 
             selin2    : out   std_logic_vector (1 downto 0); 
             selin3    : out   std_logic_vector (1 downto 0); 
             selreg0   : out   std_logic_vector (1 downto 0); 
             selreg1   : out   std_logic_vector (1 downto 0); 
             selreg2   : out   std_logic_vector (1 downto 0); 
             selreg3   : out   std_logic_vector (1 downto 0));
   end component;
   
   component select_out
      port ( count    : in    std_logic_vector (1 downto 0); 
             selTout  : out   std_logic_vector (1 downto 0); 
             selNout  : out   std_logic_vector (1 downto 0); 
             selN2out : out   std_logic_vector (1 downto 0); 
             seloverS : out   std_logic_vector (1 downto 0));
   end component;
   
   component next_count
      port ( lastcycle : in    std_logic; 
             clk       : in    std_logic; 
             count_in  : in    std_logic_vector (7 downto 0); 
             X         : in    std_logic_vector (1 downto 0); 
             Y         : in    std_logic_vector (1 downto 0); 
             count_out : out   std_logic_vector (7 downto 0); 
             reset     : in    std_logic);
   end component;
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   Tout(31 downto 0) <= Tout_DUMMY(31 downto 0);
   constlit : constant32
      port map (value(11 downto 0)=>Lit(11 downto 0),
                value32(31 downto 0)=>XLXN_269(31 downto 0));
   
   muxi0 : Mux4
      port map (sel(1 downto 0)=>selin0(1 downto 0),
                X0(31 downto 0)=>Tin(31 downto 0),
                X1(31 downto 0)=>Nin(31 downto 0),
                X2(31 downto 0)=>N2in(31 downto 0),
                X3(31 downto 0)=>XLXN_269(31 downto 0),
                Y(31 downto 0)=>XLXN_26(31 downto 0));
   
   muxi1 : Mux4
      port map (sel(1 downto 0)=>selin1(1 downto 0),
                X0(31 downto 0)=>Tin(31 downto 0),
                X1(31 downto 0)=>Nin(31 downto 0),
                X2(31 downto 0)=>N2in(31 downto 0),
                X3(31 downto 0)=>XLXN_269(31 downto 0),
                Y(31 downto 0)=>XLXN_39(31 downto 0));
   
   muxi2 : Mux4
      port map (sel(1 downto 0)=>selin2(1 downto 0),
                X0(31 downto 0)=>Tin(31 downto 0),
                X1(31 downto 0)=>Nin(31 downto 0),
                X2(31 downto 0)=>N2in(31 downto 0),
                X3(31 downto 0)=>XLXN_269(31 downto 0),
                Y(31 downto 0)=>XLXN_46(31 downto 0));
   
   muxi3 : Mux4
      port map (sel(1 downto 0)=>selin3(1 downto 0),
                X0(31 downto 0)=>Tin(31 downto 0),
                X1(31 downto 0)=>Nin(31 downto 0),
                X2(31 downto 0)=>N2in(31 downto 0),
                X3(31 downto 0)=>XLXN_269(31 downto 0),
                Y(31 downto 0)=>XLXN_53(31 downto 0));
   
   muxoutN : Mux4
      port map (sel(1 downto 0)=>XLXN_82(1 downto 0),
                X0(31 downto 0)=>XLXN_259(31 downto 0),
                X1(31 downto 0)=>XLXN_225(31 downto 0),
                X2(31 downto 0)=>XLXN_226(31 downto 0),
                X3(31 downto 0)=>XLXN_227(31 downto 0),
                Y(31 downto 0)=>Nout(31 downto 0));
   
   muxoutN2 : Mux4
      port map (sel(1 downto 0)=>XLXN_83(1 downto 0),
                X0(31 downto 0)=>XLXN_259(31 downto 0),
                X1(31 downto 0)=>XLXN_225(31 downto 0),
                X2(31 downto 0)=>XLXN_226(31 downto 0),
                X3(31 downto 0)=>XLXN_227(31 downto 0),
                Y(31 downto 0)=>N2out(31 downto 0));
   
   muxoutT : Mux4
      port map (sel(1 downto 0)=>selTout(1 downto 0),
                X0(31 downto 0)=>XLXN_259(31 downto 0),
                X1(31 downto 0)=>XLXN_225(31 downto 0),
                X2(31 downto 0)=>XLXN_226(31 downto 0),
                X3(31 downto 0)=>XLXN_227(31 downto 0),
                Y(31 downto 0)=>Tout_DUMMY(31 downto 0));
   
   muxR0 : Mux2
      port map (sel=>selreg0(1),
                X0(31 downto 0)=>XLXN_26(31 downto 0),
                X1(31 downto 0)=>XLXN_17(31 downto 0),
                Y(31 downto 0)=>R0in(31 downto 0));
   
   muxR1 : Mux2
      port map (sel=>selreg1(1),
                X0(31 downto 0)=>XLXN_39(31 downto 0),
                X1(31 downto 0)=>XLXN_34(31 downto 0),
                Y(31 downto 0)=>R1in(31 downto 0));
   
   muxR2 : Mux2
      port map (sel=>selreg2(1),
                X0(31 downto 0)=>XLXN_46(31 downto 0),
                X1(31 downto 0)=>XLXN_41(31 downto 0),
                Y(31 downto 0)=>R2in(31 downto 0));
   
   muxR3 : Mux2
      port map (sel=>selreg3(1),
                X0(31 downto 0)=>XLXN_53(31 downto 0),
                X1(31 downto 0)=>XLXN_48(31 downto 0),
                Y(31 downto 0)=>R3in(31 downto 0));
   
   pred : predicat
      port map (tin(31 downto 0)=>Tout_DUMMY(31 downto 0),
                predicat=>offset);
   
   ram0 : Ram8
      port map (addr(3 downto 0)=>adr0(3 downto 0),
                clk=>clk,
                datain(31 downto 0)=>XLXN_26(31 downto 0),
                we=>we0,
                dataout(31 downto 0)=>XLXN_17(31 downto 0));
   
   ram1 : Ram8
      port map (addr(3 downto 0)=>adr1(3 downto 0),
                clk=>clk,
                datain(31 downto 0)=>XLXN_39(31 downto 0),
                we=>we1,
                dataout(31 downto 0)=>XLXN_34(31 downto 0));
   
   ram2 : Ram8
      port map (addr(3 downto 0)=>adr2(3 downto 0),
                clk=>clk,
                datain(31 downto 0)=>XLXN_46(31 downto 0),
                we=>we2,
                dataout(31 downto 0)=>XLXN_41(31 downto 0));
   
   ram3 : Ram8
      port map (addr(3 downto 0)=>adr3(3 downto 0),
                clk=>clk,
                datain(31 downto 0)=>XLXN_53(31 downto 0),
                we=>we3,
                dataout(31 downto 0)=>XLXN_48(31 downto 0));
   
   R0 : QDE
      port map (clk=>clk,
                d(31 downto 0)=>R0in(31 downto 0),
                E=>XLXN_332,
                q(31 downto 0)=>XLXN_259(31 downto 0));
   
   R1 : QDE
      port map (clk=>clk,
                d(31 downto 0)=>R1in(31 downto 0),
                E=>XLXN_338,
                q(31 downto 0)=>XLXN_225(31 downto 0));
   
   R2 : QDE
      port map (clk=>clk,
                d(31 downto 0)=>R2in(31 downto 0),
                E=>XLXN_340,
                q(31 downto 0)=>XLXN_226(31 downto 0));
   
   R3 : QDE
      port map (clk=>clk,
                d(31 downto 0)=>R3in(31 downto 0),
                E=>XLXN_342,
                q(31 downto 0)=>XLXN_227(31 downto 0));
   
   sel_in : select_in
      port map (count(7 downto 0)=>count(7 downto 0),
                Lastcycle=>lastcycle,
                litload=>Litload,
                X(1 downto 0)=>X(1 downto 0),
                Y(1 downto 0)=>Y(1 downto 0),
                adr0(3 downto 0)=>adr0(3 downto 0),
                adr1(3 downto 0)=>adr1(3 downto 0),
                adr2(3 downto 0)=>adr2(3 downto 0),
                adr3(3 downto 0)=>adr3(3 downto 0),
                selin0(1 downto 0)=>selin0(1 downto 0),
                selin1(1 downto 0)=>selin1(1 downto 0),
                selin2(1 downto 0)=>selin2(1 downto 0),
                selin3(1 downto 0)=>selin3(1 downto 0),
                selreg0(1 downto 0)=>selreg0(1 downto 0),
                selreg1(1 downto 0)=>selreg1(1 downto 0),
                selreg2(1 downto 0)=>selreg2(1 downto 0),
                selreg3(1 downto 0)=>selreg3(1 downto 0),
                we0=>we0,
                we1=>we1,
                we2=>we2,
                we3=>we3);
   
   sel_out : select_out
      port map (count(1 downto 0)=>count(1 downto 0),
                selNout(1 downto 0)=>XLXN_82(1 downto 0),
                selN2out(1 downto 0)=>XLXN_83(1 downto 0),
                seloverS(1 downto 0)=>XLXN_223(1 downto 0),
                selTout(1 downto 0)=>selTout(1 downto 0));
   
   update_counter : next_count
      port map (clk=>clk,
                count_in(7 downto 0)=>count(7 downto 0),
                lastcycle=>lastcycle,
                reset=>reset,
                X(1 downto 0)=>X(1 downto 0),
                Y(1 downto 0)=>Y(1 downto 0),
                count_out(7 downto 0)=>count(7 downto 0));
   
   XLXI_91 : OR3
      port map (I0=>ipdone,
                I1=>shortIP,
                I2=>Litload,
                O=>lastcycle);
   
   XLXI_94 : Mux4
      port map (sel(1 downto 0)=>XLXN_223(1 downto 0),
                X0(31 downto 0)=>XLXN_259(31 downto 0),
                X1(31 downto 0)=>XLXN_225(31 downto 0),
                X2(31 downto 0)=>XLXN_226(31 downto 0),
                X3(31 downto 0)=>XLXN_227(31 downto 0),
                Y(31 downto 0)=>oversized(31 downto 0));
   
   XLXI_146 : OR2
      port map (I0=>selreg0(1),
                I1=>selreg0(0),
                O=>XLXN_332);
   
   XLXI_147 : OR2
      port map (I0=>selreg1(1),
                I1=>selreg1(0),
                O=>XLXN_338);
   
   XLXI_148 : OR2
      port map (I0=>selreg2(1),
                I1=>selreg2(0),
                O=>XLXN_340);
   
   XLXI_149 : OR2
      port map (I0=>selreg3(1),
                I1=>selreg3(0),
                O=>XLXN_342);
   
end BEHAVIORAL;


