<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="I_put(31:0)" />
        <signal name="E_shift" />
        <signal name="E_put" />
        <signal name="XLXN_19" />
        <signal name="XLXN_28(31:0)" />
        <signal name="E_master" />
        <signal name="O(31:0)" />
        <signal name="I_master(31:0)" />
        <signal name="XLXN_47(31:0)" />
        <signal name="XLXN_48(31:0)" />
        <signal name="I_Y(31:0)" />
        <signal name="I_X(31:0)" />
        <signal name="I_Xmoins(31:0)" />
        <signal name="I_Ymoins(31:0)" />
        <signal name="sel(1:0)">
        </signal>
        <signal name="P_M" />
        <signal name="X_Y" />
        <signal name="sel(1)" />
        <signal name="sel(0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="I_put(31:0)" />
        <port polarity="Input" name="E_shift" />
        <port polarity="Input" name="E_put" />
        <port polarity="Input" name="E_master" />
        <port polarity="Output" name="O(31:0)" />
        <port polarity="Input" name="I_master(31:0)" />
        <port polarity="Input" name="I_Y(31:0)" />
        <port polarity="Input" name="I_X(31:0)" />
        <port polarity="Input" name="I_Xmoins(31:0)" />
        <port polarity="Input" name="I_Ymoins(31:0)" />
        <port polarity="Input" name="P_M" />
        <port polarity="Input" name="X_Y" />
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
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="Mux2" name="XLXI_8">
            <blockpin signalname="E_put" name="sel" />
            <blockpin signalname="XLXN_28(31:0)" name="X0(31:0)" />
            <blockpin signalname="I_put(31:0)" name="X1(31:0)" />
            <blockpin signalname="XLXN_47(31:0)" name="Y(31:0)" />
        </block>
        <block symbolname="or3" name="XLXI_13">
            <blockpin signalname="E_put" name="I0" />
            <blockpin signalname="E_shift" name="I1" />
            <blockpin signalname="E_master" name="I2" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="Mux2" name="XLXI_14">
            <blockpin signalname="E_master" name="sel" />
            <blockpin signalname="XLXN_47(31:0)" name="X0(31:0)" />
            <blockpin signalname="I_master(31:0)" name="X1(31:0)" />
            <blockpin signalname="XLXN_48(31:0)" name="Y(31:0)" />
        </block>
        <block symbolname="QDE" name="XLXI_5">
            <blockpin signalname="XLXN_19" name="E" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_48(31:0)" name="d(31:0)" />
            <blockpin signalname="O(31:0)" name="q(31:0)" />
        </block>
        <block symbolname="Mux4" name="XLXI_15">
            <blockpin signalname="I_X(31:0)" name="X0(31:0)" />
            <blockpin signalname="I_Y(31:0)" name="X1(31:0)" />
            <blockpin signalname="I_Xmoins(31:0)" name="X2(31:0)" />
            <blockpin signalname="I_Ymoins(31:0)" name="X3(31:0)" />
            <blockpin signalname="sel(1:0)" name="sel(1:0)" />
            <blockpin signalname="XLXN_28(31:0)" name="Y(31:0)" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="X_Y" name="I" />
            <blockpin signalname="sel(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_17">
            <blockpin signalname="P_M" name="I" />
            <blockpin signalname="sel(1)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="512" y="480" type="branch" />
            <wire x2="512" y1="480" y2="480" x1="448" />
            <wire x2="1360" y1="480" y2="480" x1="512" />
            <wire x2="1360" y1="480" y2="704" x1="1360" />
            <wire x2="2208" y1="704" y2="704" x1="1360" />
        </branch>
        <branch name="I_put(31:0)">
            <wire x2="1200" y1="1008" y2="1008" x1="432" />
        </branch>
        <branch name="E_shift">
            <wire x2="1696" y1="272" y2="272" x1="464" />
        </branch>
        <branch name="E_put">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="896" y="336" type="branch" />
            <wire x2="896" y1="336" y2="336" x1="448" />
            <wire x2="1136" y1="336" y2="336" x1="896" />
            <wire x2="1136" y1="336" y2="880" x1="1136" />
            <wire x2="1200" y1="880" y2="880" x1="1136" />
            <wire x2="1696" y1="336" y2="336" x1="1136" />
        </branch>
        <instance x="1200" y="1040" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_28(31:0)">
            <wire x2="1088" y1="576" y2="576" x1="976" />
            <wire x2="1088" y1="576" y2="944" x1="1088" />
            <wire x2="1200" y1="944" y2="944" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="448" y="480" name="clk" orien="R180" />
        <iomarker fontsize="28" x="464" y="272" name="E_shift" orien="R180" />
        <iomarker fontsize="28" x="448" y="336" name="E_put" orien="R180" />
        <iomarker fontsize="28" x="432" y="1008" name="I_put(31:0)" orien="R180" />
        <branch name="E_master">
            <wire x2="1632" y1="208" y2="208" x1="464" />
            <wire x2="1696" y1="208" y2="208" x1="1632" />
            <wire x2="1632" y1="208" y2="1104" x1="1632" />
            <wire x2="1760" y1="1104" y2="1104" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="464" y="208" name="E_master" orien="R180" />
        <branch name="O(31:0)">
            <wire x2="2736" y1="640" y2="640" x1="2592" />
        </branch>
        <instance x="2208" y="800" name="XLXI_5" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2736" y="640" name="O(31:0)" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="2192" y1="272" y2="272" x1="1952" />
            <wire x2="2192" y1="272" y2="640" x1="2192" />
            <wire x2="2208" y1="640" y2="640" x1="2192" />
        </branch>
        <instance x="1696" y="400" name="XLXI_13" orien="R0" />
        <branch name="I_master(31:0)">
            <wire x2="464" y1="1248" y2="1248" x1="448" />
            <wire x2="1760" y1="1232" y2="1232" x1="464" />
            <wire x2="464" y1="1232" y2="1248" x1="464" />
        </branch>
        <iomarker fontsize="28" x="448" y="1248" name="I_master(31:0)" orien="R180" />
        <branch name="XLXN_47(31:0)">
            <wire x2="1600" y1="880" y2="880" x1="1584" />
            <wire x2="1600" y1="880" y2="1168" x1="1600" />
            <wire x2="1760" y1="1168" y2="1168" x1="1600" />
        </branch>
        <branch name="XLXN_48(31:0)">
            <wire x2="2192" y1="1104" y2="1104" x1="2144" />
            <wire x2="2208" y1="768" y2="768" x1="2192" />
            <wire x2="2192" y1="768" y2="1104" x1="2192" />
        </branch>
        <instance x="1760" y="1264" name="XLXI_14" orien="R0">
        </instance>
        <instance x="592" y="864" name="XLXI_15" orien="R0">
        </instance>
        <iomarker fontsize="28" x="464" y="640" name="I_Y(31:0)" orien="R180" />
        <branch name="I_Y(31:0)">
            <wire x2="592" y1="640" y2="640" x1="464" />
        </branch>
        <branch name="I_X(31:0)">
            <wire x2="592" y1="576" y2="576" x1="464" />
        </branch>
        <iomarker fontsize="28" x="464" y="576" name="I_X(31:0)" orien="R180" />
        <branch name="I_Xmoins(31:0)">
            <wire x2="592" y1="704" y2="704" x1="464" />
        </branch>
        <branch name="I_Ymoins(31:0)">
            <wire x2="592" y1="768" y2="768" x1="464" />
        </branch>
        <branch name="sel(1:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="496" y="832" type="branch" />
            <wire x2="592" y1="832" y2="832" x1="496" />
            <wire x2="496" y1="832" y2="960" x1="496" />
            <wire x2="1072" y1="960" y2="960" x1="496" />
            <wire x2="1072" y1="960" y2="1424" x1="1072" />
            <wire x2="1072" y1="1424" y2="1536" x1="1072" />
            <wire x2="1072" y1="1536" y2="1664" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="464" y="704" name="I_Xmoins(31:0)" orien="R180" />
        <iomarker fontsize="28" x="464" y="768" name="I_Ymoins(31:0)" orien="R180" />
        <branch name="P_M">
            <wire x2="304" y1="1536" y2="1536" x1="272" />
            <wire x2="320" y1="1536" y2="1536" x1="304" />
        </branch>
        <instance x="336" y="1456" name="XLXI_7" orien="R0" />
        <instance x="320" y="1568" name="XLXI_17" orien="R0" />
        <branch name="X_Y">
            <wire x2="336" y1="1424" y2="1424" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="1424" name="X_Y" orien="R180" />
        <iomarker fontsize="28" x="272" y="1536" name="P_M" orien="R180" />
        <bustap x2="976" y1="1536" y2="1536" x1="1072" />
        <branch name="sel(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="760" y="1536" type="branch" />
            <wire x2="760" y1="1536" y2="1536" x1="544" />
            <wire x2="976" y1="1536" y2="1536" x1="760" />
        </branch>
        <bustap x2="976" y1="1424" y2="1424" x1="1072" />
        <branch name="sel(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="768" y="1424" type="branch" />
            <wire x2="768" y1="1424" y2="1424" x1="560" />
            <wire x2="976" y1="1424" y2="1424" x1="768" />
        </branch>
    </sheet>
</drawing>