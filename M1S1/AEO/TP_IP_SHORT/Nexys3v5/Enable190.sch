<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_14" />
        <signal name="XLXN_17" />
        <signal name="Enable190" />
        <signal name="clk" />
        <signal name="XLXN_72" />
        <signal name="XLXN_74" />
        <signal name="XLXN_76" />
        <signal name="clk190" />
        <port polarity="Output" name="Enable190" />
        <port polarity="Input" name="clk" />
        <blockdef name="cb16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="nor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
        </blockdef>
        <blockdef name="cb4ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-512" height="448" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
        </blockdef>
        <block symbolname="cb16ce" name="XLXI_1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_17" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_14" name="CEO" />
            <blockpin name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="vcc" name="XLXI_2">
            <blockpin signalname="XLXN_17" name="P" />
        </block>
        <block symbolname="fd" name="XLXI_22">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_74" name="D" />
            <blockpin signalname="XLXN_76" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_21">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="clk190" name="D" />
            <blockpin signalname="XLXN_74" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_24">
            <blockpin signalname="XLXN_74" name="I" />
            <blockpin signalname="XLXN_72" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_28">
            <blockpin signalname="XLXN_76" name="I0" />
            <blockpin signalname="XLXN_72" name="I1" />
            <blockpin signalname="Enable190" name="O" />
        </block>
        <block symbolname="cb4ce" name="XLXI_29">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_14" name="CE" />
            <blockpin name="CLR" />
            <blockpin name="CEO" />
            <blockpin name="Q0" />
            <blockpin name="Q1" />
            <blockpin signalname="clk190" name="Q2" />
            <blockpin name="Q3" />
            <blockpin name="TC" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="432" y="688" name="XLXI_1" orien="R0" />
        <branch name="XLXN_14">
            <wire x2="912" y1="496" y2="496" x1="816" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="384" y1="464" y2="496" x1="384" />
            <wire x2="432" y1="496" y2="496" x1="384" />
        </branch>
        <instance x="320" y="464" name="XLXI_2" orien="R0" />
        <instance x="1408" y="688" name="XLXI_21" orien="R0" />
        <instance x="1824" y="688" name="XLXI_22" orien="R0" />
        <branch name="Enable190">
            <wire x2="2528" y1="288" y2="288" x1="2512" />
        </branch>
        <branch name="clk">
            <wire x2="384" y1="688" y2="688" x1="336" />
            <wire x2="864" y1="688" y2="688" x1="384" />
            <wire x2="1360" y1="688" y2="688" x1="864" />
            <wire x2="1792" y1="688" y2="688" x1="1360" />
            <wire x2="432" y1="560" y2="560" x1="384" />
            <wire x2="384" y1="560" y2="688" x1="384" />
            <wire x2="912" y1="560" y2="560" x1="864" />
            <wire x2="864" y1="560" y2="688" x1="864" />
            <wire x2="1408" y1="560" y2="560" x1="1360" />
            <wire x2="1360" y1="560" y2="688" x1="1360" />
            <wire x2="1792" y1="560" y2="688" x1="1792" />
            <wire x2="1824" y1="560" y2="560" x1="1792" />
        </branch>
        <iomarker fontsize="28" x="336" y="688" name="clk" orien="R180" />
        <branch name="XLXN_72">
            <wire x2="2256" y1="256" y2="256" x1="2160" />
        </branch>
        <instance x="1936" y="288" name="XLXI_24" orien="R0" />
        <branch name="XLXN_74">
            <wire x2="1808" y1="432" y2="432" x1="1792" />
            <wire x2="1824" y1="432" y2="432" x1="1808" />
            <wire x2="1936" y1="256" y2="256" x1="1808" />
            <wire x2="1808" y1="256" y2="432" x1="1808" />
        </branch>
        <branch name="XLXN_76">
            <wire x2="2224" y1="432" y2="432" x1="2208" />
            <wire x2="2256" y1="320" y2="320" x1="2224" />
            <wire x2="2224" y1="320" y2="432" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2528" y="288" name="Enable190" orien="R0" />
        <instance x="2256" y="384" name="XLXI_28" orien="R0" />
        <instance x="912" y="688" name="XLXI_29" orien="R0" />
        <branch name="clk190">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1328" y="368" type="branch" />
            <wire x2="1328" y1="368" y2="368" x1="1296" />
            <wire x2="1344" y1="368" y2="368" x1="1328" />
            <wire x2="1344" y1="368" y2="432" x1="1344" />
            <wire x2="1408" y1="432" y2="432" x1="1344" />
        </branch>
    </sheet>
</drawing>