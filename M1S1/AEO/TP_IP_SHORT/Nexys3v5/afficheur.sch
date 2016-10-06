<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="din(15:0)" />
        <signal name="XLXN_2(3:0)" />
        <signal name="sevenseg(6:0)" />
        <signal name="din(15:12)" />
        <signal name="din(11:8)" />
        <signal name="din(7:4)" />
        <signal name="din(3:0)" />
        <signal name="clk" />
        <signal name="sel(1:0)" />
        <signal name="anodes(3:0)" />
        <signal name="sel(1)" />
        <signal name="sel(0)" />
        <signal name="E190" />
        <port polarity="Input" name="din(15:0)" />
        <port polarity="Output" name="sevenseg(6:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="anodes(3:0)" />
        <port polarity="Input" name="E190" />
        <blockdef name="x7seg">
            <timestamp>2014-2-7T9:4:19</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="cb2ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
        </blockdef>
        <blockdef name="mux4x4">
            <timestamp>2014-2-7T9:2:15</timestamp>
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
        <blockdef name="shiftanodes">
            <timestamp>2014-2-7T10:32:50</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="x7seg" name="XLXI_1">
            <blockpin signalname="XLXN_2(3:0)" name="sw(3:0)" />
            <blockpin signalname="sevenseg(6:0)" name="sevenseg(6:0)" />
        </block>
        <block symbolname="cb2ce" name="XLXI_2">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E190" name="CE" />
            <blockpin name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="sel(0)" name="Q0" />
            <blockpin signalname="sel(1)" name="Q1" />
            <blockpin name="TC" />
        </block>
        <block symbolname="mux4x4" name="XLXI_3">
            <blockpin signalname="din(3:0)" name="I0(3:0)" />
            <blockpin signalname="din(7:4)" name="I1(3:0)" />
            <blockpin signalname="din(11:8)" name="I2(3:0)" />
            <blockpin signalname="din(15:12)" name="I3(3:0)" />
            <blockpin signalname="sel(1:0)" name="s(1:0)" />
            <blockpin signalname="XLXN_2(3:0)" name="O(3:0)" />
        </block>
        <block symbolname="shiftanodes" name="XLXI_34">
            <blockpin signalname="E190" name="Enable190" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="anodes(3:0)" name="anodes(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="din(15:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="352" y="368" type="branch" />
            <wire x2="352" y1="304" y2="368" x1="352" />
            <wire x2="352" y1="368" y2="512" x1="352" />
            <wire x2="352" y1="512" y2="576" x1="352" />
            <wire x2="352" y1="576" y2="640" x1="352" />
            <wire x2="352" y1="640" y2="704" x1="352" />
            <wire x2="352" y1="704" y2="736" x1="352" />
        </branch>
        <branch name="XLXN_2(3:0)">
            <wire x2="1904" y1="512" y2="512" x1="1808" />
        </branch>
        <branch name="sevenseg(6:0)">
            <wire x2="2384" y1="512" y2="512" x1="2288" />
        </branch>
        <bustap x2="448" y1="704" y2="704" x1="352" />
        <branch name="din(15:12)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1064" y="704" type="branch" />
            <wire x2="1064" y1="704" y2="704" x1="448" />
            <wire x2="1424" y1="704" y2="704" x1="1064" />
        </branch>
        <bustap x2="448" y1="640" y2="640" x1="352" />
        <branch name="din(11:8)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1064" y="640" type="branch" />
            <wire x2="1064" y1="640" y2="640" x1="448" />
            <wire x2="1424" y1="640" y2="640" x1="1064" />
        </branch>
        <bustap x2="448" y1="576" y2="576" x1="352" />
        <branch name="din(7:4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1064" y="576" type="branch" />
            <wire x2="1064" y1="576" y2="576" x1="448" />
            <wire x2="1424" y1="576" y2="576" x1="1064" />
        </branch>
        <bustap x2="448" y1="512" y2="512" x1="352" />
        <branch name="din(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1064" y="512" type="branch" />
            <wire x2="1064" y1="512" y2="512" x1="448" />
            <wire x2="1424" y1="512" y2="512" x1="1064" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="256" y="368" type="branch" />
            <wire x2="256" y1="304" y2="368" x1="256" />
            <wire x2="256" y1="368" y2="1040" x1="256" />
            <wire x2="816" y1="1040" y2="1040" x1="256" />
            <wire x2="256" y1="1040" y2="1312" x1="256" />
            <wire x2="816" y1="1312" y2="1312" x1="256" />
        </branch>
        <branch name="anodes(3:0)">
            <wire x2="2400" y1="1248" y2="1248" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="352" y="304" name="din(15:0)" orien="R270" />
        <iomarker fontsize="28" x="256" y="304" name="clk" orien="R270" />
        <instance x="816" y="1168" name="XLXI_2" orien="R0" />
        <instance x="816" y="1344" name="XLXI_34" orien="R0">
        </instance>
        <instance x="1424" y="800" name="XLXI_3" orien="R0">
        </instance>
        <branch name="sel(1:0)">
            <wire x2="1424" y1="768" y2="768" x1="1408" />
            <wire x2="1408" y1="768" y2="848" x1="1408" />
            <wire x2="1408" y1="848" y2="912" x1="1408" />
            <wire x2="1408" y1="912" y2="976" x1="1408" />
        </branch>
        <bustap x2="1312" y1="912" y2="912" x1="1408" />
        <branch name="sel(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1256" y="912" type="branch" />
            <wire x2="1256" y1="912" y2="912" x1="1200" />
            <wire x2="1312" y1="912" y2="912" x1="1256" />
        </branch>
        <bustap x2="1312" y1="848" y2="848" x1="1408" />
        <branch name="sel(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1256" y="848" type="branch" />
            <wire x2="1256" y1="848" y2="848" x1="1200" />
            <wire x2="1312" y1="848" y2="848" x1="1256" />
        </branch>
        <instance x="1904" y="608" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2384" y="512" name="sevenseg(6:0)" orien="R0" />
        <iomarker fontsize="28" x="2400" y="1248" name="anodes(3:0)" orien="R0" />
        <branch name="E190">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="112" y="400" type="branch" />
            <wire x2="112" y1="288" y2="400" x1="112" />
            <wire x2="112" y1="400" y2="976" x1="112" />
            <wire x2="720" y1="976" y2="976" x1="112" />
            <wire x2="816" y1="976" y2="976" x1="720" />
            <wire x2="720" y1="976" y2="1248" x1="720" />
            <wire x2="816" y1="1248" y2="1248" x1="720" />
        </branch>
        <iomarker fontsize="28" x="112" y="288" name="E190" orien="R270" />
    </sheet>
</drawing>