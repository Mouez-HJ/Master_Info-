<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Enable190" />
        <signal name="clk" />
        <signal name="anodes(0)" />
        <signal name="anodes(1)" />
        <signal name="anodes(2)" />
        <signal name="anodes(3)" />
        <signal name="anodes(3:0)" />
        <port polarity="Input" name="Enable190" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="anodes(3:0)" />
        <blockdef name="fde">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
        </blockdef>
        <block symbolname="fde" name="XLXI_1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="Enable190" name="CE" />
            <blockpin signalname="anodes(3)" name="D" />
            <blockpin signalname="anodes(0)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_2">
            <attr value="1" name="INIT">
                <trait verilog="all:0 dp:1" />
                <trait vhdl="all:0 gm:1" />
                <trait valuetype="Bit" />
            </attr>
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="Enable190" name="CE" />
            <blockpin signalname="anodes(0)" name="D" />
            <blockpin signalname="anodes(1)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_3">
            <attr value="1" name="INIT">
                <trait verilog="all:0 dp:1" />
                <trait vhdl="all:0 gm:1" />
                <trait valuetype="Bit" />
            </attr>
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="Enable190" name="CE" />
            <blockpin signalname="anodes(1)" name="D" />
            <blockpin signalname="anodes(2)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_4">
            <attr value="1" name="INIT">
                <trait verilog="all:0 dp:1" />
                <trait vhdl="all:0 gm:1" />
                <trait valuetype="Bit" />
            </attr>
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="Enable190" name="CE" />
            <blockpin signalname="anodes(2)" name="D" />
            <blockpin signalname="anodes(3)" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="944" y="864" name="XLXI_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="0" y="-352" type="instance" />
        </instance>
        <instance x="944" y="1248" name="XLXI_2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="0" y="-344" type="instance" />
        </instance>
        <instance x="944" y="1632" name="XLXI_3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="16" y="-344" type="instance" />
        </instance>
        <instance x="944" y="2032" name="XLXI_4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="0" y="-344" type="instance" />
        </instance>
        <branch name="Enable190">
            <wire x2="528" y1="512" y2="672" x1="528" />
            <wire x2="944" y1="672" y2="672" x1="528" />
            <wire x2="528" y1="672" y2="1056" x1="528" />
            <wire x2="944" y1="1056" y2="1056" x1="528" />
            <wire x2="528" y1="1056" y2="1440" x1="528" />
            <wire x2="944" y1="1440" y2="1440" x1="528" />
            <wire x2="528" y1="1440" y2="1840" x1="528" />
            <wire x2="944" y1="1840" y2="1840" x1="528" />
        </branch>
        <branch name="clk">
            <wire x2="672" y1="512" y2="736" x1="672" />
            <wire x2="944" y1="736" y2="736" x1="672" />
            <wire x2="672" y1="736" y2="1120" x1="672" />
            <wire x2="944" y1="1120" y2="1120" x1="672" />
            <wire x2="672" y1="1120" y2="1504" x1="672" />
            <wire x2="944" y1="1504" y2="1504" x1="672" />
            <wire x2="672" y1="1504" y2="1904" x1="672" />
            <wire x2="944" y1="1904" y2="1904" x1="672" />
        </branch>
        <branch name="anodes(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1512" y="608" type="branch" />
            <wire x2="880" y1="864" y2="992" x1="880" />
            <wire x2="944" y1="992" y2="992" x1="880" />
            <wire x2="1376" y1="864" y2="864" x1="880" />
            <wire x2="1376" y1="608" y2="608" x1="1328" />
            <wire x2="1376" y1="608" y2="864" x1="1376" />
            <wire x2="1512" y1="608" y2="608" x1="1376" />
            <wire x2="1616" y1="608" y2="608" x1="1512" />
        </branch>
        <branch name="anodes(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1512" y="992" type="branch" />
            <wire x2="880" y1="1248" y2="1376" x1="880" />
            <wire x2="944" y1="1376" y2="1376" x1="880" />
            <wire x2="1376" y1="1248" y2="1248" x1="880" />
            <wire x2="1376" y1="992" y2="992" x1="1328" />
            <wire x2="1376" y1="992" y2="1248" x1="1376" />
            <wire x2="1512" y1="992" y2="992" x1="1376" />
            <wire x2="1616" y1="992" y2="992" x1="1512" />
        </branch>
        <branch name="anodes(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1520" y="1376" type="branch" />
            <wire x2="880" y1="1648" y2="1776" x1="880" />
            <wire x2="944" y1="1776" y2="1776" x1="880" />
            <wire x2="1376" y1="1648" y2="1648" x1="880" />
            <wire x2="1376" y1="1376" y2="1376" x1="1328" />
            <wire x2="1376" y1="1376" y2="1648" x1="1376" />
            <wire x2="1520" y1="1376" y2="1376" x1="1376" />
            <wire x2="1616" y1="1376" y2="1376" x1="1520" />
        </branch>
        <branch name="anodes(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1536" y="1776" type="branch" />
            <wire x2="880" y1="384" y2="608" x1="880" />
            <wire x2="944" y1="608" y2="608" x1="880" />
            <wire x2="1440" y1="384" y2="384" x1="880" />
            <wire x2="1440" y1="384" y2="1776" x1="1440" />
            <wire x2="1536" y1="1776" y2="1776" x1="1440" />
            <wire x2="1616" y1="1776" y2="1776" x1="1536" />
            <wire x2="1440" y1="1776" y2="1776" x1="1328" />
        </branch>
        <branch name="anodes(3:0)">
            <wire x2="1712" y1="560" y2="608" x1="1712" />
            <wire x2="1712" y1="608" y2="992" x1="1712" />
            <wire x2="1712" y1="992" y2="1376" x1="1712" />
            <wire x2="1712" y1="1376" y2="1776" x1="1712" />
            <wire x2="1712" y1="1776" y2="1824" x1="1712" />
            <wire x2="1808" y1="560" y2="560" x1="1712" />
        </branch>
        <bustap x2="1616" y1="1776" y2="1776" x1="1712" />
        <bustap x2="1616" y1="1376" y2="1376" x1="1712" />
        <bustap x2="1616" y1="992" y2="992" x1="1712" />
        <bustap x2="1616" y1="608" y2="608" x1="1712" />
        <iomarker fontsize="28" x="1808" y="560" name="anodes(3:0)" orien="R0" />
        <iomarker fontsize="28" x="672" y="512" name="clk" orien="R270" />
        <iomarker fontsize="28" x="528" y="512" name="Enable190" orien="R270" />
    </sheet>
</drawing>