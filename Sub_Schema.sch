<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk" />
        <signal name="F0" />
        <signal name="DO_rdy" />
        <signal name="DO(7:0)" />
        <signal name="XLXN_8(3:0)" />
        <signal name="start_out" />
        <signal name="data_out(11:0)" />
        <signal name="command_out(3:0)" />
        <signal name="address_out(3:0)" />
        <signal name="E0" />
        <signal name="text_wy" />
        <signal name="XLXN_23(7:0)" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="VGA_RGB" />
        <signal name="BUSY" />
        <signal name="XLXN_46" />
        <signal name="XLXN_49" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="F0" />
        <port polarity="Input" name="DO_rdy" />
        <port polarity="Input" name="DO(7:0)" />
        <port polarity="Output" name="start_out" />
        <port polarity="Output" name="data_out(11:0)" />
        <port polarity="Output" name="command_out(3:0)" />
        <port polarity="Output" name="address_out(3:0)" />
        <port polarity="Input" name="E0" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_RGB" />
        <port polarity="Output" name="BUSY" />
        <blockdef name="Keyboard_Module">
            <timestamp>2021-4-23T7:53:13</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="Sawtooth_Module">
            <timestamp>2021-3-24T21:31:34</timestamp>
            <rect width="336" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <rect width="64" x="400" y="-108" height="24" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="Display_Module">
            <timestamp>2021-5-14T9:35:10</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="VGAtxt48x20">
            <timestamp>2008-9-4T0:59:2</timestamp>
            <rect width="304" x="64" y="-640" height="728" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-448" y2="-448" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="Keyboard_Module" name="XLXI_1">
            <blockpin signalname="F0" name="F0" />
            <blockpin signalname="E0" name="E0" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="DO_rdy" name="DO_rdy" />
            <blockpin signalname="DO(7:0)" name="DO(7:0)" />
            <blockpin signalname="XLXN_8(3:0)" name="tone_out(3:0)" />
        </block>
        <block symbolname="Sawtooth_Module" name="XLXI_2">
            <blockpin signalname="Clk" name="clk" />
            <blockpin signalname="XLXN_8(3:0)" name="tone_in(3:0)" />
            <blockpin signalname="start_out" name="start_out" />
            <blockpin signalname="data_out(11:0)" name="data_out(11:0)" />
            <blockpin signalname="command_out(3:0)" name="command_out(3:0)" />
            <blockpin signalname="address_out(3:0)" name="address_out(3:0)" />
        </block>
        <block symbolname="Display_Module" name="XLXI_3">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="E0" name="E0" />
            <blockpin signalname="F0" name="F0" />
            <blockpin signalname="DO_rdy" name="DO_rdy" />
            <blockpin signalname="XLXN_8(3:0)" name="tone_in(3:0)" />
            <blockpin signalname="text_wy" name="text_wy" />
            <blockpin signalname="XLXN_23(7:0)" name="text_out(7:0)" />
        </block>
        <block symbolname="VGAtxt48x20" name="XLXI_4">
            <blockpin signalname="XLXN_23(7:0)" name="Char_DI(7:0)" />
            <blockpin signalname="XLXN_46" name="Home" />
            <blockpin signalname="XLXN_46" name="NewLine" />
            <blockpin signalname="XLXN_46" name="Goto00" />
            <blockpin signalname="Clk" name="Clk_Sys" />
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin signalname="XLXN_49" name="CursorOn" />
            <blockpin signalname="XLXN_49" name="ScrollEn" />
            <blockpin signalname="XLXN_49" name="ScrollClear" />
            <blockpin signalname="BUSY" name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="VGA_RGB" name="VGA_RGB" />
            <blockpin signalname="text_wy" name="Char_WE" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="XLXN_46" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="XLXN_49" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="976" y="1408" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1712" y="1408" name="XLXI_2" orien="R0">
        </instance>
        <branch name="Clk">
            <wire x2="464" y1="1312" y2="1312" x1="448" />
            <wire x2="464" y1="1232" y2="1312" x1="464" />
            <wire x2="480" y1="1232" y2="1232" x1="464" />
            <wire x2="480" y1="1232" y2="1248" x1="480" />
            <wire x2="976" y1="1248" y2="1248" x1="480" />
            <wire x2="480" y1="560" y2="1008" x1="480" />
            <wire x2="1568" y1="1008" y2="1008" x1="480" />
            <wire x2="1568" y1="1008" y2="1184" x1="1568" />
            <wire x2="1712" y1="1184" y2="1184" x1="1568" />
            <wire x2="480" y1="1008" y2="1232" x1="480" />
            <wire x2="1648" y1="560" y2="560" x1="480" />
            <wire x2="1808" y1="560" y2="560" x1="1648" />
            <wire x2="1648" y1="560" y2="1040" x1="1648" />
            <wire x2="2544" y1="1040" y2="1040" x1="1648" />
            <wire x2="2608" y1="1040" y2="1040" x1="2544" />
            <wire x2="2544" y1="1040" y2="1104" x1="2544" />
            <wire x2="2608" y1="1104" y2="1104" x1="2544" />
        </branch>
        <branch name="F0">
            <wire x2="896" y1="1120" y2="1120" x1="640" />
            <wire x2="976" y1="1120" y2="1120" x1="896" />
            <wire x2="1808" y1="688" y2="688" x1="896" />
            <wire x2="896" y1="688" y2="1120" x1="896" />
        </branch>
        <branch name="DO_rdy">
            <wire x2="928" y1="1312" y2="1312" x1="704" />
            <wire x2="976" y1="1312" y2="1312" x1="928" />
            <wire x2="1808" y1="752" y2="752" x1="928" />
            <wire x2="928" y1="752" y2="1312" x1="928" />
        </branch>
        <branch name="DO(7:0)">
            <wire x2="976" y1="1376" y2="1376" x1="704" />
        </branch>
        <branch name="XLXN_8(3:0)">
            <wire x2="1488" y1="1120" y2="1120" x1="1360" />
            <wire x2="1488" y1="1120" y2="1376" x1="1488" />
            <wire x2="1712" y1="1376" y2="1376" x1="1488" />
            <wire x2="1808" y1="816" y2="816" x1="1488" />
            <wire x2="1488" y1="816" y2="1120" x1="1488" />
        </branch>
        <branch name="start_out">
            <wire x2="2256" y1="1184" y2="1184" x1="2176" />
        </branch>
        <branch name="data_out(11:0)">
            <wire x2="2256" y1="1248" y2="1248" x1="2176" />
        </branch>
        <branch name="command_out(3:0)">
            <wire x2="2256" y1="1312" y2="1312" x1="2176" />
        </branch>
        <branch name="address_out(3:0)">
            <wire x2="2256" y1="1376" y2="1376" x1="2176" />
        </branch>
        <instance x="1808" y="848" name="XLXI_3" orien="R0">
        </instance>
        <branch name="E0">
            <wire x2="864" y1="1184" y2="1184" x1="640" />
            <wire x2="976" y1="1184" y2="1184" x1="864" />
            <wire x2="1808" y1="624" y2="624" x1="864" />
            <wire x2="864" y1="624" y2="1184" x1="864" />
        </branch>
        <branch name="text_wy">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="560" type="branch" />
            <wire x2="2208" y1="560" y2="560" x1="2192" />
            <wire x2="2256" y1="560" y2="560" x1="2208" />
            <wire x2="2608" y1="496" y2="496" x1="2256" />
            <wire x2="2256" y1="496" y2="560" x1="2256" />
        </branch>
        <instance x="2608" y="1040" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_23(7:0)">
            <wire x2="2400" y1="816" y2="816" x1="2192" />
            <wire x2="2400" y1="432" y2="816" x1="2400" />
            <wire x2="2608" y1="432" y2="432" x1="2400" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="3072" y1="432" y2="432" x1="3040" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="3072" y1="496" y2="496" x1="3040" />
        </branch>
        <branch name="VGA_RGB">
            <wire x2="3072" y1="560" y2="560" x1="3040" />
        </branch>
        <branch name="BUSY">
            <wire x2="3072" y1="688" y2="688" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="640" y="1184" name="E0" orien="R180" />
        <iomarker fontsize="28" x="640" y="1120" name="F0" orien="R180" />
        <iomarker fontsize="28" x="704" y="1312" name="DO_rdy" orien="R180" />
        <iomarker fontsize="28" x="704" y="1376" name="DO(7:0)" orien="R180" />
        <iomarker fontsize="28" x="2256" y="1376" name="address_out(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2256" y="1312" name="command_out(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2256" y="1248" name="data_out(11:0)" orien="R0" />
        <iomarker fontsize="28" x="2256" y="1184" name="start_out" orien="R0" />
        <iomarker fontsize="28" x="448" y="1312" name="Clk" orien="R180" />
        <iomarker fontsize="28" x="3072" y="432" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="3072" y="496" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="3072" y="560" name="VGA_RGB" orien="R0" />
        <iomarker fontsize="28" x="3072" y="688" name="BUSY" orien="R0" />
        <instance x="2432" y="752" name="XLXI_5" orien="R0" />
        <branch name="XLXN_46">
            <wire x2="2608" y1="592" y2="592" x1="2496" />
            <wire x2="2496" y1="592" y2="608" x1="2496" />
            <wire x2="2496" y1="608" y2="624" x1="2496" />
            <wire x2="2576" y1="608" y2="608" x1="2496" />
            <wire x2="2576" y1="608" y2="656" x1="2576" />
            <wire x2="2608" y1="656" y2="656" x1="2576" />
            <wire x2="2576" y1="656" y2="720" x1="2576" />
            <wire x2="2608" y1="720" y2="720" x1="2576" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="2496" y1="944" y2="992" x1="2496" />
            <wire x2="2592" y1="992" y2="992" x1="2496" />
            <wire x2="2608" y1="816" y2="816" x1="2592" />
            <wire x2="2592" y1="816" y2="880" x1="2592" />
            <wire x2="2592" y1="880" y2="912" x1="2592" />
            <wire x2="2592" y1="912" y2="944" x1="2592" />
            <wire x2="2592" y1="944" y2="992" x1="2592" />
            <wire x2="2608" y1="944" y2="944" x1="2592" />
            <wire x2="2608" y1="880" y2="880" x1="2592" />
        </branch>
        <instance x="2432" y="944" name="XLXI_6" orien="R0" />
    </sheet>
</drawing>