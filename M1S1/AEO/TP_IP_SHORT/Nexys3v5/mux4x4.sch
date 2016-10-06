<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="I0(3:0)" />
        <signal name="I1(3:0)" />
        <signal name="I2(3:0)" />
        <signal name="I3(3:0)" />
        <signal name="O(3:0)" />
        <signal name="s(1:0)" />
        <signal name="I0(3)" />
        <signal name="I0(2)" />
        <signal name="I0(1)" />
        <signal name="I0(0)" />
        <signal name="I1(3)" />
        <signal name="I1(2)" />
        <signal name="I1(1)" />
        <signal name="I1(0)" />
        <signal name="I2(3)" />
        <signal name="I2(2)" />
        <signal name="I2(1)" />
        <signal name="I2(0)" />
        <signal name="I3(3)" />
        <signal name="I3(2)" />
        <signal name="I3(1)" />
        <signal name="I3(0)" />
        <signal name="s(1)" />
        <signal name="s(0)" />
        <signal name="O(3)" />
        <signal name="O(2)" />
        <signal name="O(1)" />
        <signal name="O(0)" />
        <signal name="XLXN_42" />
        <port polarity="Input" name="I0(3:0)" />
        <port polarity="Input" name="I1(3:0)" />
        <port polarity="Input" name="I2(3:0)" />
        <port polarity="Input" name="I3(3:0)" />
        <port polarity="Output" name="O(3:0)" />
        <port polarity="Input" name="s(1:0)" />
        <blockdef name="m4_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-416" y2="-416" x1="0" />
            <line x2="96" y1="-352" y2="-352" x1="0" />
            <line x2="96" y1="-288" y2="-288" x1="0" />
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-320" y2="-320" x1="320" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="176" />
            <line x2="176" y1="-208" y2="-96" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="224" />
            <line x2="224" y1="-216" y2="-32" x1="224" />
            <line x2="96" y1="-224" y2="-192" x1="256" />
            <line x2="256" y1="-416" y2="-224" x1="256" />
            <line x2="256" y1="-448" y2="-416" x1="96" />
            <line x2="96" y1="-192" y2="-448" x1="96" />
            <line x2="96" y1="-160" y2="-160" x1="128" />
            <line x2="128" y1="-200" y2="-160" x1="128" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="m4_1e" name="XLXI_1">
            <blockpin signalname="I0(3)" name="D0" />
            <blockpin signalname="I1(3)" name="D1" />
            <blockpin signalname="I2(3)" name="D2" />
            <blockpin signalname="I3(3)" name="D3" />
            <blockpin signalname="XLXN_42" name="E" />
            <blockpin signalname="s(0)" name="S0" />
            <blockpin signalname="s(1)" name="S1" />
            <blockpin signalname="O(3)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_2">
            <blockpin signalname="I0(2)" name="D0" />
            <blockpin signalname="I1(2)" name="D1" />
            <blockpin signalname="I2(2)" name="D2" />
            <blockpin signalname="I3(2)" name="D3" />
            <blockpin signalname="XLXN_42" name="E" />
            <blockpin signalname="s(0)" name="S0" />
            <blockpin signalname="s(1)" name="S1" />
            <blockpin signalname="O(2)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_3">
            <blockpin signalname="I0(1)" name="D0" />
            <blockpin signalname="I1(1)" name="D1" />
            <blockpin signalname="I2(1)" name="D2" />
            <blockpin signalname="I3(1)" name="D3" />
            <blockpin signalname="XLXN_42" name="E" />
            <blockpin signalname="s(0)" name="S0" />
            <blockpin signalname="s(1)" name="S1" />
            <blockpin signalname="O(1)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_4">
            <blockpin signalname="I0(0)" name="D0" />
            <blockpin signalname="I1(0)" name="D1" />
            <blockpin signalname="I2(0)" name="D2" />
            <blockpin signalname="I3(0)" name="D3" />
            <blockpin signalname="XLXN_42" name="E" />
            <blockpin signalname="s(0)" name="S0" />
            <blockpin signalname="s(1)" name="S1" />
            <blockpin signalname="O(0)" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_9">
            <blockpin signalname="XLXN_42" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="I0(3:0)">
            <wire x2="256" y1="288" y2="352" x1="256" />
            <wire x2="256" y1="352" y2="832" x1="256" />
            <wire x2="256" y1="832" y2="1328" x1="256" />
            <wire x2="256" y1="1328" y2="1808" x1="256" />
            <wire x2="256" y1="1808" y2="2096" x1="256" />
        </branch>
        <iomarker fontsize="28" x="256" y="288" name="I0(3:0)" orien="R270" />
        <branch name="I1(3:0)">
            <wire x2="448" y1="288" y2="416" x1="448" />
            <wire x2="448" y1="416" y2="896" x1="448" />
            <wire x2="448" y1="896" y2="1392" x1="448" />
            <wire x2="448" y1="1392" y2="1872" x1="448" />
            <wire x2="448" y1="1872" y2="2096" x1="448" />
        </branch>
        <iomarker fontsize="28" x="448" y="288" name="I1(3:0)" orien="R270" />
        <branch name="I2(3:0)">
            <wire x2="640" y1="288" y2="480" x1="640" />
            <wire x2="640" y1="480" y2="960" x1="640" />
            <wire x2="640" y1="960" y2="1456" x1="640" />
            <wire x2="640" y1="1456" y2="1936" x1="640" />
            <wire x2="640" y1="1936" y2="2096" x1="640" />
        </branch>
        <iomarker fontsize="28" x="640" y="288" name="I2(3:0)" orien="R270" />
        <branch name="I3(3:0)">
            <wire x2="832" y1="288" y2="544" x1="832" />
            <wire x2="832" y1="544" y2="1024" x1="832" />
            <wire x2="832" y1="1024" y2="1520" x1="832" />
            <wire x2="832" y1="1520" y2="2000" x1="832" />
            <wire x2="832" y1="2000" y2="2096" x1="832" />
        </branch>
        <iomarker fontsize="28" x="832" y="288" name="I3(3:0)" orien="R270" />
        <instance x="1104" y="2224" name="XLXI_4" orien="R0" />
        <instance x="1088" y="1744" name="XLXI_3" orien="R0" />
        <instance x="1088" y="1248" name="XLXI_2" orien="R0" />
        <instance x="1088" y="768" name="XLXI_1" orien="R0" />
        <branch name="O(3:0)">
            <wire x2="1632" y1="368" y2="448" x1="1632" />
            <wire x2="1632" y1="448" y2="928" x1="1632" />
            <wire x2="1632" y1="928" y2="1424" x1="1632" />
            <wire x2="1632" y1="1424" y2="1904" x1="1632" />
            <wire x2="1632" y1="1904" y2="2080" x1="1632" />
        </branch>
        <branch name="s(1:0)">
            <wire x2="960" y1="112" y2="112" x1="880" />
            <wire x2="1040" y1="112" y2="112" x1="960" />
            <wire x2="1248" y1="112" y2="112" x1="1040" />
        </branch>
        <bustap x2="352" y1="352" y2="352" x1="256" />
        <branch name="I0(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="720" y="352" type="branch" />
            <wire x2="720" y1="352" y2="352" x1="352" />
            <wire x2="1088" y1="352" y2="352" x1="720" />
        </branch>
        <bustap x2="352" y1="832" y2="832" x1="256" />
        <branch name="I0(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="720" y="832" type="branch" />
            <wire x2="720" y1="832" y2="832" x1="352" />
            <wire x2="1088" y1="832" y2="832" x1="720" />
        </branch>
        <bustap x2="352" y1="1328" y2="1328" x1="256" />
        <branch name="I0(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="720" y="1328" type="branch" />
            <wire x2="720" y1="1328" y2="1328" x1="352" />
            <wire x2="1088" y1="1328" y2="1328" x1="720" />
        </branch>
        <bustap x2="352" y1="1808" y2="1808" x1="256" />
        <branch name="I0(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="728" y="1808" type="branch" />
            <wire x2="728" y1="1808" y2="1808" x1="352" />
            <wire x2="1104" y1="1808" y2="1808" x1="728" />
        </branch>
        <bustap x2="544" y1="416" y2="416" x1="448" />
        <branch name="I1(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="768" y="416" type="branch" />
            <wire x2="768" y1="416" y2="416" x1="544" />
            <wire x2="1088" y1="416" y2="416" x1="768" />
        </branch>
        <bustap x2="544" y1="896" y2="896" x1="448" />
        <branch name="I1(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="768" y="896" type="branch" />
            <wire x2="768" y1="896" y2="896" x1="544" />
            <wire x2="1088" y1="896" y2="896" x1="768" />
        </branch>
        <bustap x2="544" y1="1392" y2="1392" x1="448" />
        <branch name="I1(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="784" y="1392" type="branch" />
            <wire x2="784" y1="1392" y2="1392" x1="544" />
            <wire x2="1088" y1="1392" y2="1392" x1="784" />
        </branch>
        <bustap x2="544" y1="1872" y2="1872" x1="448" />
        <branch name="I1(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="784" y="1872" type="branch" />
            <wire x2="784" y1="1872" y2="1872" x1="544" />
            <wire x2="1104" y1="1872" y2="1872" x1="784" />
        </branch>
        <bustap x2="736" y1="480" y2="480" x1="640" />
        <branch name="I2(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="912" y="480" type="branch" />
            <wire x2="912" y1="480" y2="480" x1="736" />
            <wire x2="1088" y1="480" y2="480" x1="912" />
        </branch>
        <bustap x2="736" y1="960" y2="960" x1="640" />
        <branch name="I2(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="912" y="960" type="branch" />
            <wire x2="912" y1="960" y2="960" x1="736" />
            <wire x2="1088" y1="960" y2="960" x1="912" />
        </branch>
        <bustap x2="736" y1="1456" y2="1456" x1="640" />
        <branch name="I2(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="912" y="1456" type="branch" />
            <wire x2="912" y1="1456" y2="1456" x1="736" />
            <wire x2="1088" y1="1456" y2="1456" x1="912" />
        </branch>
        <bustap x2="736" y1="1936" y2="1936" x1="640" />
        <branch name="I2(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="920" y="1936" type="branch" />
            <wire x2="920" y1="1936" y2="1936" x1="736" />
            <wire x2="1104" y1="1936" y2="1936" x1="920" />
        </branch>
        <bustap x2="928" y1="544" y2="544" x1="832" />
        <branch name="I3(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1008" y="544" type="branch" />
            <wire x2="1008" y1="544" y2="544" x1="928" />
            <wire x2="1088" y1="544" y2="544" x1="1008" />
        </branch>
        <bustap x2="928" y1="1024" y2="1024" x1="832" />
        <branch name="I3(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1008" y="1024" type="branch" />
            <wire x2="1008" y1="1024" y2="1024" x1="928" />
            <wire x2="1088" y1="1024" y2="1024" x1="1008" />
        </branch>
        <bustap x2="928" y1="1520" y2="1520" x1="832" />
        <branch name="I3(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1008" y="1520" type="branch" />
            <wire x2="1008" y1="1520" y2="1520" x1="928" />
            <wire x2="1088" y1="1520" y2="1520" x1="1008" />
        </branch>
        <bustap x2="928" y1="2000" y2="2000" x1="832" />
        <branch name="I3(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1016" y="2000" type="branch" />
            <wire x2="1016" y1="2000" y2="2000" x1="928" />
            <wire x2="1104" y1="2000" y2="2000" x1="1016" />
        </branch>
        <bustap x2="960" y1="112" y2="208" x1="960" />
        <branch name="s(1)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="960" y="272" type="branch" />
            <wire x2="960" y1="208" y2="272" x1="960" />
            <wire x2="960" y1="272" y2="672" x1="960" />
            <wire x2="1088" y1="672" y2="672" x1="960" />
            <wire x2="960" y1="672" y2="1152" x1="960" />
            <wire x2="1088" y1="1152" y2="1152" x1="960" />
            <wire x2="960" y1="1152" y2="1648" x1="960" />
            <wire x2="1088" y1="1648" y2="1648" x1="960" />
            <wire x2="960" y1="1648" y2="2128" x1="960" />
            <wire x2="1104" y1="2128" y2="2128" x1="960" />
        </branch>
        <bustap x2="1040" y1="112" y2="208" x1="1040" />
        <branch name="s(0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1040" y="272" type="branch" />
            <wire x2="1040" y1="208" y2="272" x1="1040" />
            <wire x2="1040" y1="272" y2="608" x1="1040" />
            <wire x2="1088" y1="608" y2="608" x1="1040" />
            <wire x2="1040" y1="608" y2="1088" x1="1040" />
            <wire x2="1088" y1="1088" y2="1088" x1="1040" />
            <wire x2="1040" y1="1088" y2="1584" x1="1040" />
            <wire x2="1088" y1="1584" y2="1584" x1="1040" />
            <wire x2="1040" y1="1584" y2="2064" x1="1040" />
            <wire x2="1104" y1="2064" y2="2064" x1="1040" />
        </branch>
        <bustap x2="1536" y1="448" y2="448" x1="1632" />
        <branch name="O(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1472" y="448" type="branch" />
            <wire x2="1472" y1="448" y2="448" x1="1408" />
            <wire x2="1536" y1="448" y2="448" x1="1472" />
        </branch>
        <bustap x2="1536" y1="928" y2="928" x1="1632" />
        <branch name="O(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1472" y="928" type="branch" />
            <wire x2="1472" y1="928" y2="928" x1="1408" />
            <wire x2="1536" y1="928" y2="928" x1="1472" />
        </branch>
        <bustap x2="1536" y1="1424" y2="1424" x1="1632" />
        <branch name="O(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1472" y="1424" type="branch" />
            <wire x2="1472" y1="1424" y2="1424" x1="1408" />
            <wire x2="1536" y1="1424" y2="1424" x1="1472" />
        </branch>
        <bustap x2="1536" y1="1904" y2="1904" x1="1632" />
        <branch name="O(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1480" y="1904" type="branch" />
            <wire x2="1480" y1="1904" y2="1904" x1="1424" />
            <wire x2="1536" y1="1904" y2="1904" x1="1480" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="880" y1="2192" y2="2192" x1="816" />
            <wire x2="1104" y1="2192" y2="2192" x1="880" />
            <wire x2="1088" y1="736" y2="736" x1="880" />
            <wire x2="880" y1="736" y2="1216" x1="880" />
            <wire x2="1088" y1="1216" y2="1216" x1="880" />
            <wire x2="880" y1="1216" y2="1712" x1="880" />
            <wire x2="1088" y1="1712" y2="1712" x1="880" />
            <wire x2="880" y1="1712" y2="2192" x1="880" />
        </branch>
        <instance x="816" y="2128" name="XLXI_9" orien="M90" />
        <iomarker fontsize="28" x="880" y="112" name="s(1:0)" orien="R180" />
        <iomarker fontsize="28" x="1632" y="2080" name="O(3:0)" orien="R90" />
    </sheet>
</drawing>