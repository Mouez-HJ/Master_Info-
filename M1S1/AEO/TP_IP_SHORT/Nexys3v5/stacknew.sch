<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Nin(31:0)" />
        <signal name="N2in(31:0)" />
        <signal name="XLXN_17(31:0)" />
        <signal name="clk">
            <attr value="yes" name="clock_signal">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="reset" />
        <signal name="XLXN_26(31:0)" />
        <signal name="XLXN_34(31:0)" />
        <signal name="XLXN_39(31:0)" />
        <signal name="XLXN_41(31:0)" />
        <signal name="XLXN_46(31:0)" />
        <signal name="XLXN_48(31:0)" />
        <signal name="XLXN_53(31:0)" />
        <signal name="selTout(1:0)" />
        <signal name="Tout(31:0)" />
        <signal name="Nout(31:0)" />
        <signal name="N2out(31:0)" />
        <signal name="XLXN_82(1:0)" />
        <signal name="XLXN_83(1:0)" />
        <signal name="count(7:0)" />
        <signal name="count(1:0)" />
        <signal name="we0" />
        <signal name="we1" />
        <signal name="we2" />
        <signal name="we3" />
        <signal name="adr0(3:0)" />
        <signal name="adr1(3:0)" />
        <signal name="adr2(3:0)" />
        <signal name="adr3(3:0)" />
        <signal name="selin0(1:0)" />
        <signal name="selin1(1:0)" />
        <signal name="selin2(1:0)" />
        <signal name="selin3(1:0)" />
        <signal name="selreg0(1:0)" />
        <signal name="selreg1(1:0)" />
        <signal name="selreg2(1:0)" />
        <signal name="selreg3(1:0)" />
        <signal name="Litload" />
        <signal name="Tin(31:0)" />
        <signal name="Lit(11:0)" />
        <signal name="ipdone" />
        <signal name="shortIP" />
        <signal name="lastcycle" />
        <signal name="X(1:0)" />
        <signal name="Y(1:0)" />
        <signal name="oversized(31:0)" />
        <signal name="XLXN_223(1:0)" />
        <signal name="XLXN_225(31:0)" />
        <signal name="XLXN_226(31:0)" />
        <signal name="XLXN_227(31:0)" />
        <signal name="XLXN_259(31:0)" />
        <signal name="XLXN_269(31:0)" />
        <signal name="R0in(31:0)" />
        <signal name="R1in(31:0)" />
        <signal name="R2in(31:0)" />
        <signal name="R3in(31:0)" />
        <signal name="offset" />
        <signal name="selreg0(1)" />
        <signal name="selreg1(1)" />
        <signal name="selreg2(1)" />
        <signal name="selreg3(1)" />
        <signal name="XLXN_332" />
        <signal name="selreg0(0)" />
        <signal name="XLXN_338" />
        <signal name="selreg1(0)" />
        <signal name="XLXN_340" />
        <signal name="selreg2(0)" />
        <signal name="XLXN_342" />
        <signal name="selreg3(0)" />
        <port polarity="Input" name="Nin(31:0)" />
        <port polarity="Input" name="N2in(31:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="Tout(31:0)" />
        <port polarity="Output" name="Nout(31:0)" />
        <port polarity="Output" name="N2out(31:0)" />
        <port polarity="Input" name="Litload" />
        <port polarity="Input" name="Tin(31:0)" />
        <port polarity="Input" name="Lit(11:0)" />
        <port polarity="Input" name="ipdone" />
        <port polarity="Input" name="shortIP" />
        <port polarity="Input" name="X(1:0)" />
        <port polarity="Input" name="Y(1:0)" />
        <port polarity="Output" name="oversized(31:0)" />
        <port polarity="Output" name="offset" />
        <blockdef name="Ram8">
            <timestamp>2013-9-29T16:6:26</timestamp>
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect style="fillcolor:rgb(0,255,255)" width="256" x="64" y="-320" height="384" />
        </blockdef>
        <blockdef name="Mux4">
            <timestamp>2013-9-26T9:27:57</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="next_count">
            <timestamp>2014-3-28T21:52:33</timestamp>
            <line x2="0" y1="288" y2="288" x1="64" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-428" height="24" />
            <line x2="464" y1="-416" y2="-416" x1="400" />
            <rect width="336" x="64" y="-448" height="768" />
        </blockdef>
        <blockdef name="select_out">
            <timestamp>2013-10-2T16:52:9</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="select_in">
            <timestamp>2013-11-21T7:35:29</timestamp>
            <line x2="0" y1="288" y2="288" x1="64" />
            <rect width="64" x="0" y="340" height="24" />
            <line x2="0" y1="352" y2="352" x1="64" />
            <rect width="64" x="0" y="404" height="24" />
            <line x2="0" y1="416" y2="416" x1="64" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="320" y="148" height="24" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <rect width="64" x="320" y="212" height="24" />
            <line x2="384" y1="224" y2="224" x1="320" />
            <rect width="64" x="0" y="-76" height="24" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <line x2="384" y1="-736" y2="-736" x1="320" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <rect width="64" x="320" y="-492" height="24" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <rect width="64" x="320" y="-428" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-768" height="1228" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
        </blockdef>
        <blockdef name="constant32">
            <timestamp>2013-9-29T16:48:26</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <blockdef name="predicat">
            <timestamp>2013-10-3T10:41:33</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="QDE">
            <timestamp>2014-3-10T16:26:59</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="Mux2">
            <timestamp>2014-3-10T16:41:13</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="Ram8" name="ram0">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="we0" name="we" />
            <blockpin signalname="adr0(3:0)" name="addr(3:0)" />
            <blockpin signalname="XLXN_26(31:0)" name="datain(31:0)" />
            <blockpin signalname="XLXN_17(31:0)" name="dataout(31:0)" />
        </block>
        <block symbolname="Ram8" name="ram1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="we1" name="we" />
            <blockpin signalname="adr1(3:0)" name="addr(3:0)" />
            <blockpin signalname="XLXN_39(31:0)" name="datain(31:0)" />
            <blockpin signalname="XLXN_34(31:0)" name="dataout(31:0)" />
        </block>
        <block symbolname="Ram8" name="ram3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="we3" name="we" />
            <blockpin signalname="adr3(3:0)" name="addr(3:0)" />
            <blockpin signalname="XLXN_53(31:0)" name="datain(31:0)" />
            <blockpin signalname="XLXN_48(31:0)" name="dataout(31:0)" />
        </block>
        <block symbolname="Mux4" name="muxoutT">
            <blockpin signalname="XLXN_259(31:0)" name="X0(31:0)" />
            <blockpin signalname="XLXN_225(31:0)" name="X1(31:0)" />
            <blockpin signalname="XLXN_226(31:0)" name="X2(31:0)" />
            <blockpin signalname="XLXN_227(31:0)" name="X3(31:0)" />
            <blockpin signalname="selTout(1:0)" name="sel(1:0)" />
            <blockpin signalname="Tout(31:0)" name="Y(31:0)" />
        </block>
        <block symbolname="Mux4" name="muxoutN">
            <blockpin signalname="XLXN_259(31:0)" name="X0(31:0)" />
            <blockpin signalname="XLXN_225(31:0)" name="X1(31:0)" />
            <blockpin signalname="XLXN_226(31:0)" name="X2(31:0)" />
            <blockpin signalname="XLXN_227(31:0)" name="X3(31:0)" />
            <blockpin signalname="XLXN_82(1:0)" name="sel(1:0)" />
            <blockpin signalname="Nout(31:0)" name="Y(31:0)" />
        </block>
        <block symbolname="Mux4" name="muxoutN2">
            <blockpin signalname="XLXN_259(31:0)" name="X0(31:0)" />
            <blockpin signalname="XLXN_225(31:0)" name="X1(31:0)" />
            <blockpin signalname="XLXN_226(31:0)" name="X2(31:0)" />
            <blockpin signalname="XLXN_227(31:0)" name="X3(31:0)" />
            <blockpin signalname="XLXN_83(1:0)" name="sel(1:0)" />
            <blockpin signalname="N2out(31:0)" name="Y(31:0)" />
        </block>
        <block symbolname="select_in" name="sel_in">
            <blockpin signalname="lastcycle" name="Lastcycle" />
            <blockpin signalname="Litload" name="litload" />
            <blockpin signalname="count(7:0)" name="count(7:0)" />
            <blockpin signalname="X(1:0)" name="X(1:0)" />
            <blockpin signalname="Y(1:0)" name="Y(1:0)" />
            <blockpin signalname="we0" name="we0" />
            <blockpin signalname="we1" name="we1" />
            <blockpin signalname="we2" name="we2" />
            <blockpin signalname="we3" name="we3" />
            <blockpin signalname="adr0(3:0)" name="adr0(3:0)" />
            <blockpin signalname="adr1(3:0)" name="adr1(3:0)" />
            <blockpin signalname="adr2(3:0)" name="adr2(3:0)" />
            <blockpin signalname="adr3(3:0)" name="adr3(3:0)" />
            <blockpin signalname="selin0(1:0)" name="selin0(1:0)" />
            <blockpin signalname="selin1(1:0)" name="selin1(1:0)" />
            <blockpin signalname="selin2(1:0)" name="selin2(1:0)" />
            <blockpin signalname="selin3(1:0)" name="selin3(1:0)" />
            <blockpin signalname="selreg0(1:0)" name="selreg0(1:0)" />
            <blockpin signalname="selreg1(1:0)" name="selreg1(1:0)" />
            <blockpin signalname="selreg2(1:0)" name="selreg2(1:0)" />
            <blockpin signalname="selreg3(1:0)" name="selreg3(1:0)" />
        </block>
        <block symbolname="next_count" name="update_counter">
            <blockpin signalname="lastcycle" name="lastcycle" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="count(7:0)" name="count_in(7:0)" />
            <blockpin signalname="X(1:0)" name="X(1:0)" />
            <blockpin signalname="Y(1:0)" name="Y(1:0)" />
            <blockpin signalname="count(7:0)" name="count_out(7:0)" />
            <blockpin signalname="reset" name="reset" />
        </block>
        <block symbolname="select_out" name="sel_out">
            <blockpin signalname="count(1:0)" name="count(1:0)" />
            <blockpin signalname="selTout(1:0)" name="selTout(1:0)" />
            <blockpin signalname="XLXN_82(1:0)" name="selNout(1:0)" />
            <blockpin signalname="XLXN_83(1:0)" name="selN2out(1:0)" />
            <blockpin signalname="XLXN_223(1:0)" name="seloverS(1:0)" />
        </block>
        <block symbolname="constant32" name="constlit">
            <blockpin signalname="Lit(11:0)" name="value(11:0)" />
            <blockpin signalname="XLXN_269(31:0)" name="value32(31:0)" />
        </block>
        <block symbolname="or3" name="XLXI_91">
            <blockpin signalname="ipdone" name="I0" />
            <blockpin signalname="shortIP" name="I1" />
            <blockpin signalname="Litload" name="I2" />
            <blockpin signalname="lastcycle" name="O" />
        </block>
        <block symbolname="Mux4" name="XLXI_94">
            <blockpin signalname="XLXN_259(31:0)" name="X0(31:0)" />
            <blockpin signalname="XLXN_225(31:0)" name="X1(31:0)" />
            <blockpin signalname="XLXN_226(31:0)" name="X2(31:0)" />
            <blockpin signalname="XLXN_227(31:0)" name="X3(31:0)" />
            <blockpin signalname="XLXN_223(1:0)" name="sel(1:0)" />
            <blockpin signalname="oversized(31:0)" name="Y(31:0)" />
        </block>
        <block symbolname="Mux4" name="muxi0">
            <blockpin signalname="Tin(31:0)" name="X0(31:0)" />
            <blockpin signalname="Nin(31:0)" name="X1(31:0)" />
            <blockpin signalname="N2in(31:0)" name="X2(31:0)" />
            <blockpin signalname="XLXN_269(31:0)" name="X3(31:0)" />
            <blockpin signalname="selin0(1:0)" name="sel(1:0)" />
            <blockpin signalname="XLXN_26(31:0)" name="Y(31:0)" />
        </block>
        <block symbolname="Mux4" name="muxi1">
            <blockpin signalname="Tin(31:0)" name="X0(31:0)" />
            <blockpin signalname="Nin(31:0)" name="X1(31:0)" />
            <blockpin signalname="N2in(31:0)" name="X2(31:0)" />
            <blockpin signalname="XLXN_269(31:0)" name="X3(31:0)" />
            <blockpin signalname="selin1(1:0)" name="sel(1:0)" />
            <blockpin signalname="XLXN_39(31:0)" name="Y(31:0)" />
        </block>
        <block symbolname="Mux4" name="muxi3">
            <blockpin signalname="Tin(31:0)" name="X0(31:0)" />
            <blockpin signalname="Nin(31:0)" name="X1(31:0)" />
            <blockpin signalname="N2in(31:0)" name="X2(31:0)" />
            <blockpin signalname="XLXN_269(31:0)" name="X3(31:0)" />
            <blockpin signalname="selin3(1:0)" name="sel(1:0)" />
            <blockpin signalname="XLXN_53(31:0)" name="Y(31:0)" />
        </block>
        <block symbolname="predicat" name="pred">
            <blockpin signalname="Tout(31:0)" name="tin(31:0)" />
            <blockpin signalname="offset" name="predicat" />
        </block>
        <block symbolname="QDE" name="R0">
            <blockpin signalname="XLXN_332" name="E" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="R0in(31:0)" name="d(31:0)" />
            <blockpin signalname="XLXN_259(31:0)" name="q(31:0)" />
        </block>
        <block symbolname="QDE" name="R1">
            <blockpin signalname="XLXN_338" name="E" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="R1in(31:0)" name="d(31:0)" />
            <blockpin signalname="XLXN_225(31:0)" name="q(31:0)" />
        </block>
        <block symbolname="QDE" name="R3">
            <blockpin signalname="XLXN_342" name="E" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="R3in(31:0)" name="d(31:0)" />
            <blockpin signalname="XLXN_227(31:0)" name="q(31:0)" />
        </block>
        <block symbolname="Mux4" name="muxi2">
            <blockpin signalname="Tin(31:0)" name="X0(31:0)" />
            <blockpin signalname="Nin(31:0)" name="X1(31:0)" />
            <blockpin signalname="N2in(31:0)" name="X2(31:0)" />
            <blockpin signalname="XLXN_269(31:0)" name="X3(31:0)" />
            <blockpin signalname="selin2(1:0)" name="sel(1:0)" />
            <blockpin signalname="XLXN_46(31:0)" name="Y(31:0)" />
        </block>
        <block symbolname="Ram8" name="ram2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="we2" name="we" />
            <blockpin signalname="adr2(3:0)" name="addr(3:0)" />
            <blockpin signalname="XLXN_46(31:0)" name="datain(31:0)" />
            <blockpin signalname="XLXN_41(31:0)" name="dataout(31:0)" />
        </block>
        <block symbolname="QDE" name="R2">
            <blockpin signalname="XLXN_340" name="E" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="R2in(31:0)" name="d(31:0)" />
            <blockpin signalname="XLXN_226(31:0)" name="q(31:0)" />
        </block>
        <block symbolname="Mux2" name="muxR0">
            <blockpin signalname="selreg0(1)" name="sel" />
            <blockpin signalname="XLXN_26(31:0)" name="X0(31:0)" />
            <blockpin signalname="XLXN_17(31:0)" name="X1(31:0)" />
            <blockpin signalname="R0in(31:0)" name="Y(31:0)" />
        </block>
        <block symbolname="Mux2" name="muxR1">
            <blockpin signalname="selreg1(1)" name="sel" />
            <blockpin signalname="XLXN_39(31:0)" name="X0(31:0)" />
            <blockpin signalname="XLXN_34(31:0)" name="X1(31:0)" />
            <blockpin signalname="R1in(31:0)" name="Y(31:0)" />
        </block>
        <block symbolname="Mux2" name="muxR2">
            <blockpin signalname="selreg2(1)" name="sel" />
            <blockpin signalname="XLXN_46(31:0)" name="X0(31:0)" />
            <blockpin signalname="XLXN_41(31:0)" name="X1(31:0)" />
            <blockpin signalname="R2in(31:0)" name="Y(31:0)" />
        </block>
        <block symbolname="Mux2" name="muxR3">
            <blockpin signalname="selreg3(1)" name="sel" />
            <blockpin signalname="XLXN_53(31:0)" name="X0(31:0)" />
            <blockpin signalname="XLXN_48(31:0)" name="X1(31:0)" />
            <blockpin signalname="R3in(31:0)" name="Y(31:0)" />
        </block>
        <block symbolname="or2" name="XLXI_146">
            <blockpin signalname="selreg0(1)" name="I0" />
            <blockpin signalname="selreg0(0)" name="I1" />
            <blockpin signalname="XLXN_332" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_147">
            <blockpin signalname="selreg1(1)" name="I0" />
            <blockpin signalname="selreg1(0)" name="I1" />
            <blockpin signalname="XLXN_338" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_148">
            <blockpin signalname="selreg2(1)" name="I0" />
            <blockpin signalname="selreg2(0)" name="I1" />
            <blockpin signalname="XLXN_340" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_149">
            <blockpin signalname="selreg3(1)" name="I0" />
            <blockpin signalname="selreg3(0)" name="I1" />
            <blockpin signalname="XLXN_342" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5382" height="7609">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="1664" y="1152" name="ram0" orien="R0">
        </instance>
        <branch name="Nin(31:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="576" y="736" type="branch" />
            <wire x2="576" y1="176" y2="624" x1="576" />
            <wire x2="576" y1="624" y2="736" x1="576" />
            <wire x2="576" y1="736" y2="1440" x1="576" />
            <wire x2="960" y1="1440" y2="1440" x1="576" />
            <wire x2="576" y1="1440" y2="2256" x1="576" />
            <wire x2="576" y1="2256" y2="3168" x1="576" />
            <wire x2="576" y1="3168" y2="3376" x1="576" />
            <wire x2="960" y1="3168" y2="3168" x1="576" />
            <wire x2="960" y1="2256" y2="2256" x1="576" />
            <wire x2="960" y1="624" y2="624" x1="576" />
        </branch>
        <branch name="N2in(31:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="736" y="976" type="branch" />
            <wire x2="736" y1="176" y2="688" x1="736" />
            <wire x2="736" y1="688" y2="976" x1="736" />
            <wire x2="736" y1="976" y2="1504" x1="736" />
            <wire x2="960" y1="1504" y2="1504" x1="736" />
            <wire x2="736" y1="1504" y2="2320" x1="736" />
            <wire x2="736" y1="2320" y2="3232" x1="736" />
            <wire x2="736" y1="3232" y2="3360" x1="736" />
            <wire x2="960" y1="3232" y2="3232" x1="736" />
            <wire x2="960" y1="2320" y2="2320" x1="736" />
            <wire x2="960" y1="688" y2="688" x1="736" />
        </branch>
        <branch name="R0in(31:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2080" y="560" type="branch" />
            <wire x2="2080" y1="560" y2="560" x1="2048" />
            <wire x2="2144" y1="560" y2="560" x1="2080" />
        </branch>
        <branch name="XLXN_17(31:0)">
            <wire x2="1536" y1="688" y2="800" x1="1536" />
            <wire x2="2112" y1="800" y2="800" x1="1536" />
            <wire x2="2112" y1="800" y2="864" x1="2112" />
            <wire x2="1664" y1="688" y2="688" x1="1536" />
            <wire x2="2112" y1="864" y2="864" x1="2048" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1616" y="864" type="branch" />
            <wire x2="1616" y1="864" y2="864" x1="1600" />
            <wire x2="1664" y1="864" y2="864" x1="1616" />
        </branch>
        <branch name="XLXN_26(31:0)">
            <wire x2="1472" y1="560" y2="560" x1="1344" />
            <wire x2="1472" y1="560" y2="624" x1="1472" />
            <wire x2="1664" y1="624" y2="624" x1="1472" />
            <wire x2="1472" y1="624" y2="1120" x1="1472" />
            <wire x2="1664" y1="1120" y2="1120" x1="1472" />
        </branch>
        <instance x="1664" y="1968" name="ram1" orien="R0">
        </instance>
        <branch name="R1in(31:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2128" y="1376" type="branch" />
            <wire x2="2128" y1="1376" y2="1376" x1="2048" />
            <wire x2="2176" y1="1376" y2="1376" x1="2128" />
        </branch>
        <branch name="XLXN_34(31:0)">
            <wire x2="1536" y1="1504" y2="1616" x1="1536" />
            <wire x2="2112" y1="1616" y2="1616" x1="1536" />
            <wire x2="2112" y1="1616" y2="1680" x1="2112" />
            <wire x2="1664" y1="1504" y2="1504" x1="1536" />
            <wire x2="2112" y1="1680" y2="1680" x1="2048" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1616" y="1680" type="branch" />
            <wire x2="1616" y1="1680" y2="1680" x1="1600" />
            <wire x2="1664" y1="1680" y2="1680" x1="1616" />
        </branch>
        <branch name="XLXN_39(31:0)">
            <wire x2="1472" y1="1376" y2="1376" x1="1344" />
            <wire x2="1472" y1="1376" y2="1440" x1="1472" />
            <wire x2="1664" y1="1440" y2="1440" x1="1472" />
            <wire x2="1472" y1="1440" y2="1936" x1="1472" />
            <wire x2="1664" y1="1936" y2="1936" x1="1472" />
        </branch>
        <branch name="R2in(31:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2128" y="2192" type="branch" />
            <wire x2="2128" y1="2192" y2="2192" x1="2048" />
            <wire x2="2208" y1="2192" y2="2192" x1="2128" />
        </branch>
        <branch name="XLXN_41(31:0)">
            <wire x2="1536" y1="2320" y2="2448" x1="1536" />
            <wire x2="2112" y1="2448" y2="2448" x1="1536" />
            <wire x2="2112" y1="2448" y2="2496" x1="2112" />
            <wire x2="1664" y1="2320" y2="2320" x1="1536" />
            <wire x2="2112" y1="2496" y2="2496" x1="2048" />
        </branch>
        <branch name="XLXN_46(31:0)">
            <wire x2="1472" y1="2192" y2="2192" x1="1344" />
            <wire x2="1472" y1="2192" y2="2256" x1="1472" />
            <wire x2="1664" y1="2256" y2="2256" x1="1472" />
            <wire x2="1472" y1="2256" y2="2752" x1="1472" />
            <wire x2="1664" y1="2752" y2="2752" x1="1472" />
        </branch>
        <instance x="1664" y="3696" name="ram3" orien="R0">
        </instance>
        <branch name="R3in(31:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2128" y="3104" type="branch" />
            <wire x2="2128" y1="3104" y2="3104" x1="2048" />
            <wire x2="2192" y1="3104" y2="3104" x1="2128" />
        </branch>
        <branch name="XLXN_48(31:0)">
            <wire x2="1536" y1="3232" y2="3344" x1="1536" />
            <wire x2="2112" y1="3344" y2="3344" x1="1536" />
            <wire x2="2112" y1="3344" y2="3408" x1="2112" />
            <wire x2="1664" y1="3232" y2="3232" x1="1536" />
            <wire x2="2112" y1="3408" y2="3408" x1="2048" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1616" y="3408" type="branch" />
            <wire x2="1616" y1="3408" y2="3408" x1="1600" />
            <wire x2="1664" y1="3408" y2="3408" x1="1616" />
        </branch>
        <branch name="XLXN_53(31:0)">
            <wire x2="1472" y1="3104" y2="3104" x1="1344" />
            <wire x2="1472" y1="3104" y2="3168" x1="1472" />
            <wire x2="1664" y1="3168" y2="3168" x1="1472" />
            <wire x2="1472" y1="3168" y2="3664" x1="1472" />
            <wire x2="1664" y1="3664" y2="3664" x1="1472" />
        </branch>
        <branch name="selTout(1:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2544" y="3824" type="branch" />
            <wire x2="2544" y1="3824" y2="3824" x1="2464" />
            <wire x2="3136" y1="3824" y2="3824" x1="2544" />
            <wire x2="3776" y1="800" y2="800" x1="3136" />
            <wire x2="3136" y1="800" y2="3824" x1="3136" />
        </branch>
        <branch name="Tout(31:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="4224" y="544" type="branch" />
            <wire x2="3952" y1="960" y2="1056" x1="3952" />
            <wire x2="4016" y1="1056" y2="1056" x1="3952" />
            <wire x2="4208" y1="960" y2="960" x1="3952" />
            <wire x2="4208" y1="544" y2="544" x1="4160" />
            <wire x2="4224" y1="544" y2="544" x1="4208" />
            <wire x2="4288" y1="544" y2="544" x1="4224" />
            <wire x2="4208" y1="544" y2="960" x1="4208" />
        </branch>
        <instance x="3792" y="1824" name="muxoutN" orien="R0">
        </instance>
        <branch name="Nout(31:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="4240" y="1536" type="branch" />
            <wire x2="4240" y1="1536" y2="1536" x1="4176" />
            <wire x2="4304" y1="1536" y2="1536" x1="4240" />
        </branch>
        <instance x="3792" y="2752" name="muxoutN2" orien="R0">
        </instance>
        <branch name="N2out(31:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="4240" y="2464" type="branch" />
            <wire x2="4240" y1="2464" y2="2464" x1="4176" />
            <wire x2="4304" y1="2464" y2="2464" x1="4240" />
        </branch>
        <branch name="XLXN_82(1:0)">
            <wire x2="3184" y1="3888" y2="3888" x1="2464" />
            <wire x2="3792" y1="1792" y2="1792" x1="3184" />
            <wire x2="3184" y1="1792" y2="3888" x1="3184" />
        </branch>
        <branch name="XLXN_83(1:0)">
            <wire x2="3776" y1="3952" y2="3952" x1="2464" />
            <wire x2="3792" y1="2720" y2="2720" x1="3776" />
            <wire x2="3776" y1="2720" y2="3952" x1="3776" />
        </branch>
        <iomarker fontsize="28" x="4304" y="1536" name="Nout(31:0)" orien="R0" />
        <iomarker fontsize="28" x="4304" y="2464" name="N2out(31:0)" orien="R0" />
        <branch name="count(7:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1344" y="4016" type="branch" />
            <wire x2="128" y1="3840" y2="4400" x1="128" />
            <wire x2="288" y1="4400" y2="4400" x1="128" />
            <wire x2="1392" y1="3840" y2="3840" x1="128" />
            <wire x2="1392" y1="3840" y2="3936" x1="1392" />
            <wire x2="1392" y1="3936" y2="4016" x1="1392" />
            <wire x2="1392" y1="4016" y2="4816" x1="1392" />
            <wire x2="1648" y1="4816" y2="4816" x1="1392" />
            <wire x2="1344" y1="4016" y2="4016" x1="752" />
            <wire x2="1392" y1="4016" y2="4016" x1="1344" />
        </branch>
        <bustap x2="1488" y1="3936" y2="3936" x1="1392" />
        <branch name="count(1:0)">
            <attrtext style="alignment:SOFT-TCENTER" attrname="Name" x="1760" y="3936" type="branch" />
            <wire x2="1760" y1="3936" y2="3936" x1="1488" />
            <wire x2="2080" y1="3824" y2="3824" x1="1760" />
            <wire x2="1760" y1="3824" y2="3936" x1="1760" />
        </branch>
        <instance x="288" y="4432" name="update_counter" orien="R0">
        </instance>
        <branch name="we0">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="4144" type="branch" />
            <wire x2="2208" y1="4144" y2="4144" x1="2032" />
            <wire x2="2240" y1="4144" y2="4144" x1="2208" />
        </branch>
        <branch name="we1">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="4208" type="branch" />
            <wire x2="2208" y1="4208" y2="4208" x1="2032" />
            <wire x2="2240" y1="4208" y2="4208" x1="2208" />
        </branch>
        <branch name="we2">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="4272" type="branch" />
            <wire x2="2208" y1="4272" y2="4272" x1="2032" />
            <wire x2="2240" y1="4272" y2="4272" x1="2208" />
        </branch>
        <branch name="we3">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="4336" type="branch" />
            <wire x2="2208" y1="4336" y2="4336" x1="2032" />
            <wire x2="2240" y1="4336" y2="4336" x1="2208" />
        </branch>
        <branch name="adr0(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="4400" type="branch" />
            <wire x2="2208" y1="4400" y2="4400" x1="2032" />
            <wire x2="2240" y1="4400" y2="4400" x1="2208" />
        </branch>
        <branch name="adr1(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="4464" type="branch" />
            <wire x2="2208" y1="4464" y2="4464" x1="2032" />
            <wire x2="2240" y1="4464" y2="4464" x1="2208" />
        </branch>
        <branch name="adr2(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="4528" type="branch" />
            <wire x2="2208" y1="4528" y2="4528" x1="2032" />
            <wire x2="2240" y1="4528" y2="4528" x1="2208" />
        </branch>
        <branch name="adr3(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="4592" type="branch" />
            <wire x2="2208" y1="4592" y2="4592" x1="2032" />
            <wire x2="2240" y1="4592" y2="4592" x1="2208" />
        </branch>
        <branch name="selin0(1:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="4656" type="branch" />
            <wire x2="2208" y1="4656" y2="4656" x1="2032" />
            <wire x2="2240" y1="4656" y2="4656" x1="2208" />
        </branch>
        <branch name="selin1(1:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="4720" type="branch" />
            <wire x2="2208" y1="4720" y2="4720" x1="2032" />
            <wire x2="2240" y1="4720" y2="4720" x1="2208" />
        </branch>
        <branch name="selin2(1:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="4784" type="branch" />
            <wire x2="2208" y1="4784" y2="4784" x1="2032" />
            <wire x2="2240" y1="4784" y2="4784" x1="2208" />
        </branch>
        <branch name="selin3(1:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="4848" type="branch" />
            <wire x2="2208" y1="4848" y2="4848" x1="2032" />
            <wire x2="2240" y1="4848" y2="4848" x1="2208" />
        </branch>
        <branch name="we0">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1616" y="928" type="branch" />
            <wire x2="1616" y1="928" y2="928" x1="1600" />
            <wire x2="1664" y1="928" y2="928" x1="1616" />
        </branch>
        <branch name="adr0(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1616" y="1056" type="branch" />
            <wire x2="1616" y1="1056" y2="1056" x1="1600" />
            <wire x2="1664" y1="1056" y2="1056" x1="1616" />
        </branch>
        <branch name="we1">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1616" y="1744" type="branch" />
            <wire x2="1616" y1="1744" y2="1744" x1="1600" />
            <wire x2="1664" y1="1744" y2="1744" x1="1616" />
        </branch>
        <branch name="adr1(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1616" y="1872" type="branch" />
            <wire x2="1616" y1="1872" y2="1872" x1="1600" />
            <wire x2="1664" y1="1872" y2="1872" x1="1616" />
        </branch>
        <branch name="we3">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1616" y="3472" type="branch" />
            <wire x2="1616" y1="3472" y2="3472" x1="1600" />
            <wire x2="1664" y1="3472" y2="3472" x1="1616" />
        </branch>
        <branch name="adr3(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1616" y="3600" type="branch" />
            <wire x2="1616" y1="3600" y2="3600" x1="1600" />
            <wire x2="1664" y1="3600" y2="3600" x1="1616" />
        </branch>
        <branch name="selreg0(1:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="4912" type="branch" />
            <wire x2="2208" y1="4912" y2="4912" x1="2032" />
            <wire x2="2240" y1="4912" y2="4912" x1="2208" />
        </branch>
        <branch name="selreg2(1:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="5040" type="branch" />
            <wire x2="2208" y1="5040" y2="5040" x1="2032" />
            <wire x2="2240" y1="5040" y2="5040" x1="2208" />
        </branch>
        <branch name="selreg3(1:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="5104" type="branch" />
            <wire x2="2208" y1="5104" y2="5104" x1="2032" />
            <wire x2="2240" y1="5104" y2="5104" x1="2208" />
        </branch>
        <iomarker fontsize="28" x="576" y="176" name="Nin(31:0)" orien="R270" />
        <iomarker fontsize="28" x="736" y="176" name="N2in(31:0)" orien="R270" />
        <branch name="Tin(31:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="336" y="832" type="branch" />
            <wire x2="336" y1="1376" y2="1376" x1="304" />
            <wire x2="960" y1="1376" y2="1376" x1="336" />
            <wire x2="336" y1="1376" y2="2192" x1="336" />
            <wire x2="336" y1="2192" y2="3104" x1="336" />
            <wire x2="960" y1="3104" y2="3104" x1="336" />
            <wire x2="960" y1="2192" y2="2192" x1="336" />
            <wire x2="336" y1="176" y2="560" x1="336" />
            <wire x2="960" y1="560" y2="560" x1="336" />
            <wire x2="336" y1="560" y2="832" x1="336" />
            <wire x2="336" y1="832" y2="1376" x1="336" />
        </branch>
        <iomarker fontsize="28" x="96" y="192" name="Lit(11:0)" orien="R270" />
        <branch name="Lit(11:0)">
            <wire x2="96" y1="192" y2="320" x1="96" />
        </branch>
        <instance x="64" y="320" name="constlit" orien="R90">
        </instance>
        <branch name="Litload">
            <wire x2="192" y1="4816" y2="4816" x1="128" />
        </branch>
        <branch name="shortIP">
            <wire x2="192" y1="4880" y2="4880" x1="160" />
        </branch>
        <branch name="ipdone">
            <wire x2="192" y1="4944" y2="4944" x1="160" />
        </branch>
        <branch name="lastcycle">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="480" y="4880" type="branch" />
            <wire x2="288" y1="4464" y2="4464" x1="80" />
            <wire x2="80" y1="4464" y2="4784" x1="80" />
            <wire x2="544" y1="4784" y2="4784" x1="80" />
            <wire x2="544" y1="4784" y2="4880" x1="544" />
            <wire x2="544" y1="4880" y2="5168" x1="544" />
            <wire x2="1648" y1="5168" y2="5168" x1="544" />
            <wire x2="480" y1="4880" y2="4880" x1="448" />
            <wire x2="544" y1="4880" y2="4880" x1="480" />
        </branch>
        <iomarker fontsize="28" x="160" y="4880" name="shortIP" orien="R180" />
        <iomarker fontsize="28" x="160" y="4944" name="ipdone" orien="R180" />
        <instance x="1648" y="4880" name="sel_in" orien="R0">
        </instance>
        <branch name="X(1:0)">
            <wire x2="1648" y1="5232" y2="5232" x1="1424" />
        </branch>
        <branch name="Y(1:0)">
            <wire x2="1648" y1="5296" y2="5296" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="1424" y="5232" name="X(1:0)" orien="R180" />
        <iomarker fontsize="28" x="1424" y="5296" name="Y(1:0)" orien="R180" />
        <branch name="X(1:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="192" y="4528" type="branch" />
            <wire x2="208" y1="4528" y2="4528" x1="192" />
            <wire x2="288" y1="4528" y2="4528" x1="208" />
        </branch>
        <branch name="Y(1:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="192" y="4592" type="branch" />
            <wire x2="208" y1="4592" y2="4592" x1="192" />
            <wire x2="288" y1="4592" y2="4592" x1="208" />
        </branch>
        <branch name="selreg1(1:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="4976" type="branch" />
            <wire x2="2208" y1="4976" y2="4976" x1="2032" />
            <wire x2="2240" y1="4976" y2="4976" x1="2208" />
        </branch>
        <iomarker fontsize="28" x="912" y="112" name="reset" orien="R270" />
        <branch name="reset">
            <wire x2="912" y1="112" y2="240" x1="912" />
        </branch>
        <instance x="192" y="5008" name="XLXI_91" orien="R0" />
        <instance x="3856" y="4560" name="XLXI_94" orien="R0">
        </instance>
        <branch name="oversized(31:0)">
            <wire x2="4368" y1="4272" y2="4272" x1="4240" />
        </branch>
        <instance x="2080" y="3984" name="sel_out" orien="R0">
        </instance>
        <branch name="XLXN_223(1:0)">
            <wire x2="3152" y1="4016" y2="4016" x1="2464" />
            <wire x2="3152" y1="4016" y2="4528" x1="3152" />
            <wire x2="3856" y1="4528" y2="4528" x1="3152" />
        </branch>
        <branch name="XLXN_225(31:0)">
            <wire x2="2720" y1="1248" y2="1248" x1="2560" />
            <wire x2="2720" y1="1248" y2="1376" x1="2720" />
            <wire x2="2880" y1="1376" y2="1376" x1="2720" />
            <wire x2="2880" y1="1376" y2="1600" x1="2880" />
            <wire x2="3792" y1="1600" y2="1600" x1="2880" />
            <wire x2="2880" y1="1600" y2="2528" x1="2880" />
            <wire x2="3792" y1="2528" y2="2528" x1="2880" />
            <wire x2="2880" y1="2528" y2="4336" x1="2880" />
            <wire x2="3856" y1="4336" y2="4336" x1="2880" />
            <wire x2="3776" y1="608" y2="608" x1="2880" />
            <wire x2="2880" y1="608" y2="1376" x1="2880" />
        </branch>
        <branch name="XLXN_226(31:0)">
            <wire x2="2736" y1="2064" y2="2064" x1="2592" />
            <wire x2="2736" y1="2064" y2="2176" x1="2736" />
            <wire x2="2992" y1="2176" y2="2176" x1="2736" />
            <wire x2="2992" y1="2176" y2="2592" x1="2992" />
            <wire x2="3792" y1="2592" y2="2592" x1="2992" />
            <wire x2="2992" y1="2592" y2="4400" x1="2992" />
            <wire x2="3856" y1="4400" y2="4400" x1="2992" />
            <wire x2="3776" y1="672" y2="672" x1="2992" />
            <wire x2="2992" y1="672" y2="1664" x1="2992" />
            <wire x2="3792" y1="1664" y2="1664" x1="2992" />
            <wire x2="2992" y1="1664" y2="2176" x1="2992" />
        </branch>
        <branch name="XLXN_227(31:0)">
            <wire x2="2736" y1="2976" y2="2976" x1="2576" />
            <wire x2="2736" y1="2976" y2="3104" x1="2736" />
            <wire x2="3088" y1="3104" y2="3104" x1="2736" />
            <wire x2="3088" y1="3104" y2="4464" x1="3088" />
            <wire x2="3856" y1="4464" y2="4464" x1="3088" />
            <wire x2="3776" y1="736" y2="736" x1="3088" />
            <wire x2="3088" y1="736" y2="1728" x1="3088" />
            <wire x2="3792" y1="1728" y2="1728" x1="3088" />
            <wire x2="3088" y1="1728" y2="2656" x1="3088" />
            <wire x2="3792" y1="2656" y2="2656" x1="3088" />
            <wire x2="3088" y1="2656" y2="3104" x1="3088" />
        </branch>
        <instance x="3776" y="832" name="muxoutT" orien="R0">
        </instance>
        <iomarker fontsize="28" x="4288" y="544" name="Tout(31:0)" orien="R0" />
        <iomarker fontsize="28" x="4368" y="4272" name="oversized(31:0)" orien="R0" />
        <branch name="XLXN_259(31:0)">
            <wire x2="2608" y1="432" y2="432" x1="2528" />
            <wire x2="2608" y1="432" y2="544" x1="2608" />
            <wire x2="2800" y1="544" y2="544" x1="2608" />
            <wire x2="2800" y1="544" y2="1536" x1="2800" />
            <wire x2="2800" y1="1536" y2="2464" x1="2800" />
            <wire x2="2800" y1="2464" y2="4272" x1="2800" />
            <wire x2="3856" y1="4272" y2="4272" x1="2800" />
            <wire x2="3792" y1="2464" y2="2464" x1="2800" />
            <wire x2="3792" y1="1536" y2="1536" x1="2800" />
            <wire x2="3776" y1="544" y2="544" x1="2800" />
        </branch>
        <instance x="960" y="848" name="muxi0" orien="R0">
        </instance>
        <branch name="selin0(1:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="912" y="816" type="branch" />
            <wire x2="912" y1="816" y2="816" x1="896" />
            <wire x2="960" y1="816" y2="816" x1="912" />
        </branch>
        <instance x="960" y="1664" name="muxi1" orien="R0">
        </instance>
        <branch name="selin1(1:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="912" y="1632" type="branch" />
            <wire x2="912" y1="1632" y2="1632" x1="896" />
            <wire x2="960" y1="1632" y2="1632" x1="912" />
        </branch>
        <instance x="960" y="3392" name="muxi3" orien="R0">
        </instance>
        <branch name="selin3(1:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="896" y="3360" type="branch" />
            <wire x2="896" y1="3360" y2="3360" x1="880" />
            <wire x2="960" y1="3360" y2="3360" x1="896" />
        </branch>
        <iomarker fontsize="28" x="336" y="176" name="Tin(31:0)" orien="R270" />
        <branch name="XLXN_269(31:0)">
            <wire x2="96" y1="704" y2="752" x1="96" />
            <wire x2="960" y1="752" y2="752" x1="96" />
            <wire x2="96" y1="752" y2="1568" x1="96" />
            <wire x2="960" y1="1568" y2="1568" x1="96" />
            <wire x2="96" y1="1568" y2="2384" x1="96" />
            <wire x2="96" y1="2384" y2="3296" x1="96" />
            <wire x2="960" y1="3296" y2="3296" x1="96" />
            <wire x2="960" y1="2384" y2="2384" x1="96" />
        </branch>
        <branch name="Litload">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1552" y="4656" type="branch" />
            <wire x2="1552" y1="4656" y2="4656" x1="1520" />
            <wire x2="1648" y1="4656" y2="4656" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="128" y="4816" name="Litload" orien="R180" />
        <instance x="4016" y="1088" name="pred" orien="R0">
        </instance>
        <branch name="offset">
            <wire x2="4480" y1="1056" y2="1056" x1="4400" />
        </branch>
        <iomarker fontsize="28" x="4480" y="1056" name="offset" orien="R0" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2160" y="3040" type="branch" />
            <wire x2="2160" y1="3040" y2="3040" x1="2144" />
            <wire x2="2192" y1="3040" y2="3040" x1="2160" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2160" y="2128" type="branch" />
            <wire x2="2160" y1="2128" y2="2128" x1="2144" />
            <wire x2="2208" y1="2128" y2="2128" x1="2160" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2096" y="496" type="branch" />
            <wire x2="2096" y1="496" y2="496" x1="2080" />
            <wire x2="2144" y1="496" y2="496" x1="2096" />
        </branch>
        <instance x="2144" y="592" name="R0" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2144" y="1312" type="branch" />
            <wire x2="2144" y1="1312" y2="1312" x1="2128" />
            <wire x2="2176" y1="1312" y2="1312" x1="2144" />
        </branch>
        <branch name="adr2(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1616" y="2688" type="branch" />
            <wire x2="1616" y1="2688" y2="2688" x1="1600" />
            <wire x2="1664" y1="2688" y2="2688" x1="1616" />
        </branch>
        <branch name="we2">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1616" y="2560" type="branch" />
            <wire x2="1616" y1="2560" y2="2560" x1="1600" />
            <wire x2="1664" y1="2560" y2="2560" x1="1616" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1616" y="2496" type="branch" />
            <wire x2="1616" y1="2496" y2="2496" x1="1600" />
            <wire x2="1664" y1="2496" y2="2496" x1="1616" />
        </branch>
        <branch name="selin2(1:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="912" y="2448" type="branch" />
            <wire x2="912" y1="2448" y2="2448" x1="896" />
            <wire x2="960" y1="2448" y2="2448" x1="912" />
        </branch>
        <instance x="960" y="2480" name="muxi2" orien="R0">
        </instance>
        <instance x="1664" y="2784" name="ram2" orien="R0">
        </instance>
        <instance x="1664" y="720" name="muxR0" orien="R0">
        </instance>
        <branch name="selreg0(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1632" y="560" type="branch" />
            <wire x2="1632" y1="560" y2="560" x1="1616" />
            <wire x2="1648" y1="560" y2="560" x1="1632" />
            <wire x2="1664" y1="560" y2="560" x1="1648" />
            <wire x2="2224" y1="256" y2="256" x1="1648" />
            <wire x2="1648" y1="256" y2="560" x1="1648" />
        </branch>
        <instance x="1664" y="1536" name="muxR1" orien="R0">
        </instance>
        <instance x="2176" y="1408" name="R1" orien="R0">
        </instance>
        <instance x="1664" y="2352" name="muxR2" orien="R0">
        </instance>
        <instance x="2208" y="2224" name="R2" orien="R0">
        </instance>
        <instance x="1664" y="3264" name="muxR3" orien="R0">
        </instance>
        <instance x="2192" y="3136" name="R3" orien="R0">
        </instance>
        <branch name="selreg1(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1600" y="1376" type="branch" />
            <wire x2="1600" y1="1376" y2="1376" x1="1584" />
            <wire x2="1632" y1="1376" y2="1376" x1="1600" />
            <wire x2="1664" y1="1376" y2="1376" x1="1632" />
            <wire x2="1632" y1="1248" y2="1376" x1="1632" />
            <wire x2="2080" y1="1248" y2="1248" x1="1632" />
            <wire x2="2080" y1="1056" y2="1248" x1="2080" />
            <wire x2="2256" y1="1056" y2="1056" x1="2080" />
        </branch>
        <branch name="selreg2(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1600" y="2192" type="branch" />
            <wire x2="1600" y1="2192" y2="2192" x1="1584" />
            <wire x2="1616" y1="2192" y2="2192" x1="1600" />
            <wire x2="1664" y1="2192" y2="2192" x1="1616" />
            <wire x2="2064" y1="2064" y2="2064" x1="1616" />
            <wire x2="1616" y1="2064" y2="2192" x1="1616" />
            <wire x2="2288" y1="1872" y2="1872" x1="2064" />
            <wire x2="2064" y1="1872" y2="2064" x1="2064" />
        </branch>
        <branch name="selreg3(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1600" y="3104" type="branch" />
            <wire x2="1600" y1="3104" y2="3104" x1="1568" />
            <wire x2="1616" y1="3104" y2="3104" x1="1600" />
            <wire x2="1664" y1="3104" y2="3104" x1="1616" />
            <wire x2="2112" y1="2976" y2="2976" x1="1616" />
            <wire x2="1616" y1="2976" y2="3104" x1="1616" />
            <wire x2="2272" y1="2800" y2="2800" x1="2112" />
            <wire x2="2112" y1="2800" y2="2976" x1="2112" />
        </branch>
        <branch name="XLXN_332">
            <wire x2="2128" y1="320" y2="432" x1="2128" />
            <wire x2="2144" y1="432" y2="432" x1="2128" />
            <wire x2="2560" y1="320" y2="320" x1="2128" />
            <wire x2="2560" y1="224" y2="224" x1="2480" />
            <wire x2="2560" y1="224" y2="320" x1="2560" />
        </branch>
        <branch name="selreg0(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2144" y="192" type="branch" />
            <wire x2="2144" y1="192" y2="192" x1="2112" />
            <wire x2="2224" y1="192" y2="192" x1="2144" />
        </branch>
        <instance x="2224" y="320" name="XLXI_146" orien="R0" />
        <branch name="XLXN_338">
            <wire x2="2592" y1="1136" y2="1136" x1="2160" />
            <wire x2="2160" y1="1136" y2="1248" x1="2160" />
            <wire x2="2176" y1="1248" y2="1248" x1="2160" />
            <wire x2="2592" y1="1024" y2="1024" x1="2512" />
            <wire x2="2592" y1="1024" y2="1136" x1="2592" />
        </branch>
        <branch name="selreg1(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2176" y="992" type="branch" />
            <wire x2="2176" y1="992" y2="992" x1="2160" />
            <wire x2="2256" y1="992" y2="992" x1="2176" />
        </branch>
        <instance x="2288" y="1936" name="XLXI_148" orien="R0" />
        <instance x="2272" y="2864" name="XLXI_149" orien="R0" />
        <branch name="XLXN_340">
            <wire x2="2608" y1="1952" y2="1952" x1="2128" />
            <wire x2="2128" y1="1952" y2="2064" x1="2128" />
            <wire x2="2208" y1="2064" y2="2064" x1="2128" />
            <wire x2="2608" y1="1840" y2="1840" x1="2544" />
            <wire x2="2608" y1="1840" y2="1952" x1="2608" />
        </branch>
        <branch name="selreg2(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="1808" type="branch" />
            <wire x2="2208" y1="1808" y2="1808" x1="2192" />
            <wire x2="2288" y1="1808" y2="1808" x1="2208" />
        </branch>
        <branch name="XLXN_342">
            <wire x2="2176" y1="2864" y2="2976" x1="2176" />
            <wire x2="2192" y1="2976" y2="2976" x1="2176" />
            <wire x2="2592" y1="2864" y2="2864" x1="2176" />
            <wire x2="2592" y1="2768" y2="2768" x1="2528" />
            <wire x2="2592" y1="2768" y2="2864" x1="2592" />
        </branch>
        <branch name="selreg3(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2160" y="2736" type="branch" />
            <wire x2="2160" y1="2736" y2="2736" x1="2144" />
            <wire x2="2272" y1="2736" y2="2736" x1="2160" />
        </branch>
        <instance x="2256" y="1120" name="XLXI_147" orien="R0" />
        <iomarker fontsize="28" x="176" y="4656" name="clk" orien="R180" />
        <branch name="clk">
            <wire x2="288" y1="4656" y2="4656" x1="176" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="224" y="4720" type="branch" />
            <wire x2="224" y1="4720" y2="4720" x1="192" />
            <wire x2="288" y1="4720" y2="4720" x1="224" />
        </branch>
    </sheet>
</drawing>