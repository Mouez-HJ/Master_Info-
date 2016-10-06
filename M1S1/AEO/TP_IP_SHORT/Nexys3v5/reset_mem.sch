<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="reset_homade" />
        <signal name="reset_mem" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_22" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset_homade" />
        <port polarity="Output" name="reset_mem" />
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
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <block symbolname="fd" name="XLXI_1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="reset_homade" name="D" />
            <blockpin signalname="XLXN_14" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_2">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_14" name="D" />
            <blockpin signalname="XLXN_22" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="XLXN_14" name="I" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="XLXN_22" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="reset_mem" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="880" y="1104" name="XLXI_1" orien="R0" />
        <instance x="1488" y="1088" name="XLXI_2" orien="R0" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="800" y="1168" type="branch" />
            <wire x2="688" y1="1264" y2="1264" x1="592" />
            <wire x2="880" y1="976" y2="976" x1="688" />
            <wire x2="688" y1="976" y2="1168" x1="688" />
            <wire x2="688" y1="1168" y2="1264" x1="688" />
            <wire x2="800" y1="1168" y2="1168" x1="688" />
            <wire x2="1344" y1="1168" y2="1168" x1="800" />
            <wire x2="1344" y1="960" y2="1168" x1="1344" />
            <wire x2="1488" y1="960" y2="960" x1="1344" />
        </branch>
        <branch name="reset_homade">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="752" y="848" type="branch" />
            <wire x2="752" y1="848" y2="848" x1="672" />
            <wire x2="880" y1="848" y2="848" x1="752" />
        </branch>
        <branch name="reset_mem">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3152" y="528" type="branch" />
            <wire x2="3152" y1="528" y2="528" x1="3088" />
            <wire x2="3264" y1="528" y2="528" x1="3152" />
        </branch>
        <iomarker fontsize="28" x="592" y="1264" name="clk" orien="R180" />
        <iomarker fontsize="28" x="672" y="848" name="reset_homade" orien="R180" />
        <iomarker fontsize="28" x="3264" y="528" name="reset_mem" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="2832" y1="496" y2="496" x1="1824" />
        </branch>
        <instance x="2832" y="624" name="XLXI_7" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="2352" y1="832" y2="832" x1="1872" />
            <wire x2="2352" y1="560" y2="832" x1="2352" />
            <wire x2="2832" y1="560" y2="560" x1="2352" />
        </branch>
        <instance x="1600" y="528" name="XLXI_5" orien="R0" />
        <branch name="XLXN_14">
            <wire x2="1440" y1="848" y2="848" x1="1264" />
            <wire x2="1600" y1="496" y2="496" x1="1440" />
            <wire x2="1440" y1="496" y2="832" x1="1440" />
            <wire x2="1440" y1="832" y2="848" x1="1440" />
            <wire x2="1488" y1="832" y2="832" x1="1440" />
        </branch>
    </sheet>
</drawing>