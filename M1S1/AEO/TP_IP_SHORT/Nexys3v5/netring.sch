<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="I_Y(31:0)" />
        <signal name="clk" />
        <signal name="I_put(31:0)" />
        <signal name="O(31:0)" />
        <signal name="E_shift" />
        <signal name="E_put" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20(31:0)" />
        <signal name="XLXN_23(31:0)" />
        <signal name="I_X(31:0)" />
        <signal name="i_Xmoins(31:0)" />
        <signal name="I_Ymoins(31:0)" />
        <signal name="sel(1:0)">
        </signal>
        <signal name="X_Y" />
        <signal name="P_M" />
        <signal name="sel(1)" />
        <signal name="sel(0)" />
        <signal name="XLXN_40" />
        <port polarity="Input" name="I_Y(31:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="I_put(31:0)" />
        <port polarity="Output" name="O(31:0)" />
        <port polarity="Input" name="E_shift" />
        <port polarity="Input" name="E_put" />
        <port polarity="Input" name="I_X(31:0)" />
        <port polarity="Input" name="i_Xmoins(31:0)" />
        <port polarity="Input" name="I_Ymoins(31:0)" />
        <port polarity="Input" name="X_Y" />
        <port polarity="Input" name="P_M" />
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
        <block symbolname="QDE" name="XLXI_2">
            <blockpin signalname="XLXN_19" name="E" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_20(31:0)" name="d(31:0)" />
            <blockpin signalname="O(31:0)" name="q(31:0)" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="E_put" name="I0" />
            <blockpin signalname="E_shift" name="I1" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="Mux2" name="XLXI_5">
            <blockpin signalname="E_put" name="sel" />
            <blockpin signalname="XLXN_23(31:0)" name="X0(31:0)" />
            <blockpin signalname="I_put(31:0)" name="X1(31:0)" />
            <blockpin signalname="XLXN_20(31:0)" name="Y(31:0)" />
        </block>
        <block symbolname="Mux4" name="XLXI_6">
            <blockpin signalname="I_X(31:0)" name="X0(31:0)" />
            <blockpin signalname="I_Y(31:0)" name="X1(31:0)" />
            <blockpin signalname="i_Xmoins(31:0)" name="X2(31:0)" />
            <blockpin signalname="I_Ymoins(31:0)" name="X3(31:0)" />
            <blockpin signalname="sel(1:0)" name="sel(1:0)" />
            <blockpin signalname="XLXN_23(31:0)" name="Y(31:0)" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="X_Y" name="I" />
            <blockpin signalname="sel(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_8">
            <blockpin signalname="P_M" name="I" />
            <blockpin signalname="sel(1)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="400" y="368" type="branch" />
            <wire x2="400" y1="368" y2="368" x1="336" />
            <wire x2="992" y1="368" y2="368" x1="400" />
            <wire x2="992" y1="368" y2="592" x1="992" />
            <wire x2="1648" y1="592" y2="592" x1="992" />
        </branch>
        <branch name="I_put(31:0)">
            <wire x2="1088" y1="896" y2="896" x1="320" />
        </branch>
        <iomarker fontsize="28" x="336" y="368" name="clk" orien="R180" />
        <branch name="O(31:0)">
            <wire x2="2176" y1="528" y2="528" x1="2032" />
        </branch>
        <instance x="1648" y="688" name="XLXI_2" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2176" y="528" name="O(31:0)" orien="R0" />
        <branch name="E_shift">
            <wire x2="1264" y1="160" y2="160" x1="352" />
        </branch>
        <iomarker fontsize="28" x="352" y="160" name="E_shift" orien="R180" />
        <instance x="1264" y="288" name="XLXI_3" orien="R0" />
        <branch name="E_put">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="784" y="224" type="branch" />
            <wire x2="784" y1="224" y2="224" x1="336" />
            <wire x2="1024" y1="224" y2="224" x1="784" />
            <wire x2="1264" y1="224" y2="224" x1="1024" />
            <wire x2="1024" y1="224" y2="768" x1="1024" />
            <wire x2="1088" y1="768" y2="768" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="336" y="224" name="E_put" orien="R180" />
        <branch name="XLXN_19">
            <wire x2="1584" y1="192" y2="192" x1="1520" />
            <wire x2="1584" y1="192" y2="528" x1="1584" />
            <wire x2="1648" y1="528" y2="528" x1="1584" />
        </branch>
        <instance x="1088" y="928" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_20(31:0)">
            <wire x2="1552" y1="768" y2="768" x1="1472" />
            <wire x2="1552" y1="656" y2="768" x1="1552" />
            <wire x2="1648" y1="656" y2="656" x1="1552" />
        </branch>
        <branch name="XLXN_23(31:0)">
            <wire x2="976" y1="464" y2="464" x1="864" />
            <wire x2="976" y1="464" y2="832" x1="976" />
            <wire x2="1088" y1="832" y2="832" x1="976" />
        </branch>
        <instance x="480" y="752" name="XLXI_6" orien="R0">
        </instance>
        <branch name="I_X(31:0)">
            <wire x2="480" y1="464" y2="464" x1="352" />
        </branch>
        <iomarker fontsize="28" x="352" y="464" name="I_X(31:0)" orien="R180" />
        <branch name="I_Y(31:0)">
            <wire x2="480" y1="528" y2="528" x1="352" />
        </branch>
        <iomarker fontsize="28" x="352" y="528" name="I_Y(31:0)" orien="R180" />
        <branch name="i_Xmoins(31:0)">
            <wire x2="480" y1="592" y2="592" x1="352" />
        </branch>
        <branch name="I_Ymoins(31:0)">
            <wire x2="480" y1="656" y2="656" x1="352" />
        </branch>
        <branch name="sel(1:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="432" y="720" type="branch" />
            <wire x2="480" y1="720" y2="720" x1="432" />
            <wire x2="432" y1="720" y2="1056" x1="432" />
            <wire x2="752" y1="1056" y2="1056" x1="432" />
            <wire x2="752" y1="1056" y2="1200" x1="752" />
            <wire x2="752" y1="1200" y2="1312" x1="752" />
            <wire x2="752" y1="1312" y2="1568" x1="752" />
        </branch>
        <iomarker fontsize="28" x="352" y="592" name="i_Xmoins(31:0)" orien="R180" />
        <iomarker fontsize="28" x="352" y="656" name="I_Ymoins(31:0)" orien="R180" />
        <iomarker fontsize="28" x="320" y="896" name="I_put(31:0)" orien="R180" />
        <branch name="P_M">
            <wire x2="240" y1="1312" y2="1312" x1="208" />
            <wire x2="256" y1="1312" y2="1312" x1="240" />
        </branch>
        <instance x="272" y="1232" name="XLXI_7" orien="R0" />
        <instance x="256" y="1344" name="XLXI_8" orien="R0" />
        <bustap x2="656" y1="1312" y2="1312" x1="752" />
        <branch name="sel(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="568" y="1312" type="branch" />
            <wire x2="568" y1="1312" y2="1312" x1="480" />
            <wire x2="656" y1="1312" y2="1312" x1="568" />
        </branch>
        <bustap x2="656" y1="1200" y2="1200" x1="752" />
        <branch name="sel(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="576" y="1200" type="branch" />
            <wire x2="576" y1="1200" y2="1200" x1="496" />
            <wire x2="656" y1="1200" y2="1200" x1="576" />
        </branch>
        <branch name="X_Y">
            <wire x2="272" y1="1200" y2="1200" x1="224" />
        </branch>
        <iomarker fontsize="28" x="224" y="1200" name="X_Y" orien="R180" />
        <iomarker fontsize="28" x="208" y="1312" name="P_M" orien="R180" />
    </sheet>
</drawing>