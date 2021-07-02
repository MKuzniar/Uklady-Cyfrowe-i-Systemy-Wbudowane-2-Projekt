<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="Clk" />
        <signal name="XLXN_2(7:0)" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7(11:0)" />
        <signal name="XLXN_8(3:0)" />
        <signal name="XLXN_9(3:0)" />
        <signal name="SPI_MOSI" />
        <signal name="SPI_MISO" />
        <signal name="SPI_SCK" />
        <signal name="DAC_CS" />
        <signal name="DAC_CLR" />
        <signal name="SPI_SS_B" />
        <signal name="AMP_CS" />
        <signal name="AD_CONV" />
        <signal name="SF_CE0" />
        <signal name="FPGA_INIT_B" />
        <signal name="DACWrite_BUSY" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="VGA_RGB" />
        <signal name="VGA_BUSY" />
        <signal name="XLXN_36" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="Clk" />
        <port polarity="Output" name="SPI_MOSI" />
        <port polarity="Output" name="SPI_MISO" />
        <port polarity="Output" name="SPI_SCK" />
        <port polarity="Output" name="DAC_CS" />
        <port polarity="Output" name="DAC_CLR" />
        <port polarity="Output" name="SPI_SS_B" />
        <port polarity="Output" name="AMP_CS" />
        <port polarity="Output" name="AD_CONV" />
        <port polarity="Output" name="SF_CE0" />
        <port polarity="Output" name="FPGA_INIT_B" />
        <port polarity="Output" name="DACWrite_BUSY" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_RGB" />
        <port polarity="Output" name="VGA_BUSY" />
        <blockdef name="DACWrite">
            <timestamp>2009-10-4T16:3:32</timestamp>
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <line x2="448" y1="96" y2="96" x1="384" />
            <line x2="448" y1="-544" y2="-544" x1="384" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="384" y1="-480" y2="-480" x1="448" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="320" x="64" y="-576" height="760" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
        </blockdef>
        <blockdef name="PS2_Kbd">
            <timestamp>2008-9-19T9:9:36</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="Sub_Schema">
            <timestamp>2021-5-29T11:9:4</timestamp>
            <line x2="432" y1="160" y2="160" x1="368" />
            <line x2="432" y1="224" y2="224" x1="368" />
            <line x2="432" y1="288" y2="288" x1="368" />
            <line x2="432" y1="352" y2="352" x1="368" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <rect width="64" x="368" y="-220" height="24" />
            <line x2="432" y1="-208" y2="-208" x1="368" />
            <rect width="64" x="368" y="-140" height="24" />
            <line x2="432" y1="-128" y2="-128" x1="368" />
            <rect width="64" x="368" y="-60" height="24" />
            <line x2="432" y1="-48" y2="-48" x1="368" />
            <rect width="304" x="64" y="-320" height="704" />
        </blockdef>
        <block symbolname="PS2_Kbd" name="XLXI_3">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin signalname="XLXN_3" name="E0" />
            <blockpin signalname="XLXN_4" name="F0" />
            <blockpin signalname="XLXN_5" name="DO_Rdy" />
            <blockpin signalname="XLXN_2(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk" name="Clk_Sys" />
        </block>
        <block symbolname="DACWrite" name="XLXI_2">
            <blockpin name="Reset" />
            <blockpin signalname="XLXN_6" name="Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="XLXN_8(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_9(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_7(11:0)" name="DATA(11:0)" />
            <blockpin signalname="DAC_CLR" name="DAC_CLR" />
            <blockpin signalname="DAC_CS" name="DAC_CS" />
            <blockpin signalname="SPI_MOSI" name="SPI_MOSI" />
            <blockpin signalname="SPI_SCK" name="SPI_SCK" />
            <blockpin signalname="SPI_SS_B" name="SPI_SS_B" />
            <blockpin signalname="AMP_CS" name="AMP_CS" />
            <blockpin signalname="AD_CONV" name="AD_CONV" />
            <blockpin signalname="SF_CE0" name="SF_CE0" />
            <blockpin signalname="FPGA_INIT_B" name="FPGA_INIT_B" />
            <blockpin signalname="DACWrite_BUSY" name="Busy" />
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin signalname="Clk" name="Clk_Sys" />
        </block>
        <block symbolname="Sub_Schema" name="XLXI_4">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_4" name="F0" />
            <blockpin signalname="XLXN_5" name="DO_rdy" />
            <blockpin signalname="XLXN_2(7:0)" name="DO(7:0)" />
            <blockpin signalname="XLXN_3" name="E0" />
            <blockpin signalname="XLXN_6" name="start_out" />
            <blockpin signalname="XLXN_7(11:0)" name="data_out(11:0)" />
            <blockpin signalname="XLXN_8(3:0)" name="command_out(3:0)" />
            <blockpin signalname="XLXN_9(3:0)" name="address_out(3:0)" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="VGA_RGB" name="VGA_RGB" />
            <blockpin signalname="VGA_BUSY" name="BUSY" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="448" y="992" name="XLXI_3" orien="R0">
        </instance>
        <branch name="PS2_Clk">
            <wire x2="448" y1="768" y2="768" x1="400" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="448" y1="832" y2="832" x1="416" />
        </branch>
        <iomarker fontsize="28" x="416" y="832" name="PS2_Data" orien="R180" />
        <iomarker fontsize="28" x="400" y="768" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="336" y="1024" name="Clk" orien="R180" />
        <instance x="1776" y="1200" name="XLXI_2" orien="R0">
        </instance>
        <instance x="976" y="1008" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_2(7:0)">
            <wire x2="896" y1="768" y2="768" x1="832" />
            <wire x2="896" y1="768" y2="976" x1="896" />
            <wire x2="976" y1="976" y2="976" x1="896" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="880" y1="832" y2="832" x1="832" />
            <wire x2="880" y1="832" y2="848" x1="880" />
            <wire x2="976" y1="848" y2="848" x1="880" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="864" y1="896" y2="896" x1="832" />
            <wire x2="864" y1="784" y2="896" x1="864" />
            <wire x2="976" y1="784" y2="784" x1="864" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="880" y1="960" y2="960" x1="832" />
            <wire x2="880" y1="912" y2="960" x1="880" />
            <wire x2="976" y1="912" y2="912" x1="880" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1584" y1="720" y2="720" x1="1408" />
            <wire x2="1584" y1="656" y2="720" x1="1584" />
            <wire x2="1776" y1="656" y2="656" x1="1584" />
        </branch>
        <branch name="XLXN_7(11:0)">
            <wire x2="1584" y1="800" y2="800" x1="1408" />
            <wire x2="1584" y1="800" y2="848" x1="1584" />
            <wire x2="1776" y1="848" y2="848" x1="1584" />
        </branch>
        <branch name="XLXN_9(3:0)">
            <wire x2="1712" y1="960" y2="960" x1="1408" />
            <wire x2="1776" y1="784" y2="784" x1="1712" />
            <wire x2="1712" y1="784" y2="960" x1="1712" />
        </branch>
        <branch name="XLXN_8(3:0)">
            <wire x2="1632" y1="880" y2="880" x1="1408" />
            <wire x2="1776" y1="720" y2="720" x1="1632" />
            <wire x2="1632" y1="720" y2="880" x1="1632" />
        </branch>
        <branch name="Clk">
            <wire x2="432" y1="1024" y2="1024" x1="336" />
            <wire x2="432" y1="1024" y2="1456" x1="432" />
            <wire x2="1760" y1="1456" y2="1456" x1="432" />
            <wire x2="896" y1="656" y2="656" x1="432" />
            <wire x2="896" y1="656" y2="720" x1="896" />
            <wire x2="976" y1="720" y2="720" x1="896" />
            <wire x2="432" y1="656" y2="896" x1="432" />
            <wire x2="448" y1="896" y2="896" x1="432" />
            <wire x2="432" y1="896" y2="960" x1="432" />
            <wire x2="448" y1="960" y2="960" x1="432" />
            <wire x2="432" y1="960" y2="1024" x1="432" />
            <wire x2="1776" y1="1296" y2="1296" x1="1760" />
            <wire x2="1760" y1="1296" y2="1360" x1="1760" />
            <wire x2="1760" y1="1360" y2="1456" x1="1760" />
            <wire x2="1776" y1="1360" y2="1360" x1="1760" />
        </branch>
        <branch name="SPI_MOSI">
            <wire x2="2256" y1="656" y2="656" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2256" y="656" name="SPI_MOSI" orien="R0" />
        <branch name="SPI_MISO">
            <wire x2="2256" y1="720" y2="720" x1="2224" />
        </branch>
        <branch name="SPI_SCK">
            <wire x2="2256" y1="784" y2="784" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2256" y="784" name="SPI_SCK" orien="R0" />
        <branch name="DAC_CS">
            <wire x2="2256" y1="848" y2="848" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2256" y="848" name="DAC_CS" orien="R0" />
        <branch name="DAC_CLR">
            <wire x2="2256" y1="912" y2="912" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2256" y="912" name="DAC_CLR" orien="R0" />
        <iomarker fontsize="28" x="2256" y="720" name="SPI_MISO" orien="R0" />
        <branch name="SPI_SS_B">
            <wire x2="2256" y1="976" y2="976" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2256" y="976" name="SPI_SS_B" orien="R0" />
        <branch name="AMP_CS">
            <wire x2="2256" y1="1040" y2="1040" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2256" y="1040" name="AMP_CS" orien="R0" />
        <branch name="AD_CONV">
            <wire x2="2256" y1="1104" y2="1104" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2256" y="1104" name="AD_CONV" orien="R0" />
        <branch name="SF_CE0">
            <wire x2="2256" y1="1168" y2="1168" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2256" y="1168" name="SF_CE0" orien="R0" />
        <branch name="FPGA_INIT_B">
            <wire x2="2256" y1="1232" y2="1232" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2256" y="1232" name="FPGA_INIT_B" orien="R0" />
        <branch name="DACWrite_BUSY">
            <wire x2="2256" y1="1296" y2="1296" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2256" y="1296" name="DACWrite_BUSY" orien="R0" />
        <branch name="VGA_BUSY">
            <wire x2="1424" y1="1360" y2="1360" x1="1408" />
            <wire x2="1488" y1="1360" y2="1360" x1="1424" />
            <wire x2="1488" y1="1360" y2="1648" x1="1488" />
            <wire x2="2256" y1="1648" y2="1648" x1="1488" />
        </branch>
        <branch name="VGA_RGB">
            <wire x2="1424" y1="1296" y2="1296" x1="1408" />
            <wire x2="1504" y1="1296" y2="1296" x1="1424" />
            <wire x2="1504" y1="1296" y2="1568" x1="1504" />
            <wire x2="2256" y1="1568" y2="1568" x1="1504" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="1424" y1="1232" y2="1232" x1="1408" />
            <wire x2="1744" y1="1232" y2="1232" x1="1424" />
            <wire x2="1744" y1="1232" y2="1504" x1="1744" />
            <wire x2="2256" y1="1504" y2="1504" x1="1744" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="1424" y1="1168" y2="1168" x1="1408" />
            <wire x2="1424" y1="1168" y2="1424" x1="1424" />
            <wire x2="2256" y1="1424" y2="1424" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="2256" y="1424" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="2256" y="1504" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="2256" y="1568" name="VGA_RGB" orien="R0" />
        <iomarker fontsize="28" x="2256" y="1648" name="VGA_BUSY" orien="R0" />
    </sheet>
</drawing>