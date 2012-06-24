<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="105" name="Beschreib" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="BGA-Top" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="BD-Top" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="no" active="no"/>
<layer number="201" name="201bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="7" fill="1" visible="yes" active="yes"/>
<layer number="251" name="SMDround" color="7" fill="1" visible="yes" active="yes"/>
<layer number="254" name="OrgLBR" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="frames">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="TABL_L">
<wire x1="0" y1="0" x2="401.32" y2="0" width="0.4064" layer="94"/>
<wire x1="401.32" y1="0" x2="401.32" y2="266.7" width="0.4064" layer="94"/>
<wire x1="401.32" y1="266.7" x2="0" y2="266.7" width="0.4064" layer="94"/>
<wire x1="0" y1="266.7" x2="0" y2="0" width="0.4064" layer="94"/>
</symbol>
<symbol name="DOCFIELD">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94" font="vector">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94" font="vector">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94" font="vector">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94" font="vector">&gt;SHEET</text>
<text x="88.9" y="11.43" size="2.54" layer="94" font="vector">REV:</text>
<text x="1.27" y="19.05" size="2.54" layer="94" font="vector">TITLE:</text>
<text x="1.27" y="11.43" size="2.54" layer="94" font="vector">Document Number:</text>
<text x="17.78" y="19.05" size="2.54" layer="94" font="vector">&gt;DRAWING_NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="TABL_L" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
401 x 266 mm, landscape</description>
<gates>
<gate name="G$1" symbol="TABL_L" x="0" y="0"/>
<gate name="G$2" symbol="DOCFIELD" x="299.72" y="0" addlevel="must"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-molex">
<description>&lt;b&gt;Molex Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="22-23-2031">
<description>.100" (2.54mm) Center Header - 3 Pin</description>
<wire x1="-3.81" y1="3.175" x2="3.81" y2="3.175" width="0.254" layer="21"/>
<wire x1="3.81" y1="3.175" x2="3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-3.175" width="0.254" layer="21"/>
<wire x1="3.81" y1="-3.175" x2="-3.81" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-3.175" x2="-3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="3.175" width="0.254" layer="21"/>
<wire x1="-3.81" y1="1.27" x2="3.81" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="1" shape="long" rot="R90"/>
<pad name="2" x="0" y="0" drill="1" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="0" drill="1" shape="long" rot="R90"/>
<text x="-3.81" y="3.81" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-5.08" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="22-23-2021">
<description>.100" (2.54mm) Center Headers - 2 Pin</description>
<wire x1="-2.54" y1="3.175" x2="2.54" y2="3.175" width="0.254" layer="21"/>
<wire x1="2.54" y1="3.175" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-3.175" width="0.254" layer="21"/>
<wire x1="2.54" y1="-3.175" x2="-2.54" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-3.175" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="3.175" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="1" shape="long" rot="R90"/>
<text x="-2.54" y="3.81" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-5.08" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="70543-07">
<description>&lt;b&gt;C-Grid SL Connector&lt;/b&gt;&lt;p&gt;
 vertical, 7 pin</description>
<wire x1="10.16" y1="-2.8575" x2="10.16" y2="2.8575" width="0.254" layer="21"/>
<wire x1="10.16" y1="2.8575" x2="-10.16" y2="2.8575" width="0.254" layer="21"/>
<wire x1="-10.16" y1="2.8575" x2="-10.16" y2="-2.8575" width="0.254" layer="21"/>
<wire x1="-10.16" y1="-2.8575" x2="-3.4925" y2="-2.8575" width="0.254" layer="21"/>
<wire x1="-3.4925" y1="-2.8575" x2="-3.4925" y2="-3.81" width="0.254" layer="21"/>
<wire x1="-3.4925" y1="-3.81" x2="3.4925" y2="-3.81" width="0.254" layer="21"/>
<wire x1="3.4925" y1="-3.81" x2="3.4925" y2="-2.8575" width="0.254" layer="21"/>
<wire x1="3.4925" y1="-2.8575" x2="10.16" y2="-2.8575" width="0.254" layer="21"/>
<wire x1="-9.525" y1="2.2225" x2="-9.525" y2="-2.2225" width="0.0508" layer="51"/>
<wire x1="9.525" y1="2.2225" x2="9.525" y2="-2.2225" width="0.0508" layer="51"/>
<wire x1="-9.525" y1="2.2225" x2="9.525" y2="2.2225" width="0.0508" layer="51"/>
<wire x1="-9.525" y1="-2.2225" x2="-2.8575" y2="-2.2225" width="0.0508" layer="51"/>
<wire x1="-2.8575" y1="-2.2225" x2="2.8575" y2="-2.2225" width="0.0508" layer="51"/>
<wire x1="2.8575" y1="-2.2225" x2="9.525" y2="-2.2225" width="0.0508" layer="51"/>
<wire x1="2.8575" y1="-3.175" x2="-2.8575" y2="-3.175" width="0.0508" layer="51"/>
<wire x1="-2.8575" y1="-2.2225" x2="-2.8575" y2="-3.175" width="0.0508" layer="51"/>
<wire x1="2.8575" y1="-2.2225" x2="2.8575" y2="-3.175" width="0.0508" layer="51"/>
<pad name="3" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="7.62" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-10.795" y="-2.54" size="1.016" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-9.8425" y="3.4925" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<text x="-9.2075" y="-1.5875" size="1.016" layer="51" ratio="10">1</text>
<rectangle x1="-5.3181" y1="-0.2381" x2="-4.8419" y2="0.2381" layer="51"/>
<rectangle x1="-7.8581" y1="-0.2381" x2="-7.3819" y2="0.2381" layer="51"/>
<rectangle x1="-0.2381" y1="-0.2381" x2="0.2381" y2="0.2381" layer="51"/>
<rectangle x1="-2.7781" y1="-0.2381" x2="-2.3019" y2="0.2381" layer="51"/>
<rectangle x1="4.8419" y1="-0.2381" x2="5.3181" y2="0.2381" layer="51"/>
<rectangle x1="2.3019" y1="-0.2381" x2="2.7781" y2="0.2381" layer="51"/>
<rectangle x1="7.3819" y1="-0.2381" x2="7.8581" y2="0.2381" layer="51"/>
</package>
<package name="70553-07">
<description>&lt;b&gt;C-Grid SL Connector&lt;/b&gt;&lt;p&gt;
 right angle, 7 pin</description>
<wire x1="10.0013" y1="5.8738" x2="4.1275" y2="5.8738" width="0.254" layer="21"/>
<wire x1="4.1275" y1="5.8738" x2="-10.0013" y2="5.8738" width="0.254" layer="21"/>
<wire x1="-10.0013" y1="5.8738" x2="-10.0013" y2="-5.715" width="0.254" layer="21"/>
<wire x1="-10.0013" y1="-5.715" x2="10.0013" y2="-5.715" width="0.254" layer="21"/>
<wire x1="10.0013" y1="-5.715" x2="10.0013" y2="5.8738" width="0.254" layer="21"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-1.27" y1="-3.175" x2="1.27" y2="-3.175" width="0.254" layer="21"/>
<wire x1="1.27" y1="-3.175" x2="1.27" y2="2.54" width="0.254" layer="21"/>
<wire x1="-4.1275" y1="5.8737" x2="-4.1275" y2="2.54" width="0.254" layer="21"/>
<wire x1="-4.1275" y1="2.54" x2="-3.175" y2="2.54" width="0.254" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-1.27" y2="2.54" width="0.254" layer="21"/>
<wire x1="1.27" y1="2.54" x2="3.175" y2="2.54" width="0.254" layer="21"/>
<wire x1="3.175" y1="2.54" x2="4.1275" y2="2.54" width="0.254" layer="21"/>
<wire x1="4.1275" y1="2.54" x2="4.1275" y2="5.8738" width="0.254" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-3.175" y2="3.175" width="0.254" layer="21"/>
<wire x1="-3.175" y1="3.175" x2="-1.905" y2="4.445" width="0.254" layer="21" curve="-90"/>
<wire x1="-1.905" y1="4.445" x2="1.905" y2="4.445" width="0.254" layer="21"/>
<wire x1="1.905" y1="4.445" x2="3.175" y2="3.175" width="0.254" layer="21" curve="-90"/>
<wire x1="3.175" y1="3.175" x2="3.175" y2="2.54" width="0.254" layer="21"/>
<wire x1="-8.255" y1="-6.35" x2="-6.985" y2="-6.35" width="0.127" layer="51"/>
<wire x1="-6.985" y1="-6.35" x2="-5.715" y2="-6.35" width="0.254" layer="51"/>
<wire x1="-6.985" y1="-6.35" x2="-6.985" y2="-7.6835" width="0.254" layer="51"/>
<wire x1="-6.985" y1="-7.6835" x2="-6.731" y2="-7.9375" width="0.254" layer="51" curve="90"/>
<wire x1="-5.715" y1="-6.35" x2="-5.715" y2="-7.6835" width="0.254" layer="51"/>
<wire x1="-5.715" y1="-7.6835" x2="-5.969" y2="-7.9375" width="0.254" layer="51" curve="-90"/>
<wire x1="-5.969" y1="-7.9375" x2="-6.731" y2="-7.9375" width="0.254" layer="51"/>
<wire x1="-5.715" y1="-6.35" x2="-4.445" y2="-6.35" width="0.127" layer="51"/>
<wire x1="-4.445" y1="-6.35" x2="-3.175" y2="-6.35" width="0.254" layer="51"/>
<wire x1="-4.445" y1="-6.35" x2="-4.445" y2="-7.6835" width="0.254" layer="51"/>
<wire x1="-4.445" y1="-7.6835" x2="-4.191" y2="-7.9375" width="0.254" layer="51" curve="90"/>
<wire x1="-3.175" y1="-6.35" x2="-3.175" y2="-7.6835" width="0.254" layer="51"/>
<wire x1="-3.175" y1="-7.6835" x2="-3.429" y2="-7.9375" width="0.254" layer="51" curve="-90"/>
<wire x1="-3.429" y1="-7.9375" x2="-4.191" y2="-7.9375" width="0.254" layer="51"/>
<wire x1="-3.175" y1="-6.35" x2="-1.905" y2="-6.35" width="0.127" layer="51"/>
<wire x1="-1.905" y1="-6.35" x2="-0.635" y2="-6.35" width="0.254" layer="51"/>
<wire x1="-1.905" y1="-6.35" x2="-1.905" y2="-7.6835" width="0.254" layer="51"/>
<wire x1="-1.905" y1="-7.6835" x2="-1.651" y2="-7.9375" width="0.254" layer="51" curve="90"/>
<wire x1="-0.635" y1="-6.35" x2="-0.635" y2="-7.6835" width="0.254" layer="51"/>
<wire x1="-0.635" y1="-7.6835" x2="-0.889" y2="-7.9375" width="0.254" layer="51" curve="-90"/>
<wire x1="-0.889" y1="-7.9375" x2="-1.651" y2="-7.9375" width="0.254" layer="51"/>
<wire x1="-0.635" y1="-6.35" x2="0.635" y2="-6.35" width="0.127" layer="51"/>
<wire x1="0.635" y1="-6.35" x2="1.905" y2="-6.35" width="0.254" layer="51"/>
<wire x1="0.635" y1="-6.35" x2="0.635" y2="-7.6835" width="0.254" layer="51"/>
<wire x1="0.635" y1="-7.6835" x2="0.889" y2="-7.9375" width="0.254" layer="51" curve="90"/>
<wire x1="1.905" y1="-6.35" x2="1.905" y2="-7.6835" width="0.254" layer="51"/>
<wire x1="1.905" y1="-7.6835" x2="1.651" y2="-7.9375" width="0.254" layer="51" curve="-90"/>
<wire x1="1.651" y1="-7.9375" x2="0.889" y2="-7.9375" width="0.254" layer="51"/>
<wire x1="1.905" y1="-6.35" x2="3.175" y2="-6.35" width="0.127" layer="51"/>
<wire x1="3.175" y1="-6.35" x2="4.445" y2="-6.35" width="0.254" layer="51"/>
<wire x1="3.175" y1="-6.35" x2="3.175" y2="-7.6835" width="0.254" layer="51"/>
<wire x1="3.175" y1="-7.6835" x2="3.429" y2="-7.9375" width="0.254" layer="51" curve="90"/>
<wire x1="4.445" y1="-6.35" x2="4.445" y2="-7.6835" width="0.254" layer="51"/>
<wire x1="4.445" y1="-7.6835" x2="4.191" y2="-7.9375" width="0.254" layer="51" curve="-90"/>
<wire x1="4.191" y1="-7.9375" x2="3.429" y2="-7.9375" width="0.254" layer="51"/>
<wire x1="4.445" y1="-6.35" x2="5.715" y2="-6.35" width="0.127" layer="51"/>
<wire x1="5.715" y1="-6.35" x2="6.985" y2="-6.35" width="0.254" layer="51"/>
<wire x1="5.715" y1="-6.35" x2="5.715" y2="-7.6835" width="0.254" layer="51"/>
<wire x1="5.715" y1="-7.6835" x2="5.969" y2="-7.9375" width="0.254" layer="51" curve="90"/>
<wire x1="6.985" y1="-6.35" x2="6.985" y2="-7.6835" width="0.254" layer="51"/>
<wire x1="6.985" y1="-7.6835" x2="6.731" y2="-7.9375" width="0.254" layer="51" curve="-90"/>
<wire x1="6.731" y1="-7.9375" x2="5.969" y2="-7.9375" width="0.254" layer="51"/>
<wire x1="6.985" y1="-6.35" x2="8.255" y2="-6.35" width="0.127" layer="51"/>
<wire x1="-9.2075" y1="-5.715" x2="-9.2075" y2="-7.9375" width="0.254" layer="51"/>
<wire x1="-8.255" y1="-6.35" x2="-8.255" y2="-7.6835" width="0.254" layer="51"/>
<wire x1="-8.255" y1="-7.6835" x2="-8.509" y2="-7.9375" width="0.254" layer="51" curve="-90"/>
<wire x1="-8.509" y1="-7.9375" x2="-9.2075" y2="-7.9375" width="0.254" layer="51"/>
<wire x1="8.255" y1="-6.35" x2="8.255" y2="-7.6835" width="0.254" layer="51"/>
<wire x1="8.255" y1="-7.6835" x2="8.509" y2="-7.9375" width="0.254" layer="51" curve="90"/>
<wire x1="8.509" y1="-7.9375" x2="9.2075" y2="-7.9375" width="0.254" layer="51"/>
<wire x1="9.2075" y1="-7.9375" x2="9.2075" y2="-6.35" width="0.254" layer="51"/>
<wire x1="9.2075" y1="-6.35" x2="9.2075" y2="-5.715" width="0.254" layer="51"/>
<wire x1="8.255" y1="-6.35" x2="9.2075" y2="-6.35" width="0.254" layer="51"/>
<pad name="2" x="-5.08" y="-7.62" drill="1.0922" shape="long" rot="R90"/>
<pad name="1" x="-7.62" y="-7.62" drill="1.0922" shape="long" rot="R90"/>
<pad name="3" x="-2.54" y="-7.62" drill="1.0922" shape="long" rot="R90"/>
<pad name="4" x="0" y="-7.62" drill="1.0922" shape="long" rot="R90"/>
<pad name="5" x="2.54" y="-7.62" drill="1.0922" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="-7.62" drill="1.0922" shape="long" rot="R90"/>
<pad name="7" x="7.62" y="-7.62" drill="1.0922" shape="long" rot="R90"/>
<text x="-10.4775" y="-5.715" size="1.016" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="11.7475" y="-5.715" size="0.8128" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-7.9375" y1="-7.62" x2="-7.3025" y2="-6.35" layer="51"/>
<rectangle x1="-5.3975" y1="-7.62" x2="-4.7625" y2="-6.35" layer="51"/>
<rectangle x1="-2.8575" y1="-7.62" x2="-2.2225" y2="-6.35" layer="51"/>
<rectangle x1="-0.3175" y1="-7.62" x2="0.3175" y2="-6.35" layer="51"/>
<rectangle x1="2.2225" y1="-7.62" x2="2.8575" y2="-6.35" layer="51"/>
<rectangle x1="4.7625" y1="-7.62" x2="5.3975" y2="-6.35" layer="51"/>
<rectangle x1="7.3025" y1="-7.62" x2="7.9375" y2="-6.35" layer="51"/>
<polygon width="0.0508" layer="21">
<vertex x="-9.525" y="5.8738"/>
<vertex x="-9.0487" y="3.9689"/>
<vertex x="-8.5725" y="5.8738"/>
</polygon>
</package>
<package name="74099-07">
<description>&lt;b&gt;C-Grid SL Connector&lt;/b&gt;&lt;p&gt;
 vertical SMD, 7 pin</description>
<wire x1="10.16" y1="-2.8575" x2="10.16" y2="2.8575" width="0.254" layer="21"/>
<wire x1="10.16" y1="2.8575" x2="-10.16" y2="2.8575" width="0.254" layer="21"/>
<wire x1="-10.16" y1="2.8575" x2="-10.16" y2="-2.8575" width="0.254" layer="21"/>
<wire x1="-10.16" y1="-2.8575" x2="-3.4925" y2="-2.8575" width="0.254" layer="21"/>
<wire x1="-3.4925" y1="-2.8575" x2="-3.4925" y2="-3.81" width="0.254" layer="21"/>
<wire x1="-3.4925" y1="-3.81" x2="3.4925" y2="-3.81" width="0.254" layer="21"/>
<wire x1="3.4925" y1="-3.81" x2="3.4925" y2="-2.8575" width="0.254" layer="21"/>
<wire x1="3.4925" y1="-2.8575" x2="10.16" y2="-2.8575" width="0.254" layer="21"/>
<wire x1="-9.525" y1="2.2225" x2="-9.525" y2="-2.2225" width="0.0508" layer="51"/>
<wire x1="9.525" y1="2.2225" x2="9.525" y2="-2.2225" width="0.0508" layer="51"/>
<wire x1="-9.525" y1="2.2225" x2="9.525" y2="2.2225" width="0.0508" layer="51"/>
<wire x1="-9.525" y1="-2.2225" x2="-2.8575" y2="-2.2225" width="0.0508" layer="51"/>
<wire x1="-2.8575" y1="-2.2225" x2="2.8575" y2="-2.2225" width="0.0508" layer="51"/>
<wire x1="2.8575" y1="-2.2225" x2="9.525" y2="-2.2225" width="0.0508" layer="51"/>
<wire x1="2.8575" y1="-3.175" x2="-2.8575" y2="-3.175" width="0.0508" layer="51"/>
<wire x1="-2.8575" y1="-2.2225" x2="-2.8575" y2="-3.175" width="0.0508" layer="51"/>
<wire x1="2.8575" y1="-2.2225" x2="2.8575" y2="-3.175" width="0.0508" layer="51"/>
<smd name="5" x="2.54" y="-2.2225" dx="3.175" dy="1.27" layer="1" rot="R270"/>
<smd name="4" x="0" y="2.2225" dx="3.175" dy="1.27" layer="1" rot="R270"/>
<smd name="3" x="-2.54" y="-2.2225" dx="3.175" dy="1.27" layer="1" rot="R270"/>
<smd name="2" x="-5.08" y="2.2225" dx="3.175" dy="1.27" layer="1" rot="R270"/>
<smd name="1" x="-7.62" y="-2.2225" dx="3.175" dy="1.27" layer="1" rot="R270"/>
<smd name="6" x="5.08" y="2.2225" dx="3.175" dy="1.27" layer="1" rot="R270"/>
<smd name="7" x="7.62" y="-2.2225" dx="3.175" dy="1.27" layer="1" rot="R270"/>
<text x="-10.795" y="-2.54" size="1.016" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-9.2075" y="0.635" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<text x="-9.2075" y="-1.905" size="1.016" layer="51" ratio="10">1</text>
<rectangle x1="-2.7781" y1="-0.2381" x2="-2.3019" y2="0.2381" layer="51"/>
<rectangle x1="-5.3181" y1="-0.2381" x2="-4.8419" y2="0.2381" layer="51"/>
<rectangle x1="2.3019" y1="-0.2381" x2="2.7781" y2="0.2381" layer="51"/>
<rectangle x1="-0.2381" y1="-0.2381" x2="0.2381" y2="0.2381" layer="51"/>
<rectangle x1="-7.8581" y1="-0.2381" x2="-7.3819" y2="0.2381" layer="51"/>
<rectangle x1="4.8419" y1="-0.2381" x2="5.3181" y2="0.2381" layer="51"/>
<rectangle x1="7.3819" y1="-0.2381" x2="7.8581" y2="0.2381" layer="51"/>
</package>
<package name="15-91-07">
<description>&lt;b&gt;C-Grid SL Connector&lt;/b&gt;&lt;p&gt;
 right angle SMD, 7 pin</description>
<wire x1="10.0013" y1="5.0801" x2="-10.0013" y2="5.0801" width="0.254" layer="21"/>
<wire x1="-10.0013" y1="5.0801" x2="-10.0013" y2="2.54" width="0.254" layer="21"/>
<wire x1="-10.0013" y1="-0.9525" x2="-10.0013" y2="-6.35" width="0.254" layer="21"/>
<wire x1="-10.0013" y1="-6.35" x2="10.0013" y2="-6.35" width="0.254" layer="21"/>
<wire x1="10.0013" y1="-6.35" x2="10.0013" y2="-0.9525" width="0.254" layer="21"/>
<wire x1="10.0013" y1="2.54" x2="10.0013" y2="5.0801" width="0.254" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="-3.81" width="0.254" layer="51"/>
<wire x1="-1.27" y1="-3.81" x2="1.27" y2="-3.81" width="0.254" layer="51"/>
<wire x1="1.27" y1="-3.81" x2="1.27" y2="1.905" width="0.254" layer="51"/>
<wire x1="-4.1275" y1="5.08" x2="-4.1275" y2="1.905" width="0.254" layer="51"/>
<wire x1="-4.1275" y1="1.905" x2="-3.175" y2="1.905" width="0.254" layer="51"/>
<wire x1="-3.175" y1="1.905" x2="-1.27" y2="1.905" width="0.254" layer="51"/>
<wire x1="1.27" y1="1.905" x2="3.175" y2="1.905" width="0.254" layer="51"/>
<wire x1="3.175" y1="1.905" x2="4.1275" y2="1.905" width="0.254" layer="51"/>
<wire x1="4.1275" y1="1.905" x2="4.1275" y2="5.0801" width="0.254" layer="51"/>
<wire x1="-3.175" y1="1.905" x2="-3.175" y2="2.54" width="0.254" layer="51"/>
<wire x1="-3.175" y1="2.54" x2="-1.905" y2="3.81" width="0.254" layer="51" curve="-90"/>
<wire x1="-1.905" y1="3.81" x2="1.905" y2="3.81" width="0.254" layer="51"/>
<wire x1="1.905" y1="3.81" x2="3.175" y2="2.54" width="0.254" layer="51" curve="-90"/>
<wire x1="3.175" y1="2.54" x2="3.175" y2="1.905" width="0.254" layer="51"/>
<wire x1="-8.89" y1="-6.35" x2="-8.89" y2="-8.5725" width="0.254" layer="51"/>
<wire x1="-8.89" y1="-6.985" x2="-8.255" y2="-6.985" width="0.254" layer="51"/>
<wire x1="-6.985" y1="-6.985" x2="-5.715" y2="-6.985" width="0.254" layer="51"/>
<wire x1="-8.255" y1="-6.985" x2="-8.255" y2="-8.3185" width="0.254" layer="51"/>
<wire x1="-8.255" y1="-8.3185" x2="-8.509" y2="-8.5725" width="0.254" layer="51" curve="-90"/>
<wire x1="-8.509" y1="-8.5725" x2="-8.89" y2="-8.5725" width="0.254" layer="51"/>
<wire x1="-6.985" y1="-6.985" x2="-6.985" y2="-8.3185" width="0.254" layer="51"/>
<wire x1="-6.985" y1="-8.3185" x2="-6.731" y2="-8.5725" width="0.254" layer="51" curve="90"/>
<wire x1="-5.715" y1="-6.985" x2="-5.715" y2="-8.3185" width="0.254" layer="51"/>
<wire x1="-5.715" y1="-8.3185" x2="-5.969" y2="-8.5725" width="0.254" layer="51" curve="-90"/>
<wire x1="-5.969" y1="-8.5725" x2="-6.731" y2="-8.5725" width="0.254" layer="51"/>
<wire x1="-4.445" y1="-6.985" x2="-3.175" y2="-6.985" width="0.254" layer="51"/>
<wire x1="-4.445" y1="-6.985" x2="-4.445" y2="-8.3185" width="0.254" layer="51"/>
<wire x1="-4.445" y1="-8.3185" x2="-4.191" y2="-8.5725" width="0.254" layer="51" curve="90"/>
<wire x1="-3.175" y1="-6.985" x2="-3.175" y2="-8.3185" width="0.254" layer="51"/>
<wire x1="-3.175" y1="-8.3185" x2="-3.429" y2="-8.5725" width="0.254" layer="51" curve="-90"/>
<wire x1="-3.429" y1="-8.5725" x2="-4.191" y2="-8.5725" width="0.254" layer="51"/>
<wire x1="3.175" y1="-6.985" x2="4.445" y2="-6.985" width="0.254" layer="51"/>
<wire x1="3.175" y1="-6.985" x2="3.175" y2="-8.3185" width="0.254" layer="51"/>
<wire x1="3.175" y1="-8.3185" x2="3.429" y2="-8.5725" width="0.254" layer="51" curve="90"/>
<wire x1="4.445" y1="-6.985" x2="4.445" y2="-8.3185" width="0.254" layer="51"/>
<wire x1="4.445" y1="-8.3185" x2="4.191" y2="-8.5725" width="0.254" layer="51" curve="-90"/>
<wire x1="4.191" y1="-8.5725" x2="3.429" y2="-8.5725" width="0.254" layer="51"/>
<wire x1="8.89" y1="-8.5725" x2="8.89" y2="-6.985" width="0.254" layer="51"/>
<wire x1="8.89" y1="-6.985" x2="8.89" y2="-6.35" width="0.254" layer="51"/>
<wire x1="5.715" y1="-6.985" x2="6.985" y2="-6.985" width="0.254" layer="51"/>
<wire x1="8.255" y1="-6.985" x2="8.89" y2="-6.985" width="0.254" layer="51"/>
<wire x1="5.715" y1="-6.985" x2="5.715" y2="-8.3185" width="0.254" layer="51"/>
<wire x1="5.715" y1="-8.3185" x2="5.969" y2="-8.5725" width="0.254" layer="51" curve="90"/>
<wire x1="6.985" y1="-6.985" x2="6.985" y2="-8.3185" width="0.254" layer="51"/>
<wire x1="6.985" y1="-8.3185" x2="6.731" y2="-8.5725" width="0.254" layer="51" curve="-90"/>
<wire x1="6.731" y1="-8.5725" x2="5.969" y2="-8.5725" width="0.254" layer="51"/>
<wire x1="8.255" y1="-6.985" x2="8.255" y2="-8.3185" width="0.254" layer="51"/>
<wire x1="8.255" y1="-8.3185" x2="8.509" y2="-8.5725" width="0.254" layer="51" curve="90"/>
<wire x1="8.509" y1="-8.5725" x2="8.89" y2="-8.5725" width="0.254" layer="51"/>
<wire x1="-1.905" y1="-6.985" x2="-1.905" y2="-8.3185" width="0.254" layer="51"/>
<wire x1="-1.905" y1="-8.3185" x2="-1.651" y2="-8.5725" width="0.254" layer="51" curve="90"/>
<wire x1="-1.905" y1="-6.985" x2="-0.635" y2="-6.985" width="0.254" layer="51"/>
<wire x1="0.635" y1="-6.985" x2="1.905" y2="-6.985" width="0.254" layer="51"/>
<wire x1="-0.635" y1="-6.985" x2="-0.635" y2="-8.3185" width="0.254" layer="51"/>
<wire x1="-0.635" y1="-8.3185" x2="-0.889" y2="-8.5725" width="0.254" layer="51" curve="-90"/>
<wire x1="-0.889" y1="-8.5725" x2="-1.651" y2="-8.5725" width="0.254" layer="51"/>
<wire x1="0.635" y1="-6.985" x2="0.635" y2="-8.3185" width="0.254" layer="51"/>
<wire x1="0.635" y1="-8.3185" x2="0.889" y2="-8.5725" width="0.254" layer="51" curve="90.090301"/>
<wire x1="1.905" y1="-6.985" x2="1.905" y2="-8.3185" width="0.254" layer="51"/>
<wire x1="1.905" y1="-8.3185" x2="1.651" y2="-8.5725" width="0.254" layer="51" curve="-90"/>
<wire x1="1.651" y1="-8.5725" x2="0.889" y2="-8.5725" width="0.254" layer="51"/>
<wire x1="-10.0013" y1="2.54" x2="-10.0013" y2="-0.9525" width="0.254" layer="51"/>
<wire x1="10.0013" y1="2.54" x2="10.0013" y2="-0.9525" width="0.254" layer="51"/>
<wire x1="-8.255" y1="-6.985" x2="-6.985" y2="-6.985" width="0.254" layer="51"/>
<wire x1="-5.715" y1="-6.985" x2="-4.445" y2="-6.985" width="0.254" layer="51"/>
<wire x1="-3.175" y1="-6.985" x2="-1.905" y2="-6.985" width="0.254" layer="51"/>
<wire x1="-0.635" y1="-6.985" x2="0.635" y2="-6.985" width="0.254" layer="51"/>
<wire x1="1.905" y1="-6.985" x2="3.175" y2="-6.985" width="0.254" layer="51"/>
<wire x1="4.445" y1="-6.985" x2="5.715" y2="-6.985" width="0.254" layer="51"/>
<wire x1="6.985" y1="-6.985" x2="8.255" y2="-6.985" width="0.254" layer="51"/>
<smd name="1" x="-7.62" y="-10.795" dx="5.334" dy="1.651" layer="1" rot="R90"/>
<smd name="2" x="-5.08" y="-10.795" dx="5.334" dy="1.651" layer="1" rot="R90"/>
<smd name="3" x="-2.54" y="-10.795" dx="5.334" dy="1.651" layer="1" rot="R90"/>
<smd name="4" x="0" y="-10.795" dx="5.334" dy="1.651" layer="1" rot="R90"/>
<smd name="5" x="2.54" y="-10.795" dx="5.334" dy="1.651" layer="1" rot="R90"/>
<smd name="6" x="5.08" y="-10.795" dx="5.334" dy="1.651" layer="1" rot="R90"/>
<smd name="7" x="7.62" y="-10.795" dx="5.334" dy="1.651" layer="1" rot="R90"/>
<text x="-10.4775" y="-6.35" size="1.016" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="11.7475" y="-6.35" size="0.8128" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-7.9375" y1="-10.795" x2="-7.3025" y2="-6.985" layer="51"/>
<rectangle x1="-5.3975" y1="-10.795" x2="-4.7625" y2="-6.985" layer="51"/>
<rectangle x1="-2.8575" y1="-10.795" x2="-2.2225" y2="-6.985" layer="51"/>
<rectangle x1="2.2225" y1="-10.795" x2="2.8575" y2="-6.985" layer="51"/>
<rectangle x1="4.7625" y1="-10.795" x2="5.3975" y2="-6.985" layer="51"/>
<rectangle x1="7.3025" y1="-10.795" x2="7.9375" y2="-6.985" layer="51"/>
<rectangle x1="-0.3175" y1="-10.795" x2="0.3175" y2="-6.985" layer="51"/>
<hole x="-9.017" y="0.8382" drill="3.4036"/>
<hole x="9.017" y="0.8382" drill="3.4036"/>
<polygon width="0.2032" layer="21">
<vertex x="-9.525" y="5.08"/>
<vertex x="-9.0487" y="3.3338"/>
<vertex x="-8.5725" y="5.08"/>
</polygon>
</package>
</packages>
<symbols>
<symbol name="MV">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<text x="-0.762" y="1.397" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="M">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="22-23-2031" prefix="X">
<description>.100" (2.54mm) Center Header - 3 Pin</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="2.54" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="22-23-2031">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="22-23-2031" constant="no"/>
<attribute name="OC_FARNELL" value="1462950" constant="no"/>
<attribute name="OC_NEWARK" value="30C0862" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="22-23-2021" prefix="X">
<description>.100" (2.54mm) Center Header - 2 Pin</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="22-23-2021">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="22-23-2021" constant="no"/>
<attribute name="OC_FARNELL" value="1462926" constant="no"/>
<attribute name="OC_NEWARK" value="25C3832" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="C-GRID-07" prefix="X">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
wire to board 2.54 mm (0.100") pitch header</description>
<gates>
<gate name="-1" symbol="MV" x="2.54" y="0" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="2.54" y="-2.54" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="M" x="2.54" y="-5.08" addlevel="always" swaplevel="1"/>
<gate name="-4" symbol="M" x="2.54" y="-7.62" addlevel="always" swaplevel="1"/>
<gate name="-5" symbol="M" x="2.54" y="-10.16" addlevel="always" swaplevel="1"/>
<gate name="-6" symbol="M" x="2.54" y="-12.7" addlevel="always" swaplevel="1"/>
<gate name="-7" symbol="M" x="2.54" y="-15.24" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="-70543" package="70543-07">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-5" pin="S" pad="5"/>
<connect gate="-6" pin="S" pad="6"/>
<connect gate="-7" pin="S" pad="7"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="-70553" package="70553-07">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-5" pin="S" pad="5"/>
<connect gate="-6" pin="S" pad="6"/>
<connect gate="-7" pin="S" pad="7"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="-74099" package="74099-07">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-5" pin="S" pad="5"/>
<connect gate="-6" pin="S" pad="6"/>
<connect gate="-7" pin="S" pad="7"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="-15-91" package="15-91-07">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-5" pin="S" pad="5"/>
<connect gate="-6" pin="S" pad="6"/>
<connect gate="-7" pin="S" pad="7"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="avr-7">
<description>&lt;b&gt;AVR Devices&lt;/b&gt;&lt;p&gt;
Version 7 - August 1, 2011.&lt;br&gt;&lt;br&gt;
Added ATmega164P/324P/644P devices for DIP and TQFP.
&lt;p&gt;
Version 4 - March 11, 2008.&lt;br&gt;&lt;br&gt;
This library now includes ONLY ATMEL AVR microcontrollers.  It is the result of merging all other available device libraries available at http://www.cadsoft.de/download as of the time it was made.  In addition to the legacy AT90* devices, it includes most ATMEGA devices including the new 48/88/168, most ATTiny devices and a set of ISP and JTAG pin headers.&lt;p&gt;
Based on the following sources:&lt;p&gt;
&lt;ul&gt;
&lt;li&gt;www.atmel.com
&lt;li&gt; file at90smcu_v400.zip
&lt;li&gt;avr.lbr and atmel.lbr as provided by CadSoft
&lt;li&gt;avr-1.lbr by David Blundell
&lt;li&gt;avr-2.lbr by Boris Zalokar
&lt;li&gt;avr-3.lbr by Carson Reynolds
&lt;li&gt;attiny24_44_84.lbr by Pawel Szramowski (ATTiny24/44/84 devices)
&lt;li&gt;atmel.lbr by Bob Starr (ISP headers)
&lt;li&gt;moates_custom_parts.lbr (edge ISP)
&lt;li&gt;other misc sources
&lt;/ul&gt;
&lt;author&gt;Revised by David Blundell (blundar at gmail dot com) and others.&lt;/author&gt;
&lt;p&gt;
&lt;author&gt;Added Mega162, Tiny2313 John Lussmyer (cougar at casadelgato.com)&lt;/author&gt;
&lt;p&gt;
&lt;author&gt;Added XMega A1,A3,A4,D3,D4 John Lussmyer Aug 1, 2011(cougar at casadelgato.com)&lt;/author&gt;</description>
<packages>
<package name="AVR-ISP-6">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;&lt;p&gt; JTAG 6 Pin, 0.1" Straight</description>
<wire x1="-3.81" y1="2.54" x2="3.81" y2="2.54" width="0.254" layer="21"/>
<wire x1="3.81" y1="2.54" x2="3.81" y2="-2.54" width="0.254" layer="21"/>
<wire x1="3.81" y1="-2.54" x2="-3.81" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-2.54" x2="-3.81" y2="2.54" width="0.254" layer="21"/>
<pad name="1" x="-2.54" y="-1.27" drill="1.016" shape="square"/>
<pad name="2" x="-2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="0" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="0" y="1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="2.54" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="2.54" y="1.27" drill="1.016" shape="octagon"/>
<text x="-3.81" y="-4.445" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="3.175" size="1.27" layer="27" ratio="12">&gt;VALUE</text>
<rectangle x1="-2.794" y1="-1.524" x2="-2.286" y2="-1.016" layer="51"/>
<rectangle x1="-2.794" y1="1.016" x2="-2.286" y2="1.524" layer="51"/>
<rectangle x1="-0.254" y1="1.016" x2="0.254" y2="1.524" layer="51"/>
<rectangle x1="-0.254" y1="-1.524" x2="0.254" y2="-1.016" layer="51"/>
<rectangle x1="2.286" y1="1.016" x2="2.794" y2="1.524" layer="51"/>
<rectangle x1="2.286" y1="-1.524" x2="2.794" y2="-1.016" layer="51"/>
</package>
<package name="AVR-ISP-6R">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;&lt;p&gt; AVR ISP 6 Pin, 0.1" Right Angle</description>
<wire x1="3.81" y1="-3.175" x2="1.27" y2="-3.175" width="0.254" layer="21"/>
<wire x1="1.27" y1="-5.715" x2="3.81" y2="-5.715" width="0.254" layer="21"/>
<wire x1="3.81" y1="-5.715" x2="3.81" y2="-3.175" width="0.254" layer="21"/>
<wire x1="2.54" y1="-10.795" x2="2.54" y2="-6.35" width="0.762" layer="51"/>
<wire x1="1.27" y1="-3.175" x2="-1.27" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-1.27" y1="-5.715" x2="1.27" y2="-5.715" width="0.254" layer="21"/>
<wire x1="0" y1="-10.795" x2="0" y2="-6.35" width="0.762" layer="51"/>
<wire x1="-1.27" y1="-3.175" x2="-3.81" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-3.175" x2="-3.81" y2="-5.715" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-5.715" x2="-1.27" y2="-5.715" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-10.795" x2="-2.54" y2="-6.35" width="0.762" layer="51"/>
<pad name="2" x="-2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="0" y="1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="1" x="-2.54" y="-1.27" drill="1.016" shape="square"/>
<pad name="3" x="0" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="2.54" y="-1.27" drill="1.016" shape="octagon"/>
<text x="4.445" y="-1.27" size="1.27" layer="25" ratio="12" rot="R270">&gt;NAME</text>
<text x="-5.715" y="-1.27" size="1.27" layer="27" ratio="12" rot="R270">&gt;VALUE</text>
<rectangle x1="2.159" y1="-6.223" x2="2.921" y2="-5.715" layer="51" rot="R180"/>
<rectangle x1="-0.381" y1="-6.223" x2="0.381" y2="-5.715" layer="51" rot="R180"/>
<rectangle x1="-2.921" y1="-6.223" x2="-2.159" y2="-5.715" layer="51" rot="R180"/>
<rectangle x1="2.159" y1="-3.175" x2="2.921" y2="-2.159" layer="21" rot="R180"/>
<rectangle x1="-0.381" y1="-3.175" x2="0.381" y2="-2.159" layer="21" rot="R180"/>
<rectangle x1="2.159" y1="-0.381" x2="2.921" y2="0.381" layer="21" rot="R180"/>
<rectangle x1="2.159" y1="-2.159" x2="2.921" y2="-0.381" layer="51" rot="R180"/>
<rectangle x1="-0.381" y1="-2.159" x2="0.381" y2="-0.381" layer="51" rot="R180"/>
<rectangle x1="-0.381" y1="-0.381" x2="0.381" y2="0.381" layer="21" rot="R180"/>
<rectangle x1="-2.921" y1="-3.175" x2="-2.159" y2="-2.159" layer="21" rot="R180"/>
<rectangle x1="-2.921" y1="-0.381" x2="-2.159" y2="0.381" layer="21" rot="R180"/>
<rectangle x1="-2.921" y1="-2.159" x2="-2.159" y2="-0.381" layer="51" rot="R180"/>
</package>
</packages>
<symbols>
<symbol name="AVR-PDI">
<wire x1="-6.35" y1="-5.08" x2="6.35" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="6.35" y1="-5.08" x2="6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="6.35" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-1.905" y1="2.54" x2="-1.27" y2="2.54" width="1.016" layer="94"/>
<wire x1="-1.905" y1="-2.54" x2="-1.27" y2="-2.54" width="1.016" layer="94"/>
<wire x1="1.27" y1="2.54" x2="1.905" y2="2.54" width="1.016" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.905" y2="-2.54" width="1.016" layer="94"/>
<text x="-6.35" y="6.35" size="1.778" layer="95" ratio="10">&gt;NAME</text>
<text x="-6.35" y="-8.255" size="1.778" layer="94" ratio="10">AVR PDI</text>
<text x="7.62" y="-1.905" size="1.143" layer="94" ratio="10">CLOCK</text>
<text x="7.62" y="3.175" size="1.143" layer="94" ratio="10">DATA</text>
<text x="-11.43" y="3.175" size="1.143" layer="94" ratio="10">VCC</text>
<text x="-11.43" y="-1.905" size="1.143" layer="94" ratio="10">GND</text>
<pin name="5" x="5.08" y="-2.54" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="2" x="-5.08" y="2.54" visible="pad" length="short" direction="pas"/>
<pin name="1" x="5.08" y="2.54" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="6" x="-5.08" y="-2.54" visible="pad" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="AVR-PDI">
<description>AVR PDI programming interface connector</description>
<gates>
<gate name="G$1" symbol="AVR-PDI" x="0" y="0"/>
</gates>
<devices>
<device name="VERT" package="AVR-ISP-6">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="HORZ" package="AVR-ISP-6R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="atmel-avr32-michel">
<description>Atmel AVR32 Processors - v1.00&lt;p&gt;
&lt;p&gt;THIS LIBRARY IS PROVIDED AS IS AND WITHOUT WARRANTY OF ANY KIND, EXPRESSED OR IMPLIED.&lt;br&gt;
USE AT YOUR OWN RISK!&lt;p&gt;
&lt;author&gt;Copyright (C) 2010 Michel Catudal mcatudal@comcast.net&lt;br&gt;&lt;/author&gt;</description>
<packages>
<package name="TQFP100">
<description>Plastic &lt;b&gt;Thin Quad Flat Pack&lt;/b&gt;</description>
<wire x1="-7" y1="6.25" x2="-6.25" y2="7" width="0.2032" layer="21"/>
<wire x1="-6.25" y1="7" x2="6.75" y2="7" width="0.2032" layer="21"/>
<wire x1="6.75" y1="7" x2="7" y2="6.75" width="0.2032" layer="21"/>
<wire x1="7" y1="6.75" x2="7" y2="-6.75" width="0.2032" layer="21"/>
<wire x1="7" y1="-6.75" x2="6.75" y2="-7" width="0.2032" layer="21"/>
<wire x1="6.75" y1="-7" x2="-6.75" y2="-7" width="0.2032" layer="21"/>
<wire x1="-6.75" y1="-7" x2="-7" y2="-6.75" width="0.2032" layer="21"/>
<wire x1="-7" y1="-6.75" x2="-7" y2="6.25" width="0.2032" layer="21"/>
<circle x="-5.75" y="5.75" radius="0.5097" width="0" layer="21"/>
<smd name="1" x="-8" y="6" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="2" x="-8" y="5.5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="3" x="-8" y="5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="4" x="-8" y="4.5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="5" x="-8" y="4" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="6" x="-8" y="3.5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="7" x="-8" y="3" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="8" x="-8" y="2.5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="9" x="-8" y="2" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="10" x="-8" y="1.5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="11" x="-8" y="1" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="12" x="-8" y="0.5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="13" x="-8" y="0" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="14" x="-8" y="-0.5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="15" x="-8" y="-1" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="16" x="-8" y="-1.5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="17" x="-8" y="-2" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="18" x="-8" y="-2.5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="19" x="-8" y="-3" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="20" x="-8" y="-3.5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="21" x="-8" y="-4" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="22" x="-8" y="-4.5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="23" x="-8" y="-5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="24" x="-8" y="-5.5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="25" x="-8" y="-6" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="26" x="-6" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="27" x="-5.5" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="28" x="-5" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="29" x="-4.5" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="30" x="-4" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="31" x="-3.5" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="32" x="-3" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="33" x="-2.5" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="34" x="-2" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="35" x="-1.5" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="36" x="-1" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="37" x="-0.5" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="38" x="0" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="39" x="0.5" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="40" x="1" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="41" x="1.5" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="42" x="2" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="43" x="2.5" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="44" x="3" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="45" x="3.5" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="46" x="4" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="47" x="4.5" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="48" x="5" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="49" x="5.5" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="50" x="6" y="-8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="51" x="8" y="-6" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="52" x="8" y="-5.5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="53" x="8" y="-5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="54" x="8" y="-4.5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="55" x="8" y="-4" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="56" x="8" y="-3.5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="57" x="8" y="-3" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="58" x="8" y="-2.5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="59" x="8" y="-2" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="60" x="8" y="-1.5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="61" x="8" y="-1" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="62" x="8" y="-0.5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="63" x="8" y="0" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="64" x="8" y="0.5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="65" x="8" y="1" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="66" x="8" y="1.5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="67" x="8" y="2" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="68" x="8" y="2.5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="69" x="8" y="3" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="70" x="8" y="3.5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="71" x="8" y="4" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="72" x="8" y="4.5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="73" x="8" y="5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="74" x="8" y="5.5" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="75" x="8" y="6" dx="1.5" dy="0.3" layer="1" roundness="100"/>
<smd name="76" x="6" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="77" x="5.5" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="78" x="5" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="79" x="4.5" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="80" x="4" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="81" x="3.5" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="82" x="3" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="83" x="2.5" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="84" x="2" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="85" x="1.5" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="86" x="1" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="87" x="0.5" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="88" x="0" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="89" x="-0.5" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="90" x="-1" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="91" x="-1.5" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="92" x="-2" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="93" x="-2.5" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="94" x="-3" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="95" x="-3.5" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="96" x="-4" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="97" x="-4.5" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="98" x="-5" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="99" x="-5.5" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<smd name="100" x="-6" y="8" dx="0.3" dy="1.5" layer="1" roundness="100"/>
<text x="-6.35" y="8.89" size="1.016" layer="25" ratio="18">&gt;NAME</text>
<text x="-3.175" y="2.54" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<text x="-2.81" y="-2.4801" size="0.8128" layer="51">TQFP 100</text>
<rectangle x1="-8.0999" y1="5.8499" x2="-7.0501" y2="6.1501" layer="51"/>
<rectangle x1="-8.0999" y1="5.35" x2="-7.0501" y2="5.65" layer="51"/>
<rectangle x1="-8.0999" y1="4.8499" x2="-7.0501" y2="5.1501" layer="51"/>
<rectangle x1="-8.0999" y1="4.35" x2="-7.0501" y2="4.65" layer="51"/>
<rectangle x1="-8.0999" y1="3.8499" x2="-7.0501" y2="4.1501" layer="51"/>
<rectangle x1="-8.0999" y1="3.35" x2="-7.0501" y2="3.65" layer="51"/>
<rectangle x1="-8.0999" y1="2.8499" x2="-7.0501" y2="3.1501" layer="51"/>
<rectangle x1="-8.0999" y1="2.35" x2="-7.0501" y2="2.65" layer="51"/>
<rectangle x1="-8.0999" y1="1.8499" x2="-7.0501" y2="2.1501" layer="51"/>
<rectangle x1="-8.0999" y1="1.35" x2="-7.0501" y2="1.65" layer="51"/>
<rectangle x1="-8.0999" y1="0.8499" x2="-7.0501" y2="1.1501" layer="51"/>
<rectangle x1="-8.0999" y1="0.35" x2="-7.0501" y2="0.65" layer="51"/>
<rectangle x1="-8.0999" y1="-0.1501" x2="-7.0501" y2="0.1501" layer="51"/>
<rectangle x1="-8.0999" y1="-0.65" x2="-7.0501" y2="-0.35" layer="51"/>
<rectangle x1="-8.0999" y1="-1.1501" x2="-7.0501" y2="-0.8499" layer="51"/>
<rectangle x1="-8.0999" y1="-1.65" x2="-7.0501" y2="-1.35" layer="51"/>
<rectangle x1="-8.0999" y1="-2.1501" x2="-7.0501" y2="-1.8499" layer="51"/>
<rectangle x1="-8.0999" y1="-2.65" x2="-7.0501" y2="-2.35" layer="51"/>
<rectangle x1="-8.0999" y1="-3.1501" x2="-7.0501" y2="-2.8499" layer="51"/>
<rectangle x1="-8.0999" y1="-3.65" x2="-7.0501" y2="-3.35" layer="51"/>
<rectangle x1="-8.0999" y1="-4.1501" x2="-7.0501" y2="-3.8499" layer="51"/>
<rectangle x1="-8.0999" y1="-4.65" x2="-7.0501" y2="-4.35" layer="51"/>
<rectangle x1="-8.0999" y1="-5.1501" x2="-7.0501" y2="-4.8499" layer="51"/>
<rectangle x1="-8.0999" y1="-5.65" x2="-7.0501" y2="-5.35" layer="51"/>
<rectangle x1="-8.0999" y1="-6.1501" x2="-7.0501" y2="-5.8499" layer="51"/>
<rectangle x1="-6.1501" y1="-8.0999" x2="-5.8499" y2="-7.0501" layer="51"/>
<rectangle x1="-5.65" y1="-8.0999" x2="-5.35" y2="-7.0501" layer="51"/>
<rectangle x1="-5.1501" y1="-8.0999" x2="-4.8499" y2="-7.0501" layer="51"/>
<rectangle x1="-4.65" y1="-8.0999" x2="-4.35" y2="-7.0501" layer="51"/>
<rectangle x1="-4.1501" y1="-8.0999" x2="-3.8499" y2="-7.0501" layer="51"/>
<rectangle x1="-3.65" y1="-8.0999" x2="-3.35" y2="-7.0501" layer="51"/>
<rectangle x1="-3.1501" y1="-8.0999" x2="-2.8499" y2="-7.0501" layer="51"/>
<rectangle x1="-2.65" y1="-8.0999" x2="-2.35" y2="-7.0501" layer="51"/>
<rectangle x1="-2.1501" y1="-8.0999" x2="-1.8499" y2="-7.0501" layer="51"/>
<rectangle x1="-1.65" y1="-8.0999" x2="-1.35" y2="-7.0501" layer="51"/>
<rectangle x1="-1.1501" y1="-8.0999" x2="-0.8499" y2="-7.0501" layer="51"/>
<rectangle x1="-0.65" y1="-8.0999" x2="-0.35" y2="-7.0501" layer="51"/>
<rectangle x1="-0.1501" y1="-8.0999" x2="0.1501" y2="-7.0501" layer="51"/>
<rectangle x1="0.35" y1="-8.0999" x2="0.65" y2="-7.0501" layer="51"/>
<rectangle x1="0.8499" y1="-8.0999" x2="1.1501" y2="-7.0501" layer="51"/>
<rectangle x1="1.35" y1="-8.0999" x2="1.65" y2="-7.0501" layer="51"/>
<rectangle x1="1.8499" y1="-8.0999" x2="2.1501" y2="-7.0501" layer="51"/>
<rectangle x1="2.35" y1="-8.0999" x2="2.65" y2="-7.0501" layer="51"/>
<rectangle x1="2.8499" y1="-8.0999" x2="3.1501" y2="-7.0501" layer="51"/>
<rectangle x1="3.35" y1="-8.0999" x2="3.65" y2="-7.0501" layer="51"/>
<rectangle x1="3.8499" y1="-8.0999" x2="4.1501" y2="-7.0501" layer="51"/>
<rectangle x1="4.35" y1="-8.0999" x2="4.65" y2="-7.0501" layer="51"/>
<rectangle x1="4.8499" y1="-8.0999" x2="5.1501" y2="-7.0501" layer="51"/>
<rectangle x1="5.35" y1="-8.0999" x2="5.65" y2="-7.0501" layer="51"/>
<rectangle x1="5.8499" y1="-8.0999" x2="6.1501" y2="-7.0501" layer="51"/>
<rectangle x1="7.0501" y1="-6.1501" x2="8.0999" y2="-5.8499" layer="51"/>
<rectangle x1="7.0501" y1="-5.65" x2="8.0999" y2="-5.35" layer="51"/>
<rectangle x1="7.0501" y1="-5.1501" x2="8.0999" y2="-4.8499" layer="51"/>
<rectangle x1="7.0501" y1="-4.65" x2="8.0999" y2="-4.35" layer="51"/>
<rectangle x1="7.0501" y1="-4.1501" x2="8.0999" y2="-3.8499" layer="51"/>
<rectangle x1="7.0501" y1="-3.65" x2="8.0999" y2="-3.35" layer="51"/>
<rectangle x1="7.0501" y1="-3.1501" x2="8.0999" y2="-2.8499" layer="51"/>
<rectangle x1="7.0501" y1="-2.65" x2="8.0999" y2="-2.35" layer="51"/>
<rectangle x1="7.0501" y1="-2.1501" x2="8.0999" y2="-1.8499" layer="51"/>
<rectangle x1="7.0501" y1="-1.65" x2="8.0999" y2="-1.35" layer="51"/>
<rectangle x1="7.0501" y1="-1.1501" x2="8.0999" y2="-0.8499" layer="51"/>
<rectangle x1="7.0501" y1="-0.65" x2="8.0999" y2="-0.35" layer="51"/>
<rectangle x1="7.0501" y1="-0.1501" x2="8.0999" y2="0.1501" layer="51"/>
<rectangle x1="7.0501" y1="0.35" x2="8.0999" y2="0.65" layer="51"/>
<rectangle x1="7.0501" y1="0.8499" x2="8.0999" y2="1.1501" layer="51"/>
<rectangle x1="7.0501" y1="1.35" x2="8.0999" y2="1.65" layer="51"/>
<rectangle x1="7.0501" y1="1.8499" x2="8.0999" y2="2.1501" layer="51"/>
<rectangle x1="7.0501" y1="2.35" x2="8.0999" y2="2.65" layer="51"/>
<rectangle x1="7.0501" y1="2.8499" x2="8.0999" y2="3.1501" layer="51"/>
<rectangle x1="7.0501" y1="3.35" x2="8.0999" y2="3.65" layer="51"/>
<rectangle x1="7.0501" y1="3.8499" x2="8.0999" y2="4.1501" layer="51"/>
<rectangle x1="7.0501" y1="4.35" x2="8.0999" y2="4.65" layer="51"/>
<rectangle x1="7.0501" y1="4.8499" x2="8.0999" y2="5.1501" layer="51"/>
<rectangle x1="7.0501" y1="5.35" x2="8.0999" y2="5.65" layer="51"/>
<rectangle x1="7.0501" y1="5.8499" x2="8.0999" y2="6.1501" layer="51"/>
<rectangle x1="5.8499" y1="7.0501" x2="6.1501" y2="8.0999" layer="51"/>
<rectangle x1="5.35" y1="7.0501" x2="5.65" y2="8.0999" layer="51"/>
<rectangle x1="4.8499" y1="7.0501" x2="5.1501" y2="8.0999" layer="51"/>
<rectangle x1="4.35" y1="7.0501" x2="4.65" y2="8.0999" layer="51"/>
<rectangle x1="3.8499" y1="7.0501" x2="4.1501" y2="8.0999" layer="51"/>
<rectangle x1="3.35" y1="7.0501" x2="3.65" y2="8.0999" layer="51"/>
<rectangle x1="2.8499" y1="7.0501" x2="3.1501" y2="8.0999" layer="51"/>
<rectangle x1="2.35" y1="7.0501" x2="2.65" y2="8.0999" layer="51"/>
<rectangle x1="1.8499" y1="7.0501" x2="2.1501" y2="8.0999" layer="51"/>
<rectangle x1="1.35" y1="7.0501" x2="1.65" y2="8.0999" layer="51"/>
<rectangle x1="0.8499" y1="7.0501" x2="1.1501" y2="8.0999" layer="51"/>
<rectangle x1="0.35" y1="7.0501" x2="0.65" y2="8.0999" layer="51"/>
<rectangle x1="-0.1501" y1="7.0501" x2="0.1501" y2="8.0999" layer="51"/>
<rectangle x1="-0.65" y1="7.0501" x2="-0.35" y2="8.0999" layer="51"/>
<rectangle x1="-1.1501" y1="7.0501" x2="-0.8499" y2="8.0999" layer="51"/>
<rectangle x1="-1.65" y1="7.0501" x2="-1.35" y2="8.0999" layer="51"/>
<rectangle x1="-2.1501" y1="7.0501" x2="-1.8499" y2="8.0999" layer="51"/>
<rectangle x1="-2.65" y1="7.0501" x2="-2.35" y2="8.0999" layer="51"/>
<rectangle x1="-3.1501" y1="7.0501" x2="-2.8499" y2="8.0999" layer="51"/>
<rectangle x1="-3.65" y1="7.0501" x2="-3.35" y2="8.0999" layer="51"/>
<rectangle x1="-4.1501" y1="7.0501" x2="-3.8499" y2="8.0999" layer="51"/>
<rectangle x1="-4.65" y1="7.0501" x2="-4.35" y2="8.0999" layer="51"/>
<rectangle x1="-5.1501" y1="7.0501" x2="-4.8499" y2="8.0999" layer="51"/>
<rectangle x1="-5.65" y1="7.0501" x2="-5.35" y2="8.0999" layer="51"/>
<rectangle x1="-6.1501" y1="7.0501" x2="-5.8499" y2="8.0999" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="AT32UC3C1XXX">
<wire x1="-111.76" y1="81.28" x2="43.18" y2="81.28" width="0.4064" layer="94"/>
<wire x1="43.18" y1="81.28" x2="43.18" y2="-83.82" width="0.4064" layer="94"/>
<wire x1="43.18" y1="-83.82" x2="-111.76" y2="-83.82" width="0.4064" layer="94"/>
<wire x1="-111.76" y1="-83.82" x2="-111.76" y2="81.28" width="0.4064" layer="94"/>
<text x="-45.72" y="82.55" size="1.778" layer="95">&gt;NAME</text>
<text x="-45.72" y="-86.36" size="1.778" layer="96">&gt;VALUE</text>
<pin name="MACB-COL/TC0-B0/SPI1-MISO/IISC-ISDI/AC1FA1-ACAOUT/PB20" x="48.26" y="-10.16" length="middle" rot="R180"/>
<pin name="MACB-RXD[2]/TC0-CLK1/SPI1-SCK/IISC-IMCK/AC1FA1-ACBOUT/PB21" x="48.26" y="-12.7" length="middle" rot="R180"/>
<pin name="MACB-RXD[3]/TC0-A1/SPI1-NPCS[3]/IISC-ISCK/SCIF-GCLK[1]/PB22" x="48.26" y="-15.24" length="middle" rot="R180"/>
<pin name="VDDIO@53" x="-116.84" y="-40.64" length="middle" direction="pwr"/>
<pin name="GNDIO@83" x="-116.84" y="-53.34" length="middle" direction="pwr"/>
<pin name="MACB-RX_CLK/TC0-B1/SPI1-NPCS[2]/IISC-IWS/PB23" x="48.26" y="-17.78" length="middle" rot="R180"/>
<pin name="XIN0/PB30" x="48.26" y="-20.32" length="middle" rot="R180"/>
<pin name="XOUT0/PB31" x="48.26" y="-22.86" length="middle" rot="R180"/>
<pin name="!RESET" x="48.26" y="-30.48" length="middle" direction="in" rot="R180"/>
<pin name="TCK/CANIF-TXLINE[1]/PA00" x="48.26" y="78.74" length="middle" rot="R180"/>
<pin name="TDI/CANIF-RXLINE[1]/PEVC-PAD_EVT[0]/PA01" x="48.26" y="76.2" length="middle" rot="R180"/>
<pin name="TDO/SCIF-GLK[0]/PEVC-PAD_EVT[1]/PA02" x="48.26" y="73.66" length="middle" rot="R180"/>
<pin name="TMS/SCIF-GCLK[1]/EIC-EXINT[1]/PA03" x="48.26" y="71.12" length="middle" rot="R180"/>
<pin name="ADCIN0/USB-ID/ACIFA0-ACAOUT/PA04" x="48.26" y="68.58" length="middle" rot="R180"/>
<pin name="ADCIN1/USB-VBOF/ACIFA0-ACBOUT/PA05" x="48.26" y="66.04" length="middle" rot="R180"/>
<pin name="ADCIN2/AC1AP1/PEVC-PAD_EVT[2]/PA06" x="48.26" y="63.5" length="middle" rot="R180"/>
<pin name="ADCIN3/AC1AN1/PEVC-PAD_EVT[3]/PA07" x="48.26" y="60.96" length="middle" rot="R180"/>
<pin name="ADCIN4/AC1BP1/EIC-EXTINT[2]/PA08" x="48.26" y="58.42" length="middle" rot="R180"/>
<pin name="ADCIN5/AC1BN1/PA09" x="48.26" y="55.88" length="middle" rot="R180"/>
<pin name="ADCIN6/EIC-EXTINT[4]/PEVC-PAD_EVT[13]/PA10" x="48.26" y="53.34" length="middle" rot="R180"/>
<pin name="ADCIN7/ADCREF1/PEVC-PAD_EVT[14]/PA11" x="48.26" y="50.8" length="middle" rot="R180"/>
<pin name="AC1AP0/SPIO-NPCS[0]/DAC1A/PA12" x="48.26" y="48.26" length="middle" rot="R180"/>
<pin name="ADCIN15/AC1AN0/SPI0-NPCS[1]/PA13" x="48.26" y="45.72" length="middle" rot="R180"/>
<pin name="VDDCORE" x="-116.84" y="-58.42" length="middle" direction="pwr"/>
<pin name="AC1BP0/SPI1-NPCS[0]/PA14" x="48.26" y="43.18" length="middle" rot="R180"/>
<pin name="AC1BN0/SPI1-NPCS[1]/DAC1B/PA15" x="48.26" y="40.64" length="middle" rot="R180"/>
<pin name="ADCREF0/DACREF/PA16" x="48.26" y="38.1" length="middle" rot="R180"/>
<pin name="ADCREFP/PA17" x="48.26" y="35.56" length="middle" rot="R180"/>
<pin name="ADCREFN/PA18" x="48.26" y="33.02" length="middle" rot="R180"/>
<pin name="ADCIN8/EIC-EXTINT[1]/PA19" x="48.26" y="30.48" length="middle" rot="R180"/>
<pin name="ADCIN9/AC0AP0/DAC0A/PA20" x="48.26" y="27.94" length="middle" rot="R180"/>
<pin name="VBUS" x="48.26" y="-38.1" length="middle" rot="R180"/>
<pin name="VDDIO@5" x="-116.84" y="-38.1" length="middle" direction="pwr"/>
<pin name="DM" x="48.26" y="-40.64" length="middle" rot="R180"/>
<pin name="DP" x="48.26" y="-43.18" length="middle" rot="R180"/>
<pin name="ADCIN10/AC0BN0/DAC0B/PA21" x="48.26" y="25.4" length="middle" rot="R180"/>
<pin name="MACB-SPEED/ADCIN11/AC0AN0/PEVC-PAD_EVT[4]/PA22" x="48.26" y="22.86" length="middle" rot="R180"/>
<pin name="MACB-WOL/ADCIN12/AC0BP0/PEVC-PAD_EVT[5]/PA23" x="48.26" y="20.32" length="middle" rot="R180"/>
<pin name="ADCIN13/SPI1-NCS[2]/PA24" x="48.26" y="17.78" length="middle" rot="R180"/>
<pin name="ADCIN14/SPI1-NPCS[3]/EIC-EXTINT[0]/PA25" x="48.26" y="15.24" length="middle" rot="R180"/>
<pin name="VDDIN_5" x="-116.84" y="-66.04" length="middle" direction="pwr"/>
<pin name="VDDIN_33" x="-116.84" y="-68.58" length="middle" direction="pwr"/>
<pin name="GNDPLL" x="-116.84" y="-73.66" length="middle" direction="pwr"/>
<pin name="USART0-CLK/CANIF-RXLINE[1]/EIC-EXTINT[8]/PEVC-PAD_EVT[10]/XIN32/PB00" x="48.26" y="10.16" length="middle" rot="R180"/>
<pin name="CANIF-TXLINE[1]/PEVC-PAD_EVT[11]/XOUT32/PB01" x="48.26" y="7.62" length="middle" rot="R180"/>
<pin name="VDDIO@82" x="-116.84" y="-43.18" length="middle" direction="pwr"/>
<pin name="GNDIO@6" x="-116.84" y="-48.26" length="middle" direction="pwr"/>
<pin name="USB-ID/PEVC-PAD_EVT[6]/TC1-A1/XIN1/PB02" x="48.26" y="5.08" length="middle" rot="R180"/>
<pin name="USB-VBOF/PEVC-PAD-EVT[7]/XOUT1/PB03" x="48.26" y="2.54" length="middle" rot="R180"/>
<pin name="MACB-TXD[2]SPI1-MOSI/CANIF-RXLINE[0]/QDEC1-QEPI/PB04" x="48.26" y="0" length="middle" rot="R180"/>
<pin name="MACB-TXD[3]/SPI1-MISO/CANIF-TXLINE[0]/PEVC-PAD_EVT[12]/USART3-CLK/PB05" x="48.26" y="-2.54" length="middle" rot="R180"/>
<pin name="MACB-TX_ER/SPI1-SCK/QDEC1-QEPA/USART1-CLK/PB06" x="48.26" y="-5.08" length="middle" rot="R180"/>
<pin name="GNDIO@54" x="-116.84" y="-50.8" length="middle" direction="pwr"/>
<pin name="PC00/USB-ID/SPI0-NPCS[1]/USART2-CTS/TC1-B2/CANIF-TXLINE[1]" x="-116.84" y="78.74" length="middle"/>
<pin name="PC01/USB-VBOF/SPI0-NPCS[2]/USART2-RTS/TC1-A2/CANIF-RXLINE[1]" x="-116.84" y="76.2" length="middle"/>
<pin name="PC02/TWIMS0-TWD/SPI0-NPCS[3]/USART2-RXD/TC1-CLK1/MACB-MDC" x="-116.84" y="73.66" length="middle"/>
<pin name="PC03/TWIMSO-TWCK/EIC-EXTINT[1]/USART2-TXD/TC1-B1/MACB-MDIO" x="-116.84" y="71.12" length="middle"/>
<pin name="PC04/TWIMS1-TWD/EIC-EXTINT[3]/USART2-TXD/TC0-B1" x="-116.84" y="68.58" length="middle"/>
<pin name="PC05/TWIMS1-TWCK/EIC-EXTINT[4]/USART2-RXD/TC0-A2" x="-116.84" y="66.04" length="middle"/>
<pin name="PC06/PEVC-PAD_EVT[15]/USART2-CLK/USART2-CTS/TC0-CLK2/TWIMS2-TWD/TWIMS0-TWALM" x="-116.84" y="63.5" length="middle"/>
<pin name="PC07/PEVC_EVT[2]_/EBI_NCS[3]/USART2-RTS/TC0-B2/TWIMS2-TWCK/TWIMS1-TWALM" x="-116.84" y="60.96" length="middle"/>
<pin name="PC11/PWM-PWMH[3]/CANIF-RXLINE[1]/EBI-ADDR[21]/TC0-CLK0" x="-116.84" y="58.42" length="middle"/>
<pin name="PC12/PWM-PWML[3]/CANIF-TXLINE[1]/EBI-ADDR[20]/USART2-CLK" x="-116.84" y="55.88" length="middle"/>
<pin name="PC13/PWM-PWMH[2]/EIC-EXTINT[7]/EBI-SDCS/USART2-RTS" x="-116.84" y="53.34" length="middle"/>
<pin name="PC14/PWM-PWML[2]/USART0-CLK/EBI-SDCKE/USART0-CTS" x="-116.84" y="50.8" length="middle"/>
<pin name="PC15/PWM-PWMH[1]/SPI0-NPCS[0]/EBI-SDWE/USART0-RXD/CANIF-RXLINE[1]" x="-116.84" y="48.26" length="middle"/>
<pin name="PC16/PWM-PWML[1]/SPI0-NPCS[1]/EBI-CAS/USART0-TXD/CANIF-TXLINE[1]" x="-116.84" y="45.72" length="middle"/>
<pin name="PC17/PWM-PWMH[0]/SPI0-NPCS[2]/EBI-RAS/IISC-ISDO/USART3-TXD" x="-116.84" y="43.18" length="middle"/>
<pin name="PC18/PWM-PWML[0]/EIC-EXTINT[5]/EBI-SDA10/IISC-ISDI/USART3-RXD" x="-116.84" y="40.64" length="middle"/>
<pin name="PC19/PWM-PWML[2]/SCIF-GCLK[0]/EBI-DATA[0]/IISC-IMCK/USART3-CTS" x="-116.84" y="38.1" length="middle"/>
<pin name="PC20/PWM-PWMH[2]/SCIF-GCLK[1]/EBI-DATA[1]/IISC-ISCK/USART3-RTS" x="-116.84" y="35.56" length="middle"/>
<pin name="PC21/PWM-EXT_FAULTS[0]/CCANIF-RXLINE[0]/EBI-DATA[2]/IISC-IWS" x="-116.84" y="33.02" length="middle"/>
<pin name="PC22/PWM-EXT_FAULTS[1]/CCANIF-TXLINE[3]/EBI-DATA[2]/USART3-CLK" x="-116.84" y="30.48" length="middle"/>
<pin name="PC23/QDEC1-QEPB/CANIF-RXLINE[1]/EBI-DATA[4]/PEVC-PAD_EVT[3]" x="-116.84" y="27.94" length="middle"/>
<pin name="PC24/QDEC1-QEPA/CANIF-TXLINE[1]/EBI-DATA[5]/PEVC-PAD_EVT[4]" x="-116.84" y="25.4" length="middle"/>
<pin name="PC31/SPI1-NPCS[3]/TC1-B0/EBI-DATA[12]/PEVC-PAD_EVT[5]/USART4-CLK" x="-116.84" y="22.86" length="middle"/>
<pin name="PD00/SPI0-MOSI/TC1-CLK0/EBI-DATA[13]/QDEC0-QEPI/USART0-TXD" x="-116.84" y="17.78" length="middle"/>
<pin name="PD01/SPI0-MISO/TC1-A0/EBI-DATA[14]/TC0-CLK1/USART0-RXD" x="-116.84" y="15.24" length="middle"/>
<pin name="PD02/SPI0-SCK/TC0-CLK2/EBI-DATA[15]/QDEC0-QEPA" x="-116.84" y="12.7" length="middle"/>
<pin name="PD03/SPI0-NPCS[0]/TC0-B0/EBI-ADDR[0]/QDEC0-QEPB" x="-116.84" y="10.16" length="middle"/>
<pin name="PD07/USART1-DTR/EIC-EXTINT[5]/EBI-ADDR[4]/QDEC0-QEPI/USART4-TXD" x="-116.84" y="7.62" length="middle"/>
<pin name="PD08/USART1-DSR/EIC-EXTINT[6]/EBI-ADDR[5]/TC1-CLK2/USART4-RXD" x="-116.84" y="5.08" length="middle"/>
<pin name="PD09/USART1-DCD/CANIF-RXLINE[0]/EBI-ADDR[6]/QDEC0-QEPA/USART4-CTS" x="-116.84" y="2.54" length="middle"/>
<pin name="PD10/USART1-RI/CANIF-TXLINE[0]/EBI-ADDR[7]/QDEC0-QEPB/USART4-RTS" x="-116.84" y="0" length="middle"/>
<pin name="PD11/USART1-TXD/USB-ID/EBI-ADDR[8]/PEVC-PAD_EVT[6]/MACB-TXD[0]" x="-116.84" y="-2.54" length="middle"/>
<pin name="PD12/USART1-RXD/USB-VBOF/EBI-ADDR[9]/PEVC-PAD_EVT[7]/MACB-RXD[1]" x="-116.84" y="-5.08" length="middle"/>
<pin name="PD13/USART1-CTS/USART1-CLK/EBI-SDCK/PEVC-PAD_EVT[8]/MACB-RXD[0]" x="-116.84" y="-7.62" length="middle"/>
<pin name="PD14/USART1-RTS/EIC-EXTINT[7]/EBI-ADDR[10]/PEVC-PAD_EVT[9]/MACB-RXD[1]" x="-116.84" y="-10.16" length="middle"/>
<pin name="PD21/USART3-TXD/EIC-EXTINT[0]/EBI-ADDR[17]/QDEC1-QEPI" x="-116.84" y="-12.7" length="middle"/>
<pin name="PD22/USART3-RXD/TC0-A2]/EBI-ADDR[18]/SCIF-GCLK[0]" x="-116.84" y="-15.24" length="middle"/>
<pin name="PD23/USART3-CTS/USART3-CLK/EBI-ADDR[19]/QDEC1-QEPA" x="-116.84" y="-17.78" length="middle"/>
<pin name="PD24/USART3-RTS/EIC-EXTINT[8]/EBI-NWE1/QDEC1-QEPB" x="-116.84" y="-20.32" length="middle"/>
<pin name="PD27/USART0-TXD/CANIF-RXLINE[0]/EBI-NCS[1]/TC0-A0/MACB-RX_ER" x="-116.84" y="-22.86" length="middle"/>
<pin name="PD28/USART0-RXD/CANIF-TXLINE[0]/EBI-NCS[2]/TC0-B0/MACB-RC_DV" x="-116.84" y="-25.4" length="middle"/>
<pin name="PD29/USART0-CTS/EIC-EXTINT[6]/USART0-CLK/TC0-B0/MACB-TX_CLK" x="-116.84" y="-27.94" length="middle"/>
<pin name="PD30/USART0-RXD/EIC-EXTINT[3]/EBI-NWAIT/TC0-A1/MACB-TX_EN" x="-116.84" y="-30.48" length="middle"/>
<pin name="GNDCORE" x="-116.84" y="-60.96" length="middle" direction="pwr"/>
<pin name="MACB-CRS/TC0-A0/SPI1-MOSI/IISC-ISDO/PB19" x="48.26" y="-7.62" length="middle" rot="R180"/>
<pin name="GNDANA" x="48.26" y="-55.88" length="middle" direction="pwr" rot="R180"/>
<pin name="VDDANA" x="48.26" y="-53.34" length="middle" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="AT32UC3C1512/1256/1128" prefix="U">
<description>AT32UC3C1512/1256/1128</description>
<gates>
<gate name="NAME" symbol="AT32UC3C1XXX" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TQFP100">
<connects>
<connect gate="NAME" pin="!RESET" pad="98"/>
<connect gate="NAME" pin="AC1AP0/SPIO-NPCS[0]/DAC1A/PA12" pad="18"/>
<connect gate="NAME" pin="AC1BN0/SPI1-NPCS[1]/DAC1B/PA15" pad="21"/>
<connect gate="NAME" pin="AC1BP0/SPI1-NPCS[0]/PA14" pad="20"/>
<connect gate="NAME" pin="ADCIN0/USB-ID/ACIFA0-ACAOUT/PA04" pad="10"/>
<connect gate="NAME" pin="ADCIN1/USB-VBOF/ACIFA0-ACBOUT/PA05" pad="11"/>
<connect gate="NAME" pin="ADCIN10/AC0BN0/DAC0B/PA21" pad="29"/>
<connect gate="NAME" pin="ADCIN13/SPI1-NCS[2]/PA24" pad="32"/>
<connect gate="NAME" pin="ADCIN14/SPI1-NPCS[3]/EIC-EXTINT[0]/PA25" pad="33"/>
<connect gate="NAME" pin="ADCIN15/AC1AN0/SPI0-NPCS[1]/PA13" pad="19"/>
<connect gate="NAME" pin="ADCIN2/AC1AP1/PEVC-PAD_EVT[2]/PA06" pad="12"/>
<connect gate="NAME" pin="ADCIN3/AC1AN1/PEVC-PAD_EVT[3]/PA07" pad="13"/>
<connect gate="NAME" pin="ADCIN4/AC1BP1/EIC-EXTINT[2]/PA08" pad="14"/>
<connect gate="NAME" pin="ADCIN5/AC1BN1/PA09" pad="15"/>
<connect gate="NAME" pin="ADCIN6/EIC-EXTINT[4]/PEVC-PAD_EVT[13]/PA10" pad="16"/>
<connect gate="NAME" pin="ADCIN7/ADCREF1/PEVC-PAD_EVT[14]/PA11" pad="17"/>
<connect gate="NAME" pin="ADCIN8/EIC-EXTINT[1]/PA19" pad="25"/>
<connect gate="NAME" pin="ADCIN9/AC0AP0/DAC0A/PA20" pad="28"/>
<connect gate="NAME" pin="ADCREF0/DACREF/PA16" pad="22"/>
<connect gate="NAME" pin="ADCREFN/PA18" pad="24"/>
<connect gate="NAME" pin="ADCREFP/PA17" pad="23"/>
<connect gate="NAME" pin="CANIF-TXLINE[1]/PEVC-PAD_EVT[11]/XOUT32/PB01" pad="97"/>
<connect gate="NAME" pin="DM" pad="35"/>
<connect gate="NAME" pin="DP" pad="36"/>
<connect gate="NAME" pin="GNDANA" pad="26"/>
<connect gate="NAME" pin="GNDCORE" pad="41"/>
<connect gate="NAME" pin="GNDIO@54" pad="54"/>
<connect gate="NAME" pin="GNDIO@6" pad="6"/>
<connect gate="NAME" pin="GNDIO@83" pad="83"/>
<connect gate="NAME" pin="GNDPLL" pad="37"/>
<connect gate="NAME" pin="MACB-COL/TC0-B0/SPI1-MISO/IISC-ISDI/AC1FA1-ACAOUT/PB20" pad="43"/>
<connect gate="NAME" pin="MACB-CRS/TC0-A0/SPI1-MOSI/IISC-ISDO/PB19" pad="42"/>
<connect gate="NAME" pin="MACB-RXD[2]/TC0-CLK1/SPI1-SCK/IISC-IMCK/AC1FA1-ACBOUT/PB21" pad="44"/>
<connect gate="NAME" pin="MACB-RXD[3]/TC0-A1/SPI1-NPCS[3]/IISC-ISCK/SCIF-GCLK[1]/PB22" pad="45"/>
<connect gate="NAME" pin="MACB-RX_CLK/TC0-B1/SPI1-NPCS[2]/IISC-IWS/PB23" pad="46"/>
<connect gate="NAME" pin="MACB-SPEED/ADCIN11/AC0AN0/PEVC-PAD_EVT[4]/PA22" pad="30"/>
<connect gate="NAME" pin="MACB-TXD[2]SPI1-MOSI/CANIF-RXLINE[0]/QDEC1-QEPI/PB04" pad="7"/>
<connect gate="NAME" pin="MACB-TXD[3]/SPI1-MISO/CANIF-TXLINE[0]/PEVC-PAD_EVT[12]/USART3-CLK/PB05" pad="8"/>
<connect gate="NAME" pin="MACB-TX_ER/SPI1-SCK/QDEC1-QEPA/USART1-CLK/PB06" pad="9"/>
<connect gate="NAME" pin="MACB-WOL/ADCIN12/AC0BP0/PEVC-PAD_EVT[5]/PA23" pad="31"/>
<connect gate="NAME" pin="PC00/USB-ID/SPI0-NPCS[1]/USART2-CTS/TC1-B2/CANIF-TXLINE[1]" pad="49"/>
<connect gate="NAME" pin="PC01/USB-VBOF/SPI0-NPCS[2]/USART2-RTS/TC1-A2/CANIF-RXLINE[1]" pad="50"/>
<connect gate="NAME" pin="PC02/TWIMS0-TWD/SPI0-NPCS[3]/USART2-RXD/TC1-CLK1/MACB-MDC" pad="51"/>
<connect gate="NAME" pin="PC03/TWIMSO-TWCK/EIC-EXTINT[1]/USART2-TXD/TC1-B1/MACB-MDIO" pad="52"/>
<connect gate="NAME" pin="PC04/TWIMS1-TWD/EIC-EXTINT[3]/USART2-TXD/TC0-B1" pad="55"/>
<connect gate="NAME" pin="PC05/TWIMS1-TWCK/EIC-EXTINT[4]/USART2-RXD/TC0-A2" pad="56"/>
<connect gate="NAME" pin="PC06/PEVC-PAD_EVT[15]/USART2-CLK/USART2-CTS/TC0-CLK2/TWIMS2-TWD/TWIMS0-TWALM" pad="57"/>
<connect gate="NAME" pin="PC07/PEVC_EVT[2]_/EBI_NCS[3]/USART2-RTS/TC0-B2/TWIMS2-TWCK/TWIMS1-TWALM" pad="58"/>
<connect gate="NAME" pin="PC11/PWM-PWMH[3]/CANIF-RXLINE[1]/EBI-ADDR[21]/TC0-CLK0" pad="59"/>
<connect gate="NAME" pin="PC12/PWM-PWML[3]/CANIF-TXLINE[1]/EBI-ADDR[20]/USART2-CLK" pad="60"/>
<connect gate="NAME" pin="PC13/PWM-PWMH[2]/EIC-EXTINT[7]/EBI-SDCS/USART2-RTS" pad="61"/>
<connect gate="NAME" pin="PC14/PWM-PWML[2]/USART0-CLK/EBI-SDCKE/USART0-CTS" pad="62"/>
<connect gate="NAME" pin="PC15/PWM-PWMH[1]/SPI0-NPCS[0]/EBI-SDWE/USART0-RXD/CANIF-RXLINE[1]" pad="63"/>
<connect gate="NAME" pin="PC16/PWM-PWML[1]/SPI0-NPCS[1]/EBI-CAS/USART0-TXD/CANIF-TXLINE[1]" pad="64"/>
<connect gate="NAME" pin="PC17/PWM-PWMH[0]/SPI0-NPCS[2]/EBI-RAS/IISC-ISDO/USART3-TXD" pad="65"/>
<connect gate="NAME" pin="PC18/PWM-PWML[0]/EIC-EXTINT[5]/EBI-SDA10/IISC-ISDI/USART3-RXD" pad="66"/>
<connect gate="NAME" pin="PC19/PWM-PWML[2]/SCIF-GCLK[0]/EBI-DATA[0]/IISC-IMCK/USART3-CTS" pad="67"/>
<connect gate="NAME" pin="PC20/PWM-PWMH[2]/SCIF-GCLK[1]/EBI-DATA[1]/IISC-ISCK/USART3-RTS" pad="68"/>
<connect gate="NAME" pin="PC21/PWM-EXT_FAULTS[0]/CCANIF-RXLINE[0]/EBI-DATA[2]/IISC-IWS" pad="69"/>
<connect gate="NAME" pin="PC22/PWM-EXT_FAULTS[1]/CCANIF-TXLINE[3]/EBI-DATA[2]/USART3-CLK" pad="70"/>
<connect gate="NAME" pin="PC23/QDEC1-QEPB/CANIF-RXLINE[1]/EBI-DATA[4]/PEVC-PAD_EVT[3]" pad="71"/>
<connect gate="NAME" pin="PC24/QDEC1-QEPA/CANIF-TXLINE[1]/EBI-DATA[5]/PEVC-PAD_EVT[4]" pad="72"/>
<connect gate="NAME" pin="PC31/SPI1-NPCS[3]/TC1-B0/EBI-DATA[12]/PEVC-PAD_EVT[5]/USART4-CLK" pad="73"/>
<connect gate="NAME" pin="PD00/SPI0-MOSI/TC1-CLK0/EBI-DATA[13]/QDEC0-QEPI/USART0-TXD" pad="74"/>
<connect gate="NAME" pin="PD01/SPI0-MISO/TC1-A0/EBI-DATA[14]/TC0-CLK1/USART0-RXD" pad="75"/>
<connect gate="NAME" pin="PD02/SPI0-SCK/TC0-CLK2/EBI-DATA[15]/QDEC0-QEPA" pad="76"/>
<connect gate="NAME" pin="PD03/SPI0-NPCS[0]/TC0-B0/EBI-ADDR[0]/QDEC0-QEPB" pad="77"/>
<connect gate="NAME" pin="PD07/USART1-DTR/EIC-EXTINT[5]/EBI-ADDR[4]/QDEC0-QEPI/USART4-TXD" pad="78"/>
<connect gate="NAME" pin="PD08/USART1-DSR/EIC-EXTINT[6]/EBI-ADDR[5]/TC1-CLK2/USART4-RXD" pad="79"/>
<connect gate="NAME" pin="PD09/USART1-DCD/CANIF-RXLINE[0]/EBI-ADDR[6]/QDEC0-QEPA/USART4-CTS" pad="80"/>
<connect gate="NAME" pin="PD10/USART1-RI/CANIF-TXLINE[0]/EBI-ADDR[7]/QDEC0-QEPB/USART4-RTS" pad="81"/>
<connect gate="NAME" pin="PD11/USART1-TXD/USB-ID/EBI-ADDR[8]/PEVC-PAD_EVT[6]/MACB-TXD[0]" pad="84"/>
<connect gate="NAME" pin="PD12/USART1-RXD/USB-VBOF/EBI-ADDR[9]/PEVC-PAD_EVT[7]/MACB-RXD[1]" pad="85"/>
<connect gate="NAME" pin="PD13/USART1-CTS/USART1-CLK/EBI-SDCK/PEVC-PAD_EVT[8]/MACB-RXD[0]" pad="86"/>
<connect gate="NAME" pin="PD14/USART1-RTS/EIC-EXTINT[7]/EBI-ADDR[10]/PEVC-PAD_EVT[9]/MACB-RXD[1]" pad="87"/>
<connect gate="NAME" pin="PD21/USART3-TXD/EIC-EXTINT[0]/EBI-ADDR[17]/QDEC1-QEPI" pad="88"/>
<connect gate="NAME" pin="PD22/USART3-RXD/TC0-A2]/EBI-ADDR[18]/SCIF-GCLK[0]" pad="89"/>
<connect gate="NAME" pin="PD23/USART3-CTS/USART3-CLK/EBI-ADDR[19]/QDEC1-QEPA" pad="90"/>
<connect gate="NAME" pin="PD24/USART3-RTS/EIC-EXTINT[8]/EBI-NWE1/QDEC1-QEPB" pad="91"/>
<connect gate="NAME" pin="PD27/USART0-TXD/CANIF-RXLINE[0]/EBI-NCS[1]/TC0-A0/MACB-RX_ER" pad="92"/>
<connect gate="NAME" pin="PD28/USART0-RXD/CANIF-TXLINE[0]/EBI-NCS[2]/TC0-B0/MACB-RC_DV" pad="93"/>
<connect gate="NAME" pin="PD29/USART0-CTS/EIC-EXTINT[6]/USART0-CLK/TC0-B0/MACB-TX_CLK" pad="94"/>
<connect gate="NAME" pin="PD30/USART0-RXD/EIC-EXTINT[3]/EBI-NWAIT/TC0-A1/MACB-TX_EN" pad="95"/>
<connect gate="NAME" pin="TCK/CANIF-TXLINE[1]/PA00" pad="1"/>
<connect gate="NAME" pin="TDI/CANIF-RXLINE[1]/PEVC-PAD_EVT[0]/PA01" pad="2"/>
<connect gate="NAME" pin="TDO/SCIF-GLK[0]/PEVC-PAD_EVT[1]/PA02" pad="3"/>
<connect gate="NAME" pin="TMS/SCIF-GCLK[1]/EIC-EXINT[1]/PA03" pad="4"/>
<connect gate="NAME" pin="USART0-CLK/CANIF-RXLINE[1]/EIC-EXTINT[8]/PEVC-PAD_EVT[10]/XIN32/PB00" pad="96"/>
<connect gate="NAME" pin="USB-ID/PEVC-PAD_EVT[6]/TC1-A1/XIN1/PB02" pad="99"/>
<connect gate="NAME" pin="USB-VBOF/PEVC-PAD-EVT[7]/XOUT1/PB03" pad="100"/>
<connect gate="NAME" pin="VBUS" pad="34"/>
<connect gate="NAME" pin="VDDANA" pad="27"/>
<connect gate="NAME" pin="VDDCORE" pad="40"/>
<connect gate="NAME" pin="VDDIN_33" pad="39"/>
<connect gate="NAME" pin="VDDIN_5" pad="38"/>
<connect gate="NAME" pin="VDDIO@5" pad="5"/>
<connect gate="NAME" pin="VDDIO@53" pad="53"/>
<connect gate="NAME" pin="VDDIO@82" pad="82"/>
<connect gate="NAME" pin="XIN0/PB30" pad="47"/>
<connect gate="NAME" pin="XOUT0/PB31" pad="48"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="maxim">
<description>&lt;b&gt;Maxim Components&lt;/b&gt;&lt;p&gt;

&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SSOP16">
<description>&lt;b&gt;Shrink Small Outline Package&lt;/b&gt;&lt;p&gt;
package type SS</description>
<wire x1="-3.15" y1="-2.6" x2="3.15" y2="-2.6" width="0.2032" layer="21"/>
<wire x1="3.15" y1="-2.6" x2="3.15" y2="2.6" width="0.2032" layer="21"/>
<wire x1="3.15" y1="2.6" x2="-3.15" y2="2.6" width="0.2032" layer="21"/>
<smd name="1" x="-2.275" y="-3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="2" x="-1.625" y="-3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="3" x="-0.975" y="-3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="4" x="-0.325" y="-3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="5" x="0.325" y="-3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="6" x="0.975" y="-3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="7" x="1.625" y="-3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="8" x="2.275" y="-3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="9" x="2.275" y="3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="10" x="1.625" y="3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="11" x="0.975" y="3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="12" x="0.325" y="3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="13" x="-0.325" y="3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="14" x="-0.975" y="3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="15" x="-1.625" y="3.625" dx="0.4" dy="1.5" layer="1"/>
<smd name="16" x="-2.275" y="3.625" dx="0.4" dy="1.5" layer="1"/>
<text x="-3.556" y="-2.5999" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.856" y="-2.5999" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.4528" y1="-3.937" x2="-2.0972" y2="-2.6416" layer="51"/>
<rectangle x1="-1.8029" y1="-3.937" x2="-1.4473" y2="-2.6416" layer="51"/>
<rectangle x1="-1.1529" y1="-3.937" x2="-0.7973" y2="-2.6416" layer="51"/>
<rectangle x1="-0.5029" y1="-3.937" x2="-0.1473" y2="-2.6416" layer="51"/>
<rectangle x1="0.1471" y1="-3.937" x2="0.5027" y2="-2.6416" layer="51"/>
<rectangle x1="0.7971" y1="-3.937" x2="1.1527" y2="-2.6416" layer="51"/>
<rectangle x1="1.4471" y1="-3.937" x2="1.8027" y2="-2.6416" layer="51"/>
<rectangle x1="2.0973" y1="-3.937" x2="2.4529" y2="-2.6416" layer="51"/>
<rectangle x1="2.0971" y1="2.6416" x2="2.4527" y2="3.937" layer="51"/>
<rectangle x1="1.4471" y1="2.6416" x2="1.8027" y2="3.937" layer="51"/>
<rectangle x1="0.7971" y1="2.6416" x2="1.1527" y2="3.937" layer="51"/>
<rectangle x1="0.1471" y1="2.6416" x2="0.5027" y2="3.937" layer="51"/>
<rectangle x1="-0.5029" y1="2.6416" x2="-0.1473" y2="3.937" layer="51"/>
<rectangle x1="-1.1528" y1="2.6416" x2="-0.7972" y2="3.937" layer="51"/>
<rectangle x1="-1.8028" y1="2.6416" x2="-1.4472" y2="3.937" layer="51"/>
<rectangle x1="-2.4527" y1="2.6416" x2="-2.0971" y2="3.937" layer="51"/>
<rectangle x1="-3.2499" y1="-2.5999" x2="-2.275" y2="2.5999" layer="27"/>
</package>
<package name="TSSOP16">
<description>&lt;b&gt;Thin Shrink Small Outline Plastic 16&lt;/b&gt;&lt;p&gt;
http://www.maxim-ic.com .. MAX3223-MAX3243.pdf</description>
<wire x1="-2.5146" y1="-2.2828" x2="2.5146" y2="-2.2828" width="0.1524" layer="21"/>
<wire x1="2.5146" y1="2.2828" x2="2.5146" y2="-2.2828" width="0.1524" layer="21"/>
<wire x1="2.5146" y1="2.2828" x2="-2.5146" y2="2.2828" width="0.1524" layer="21"/>
<wire x1="-2.5146" y1="-2.2828" x2="-2.5146" y2="2.2828" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-2.0542" x2="2.286" y2="-2.0542" width="0.0508" layer="21"/>
<wire x1="2.286" y1="2.0542" x2="2.286" y2="-2.0542" width="0.0508" layer="21"/>
<wire x1="2.286" y1="2.0542" x2="-2.286" y2="2.0542" width="0.0508" layer="21"/>
<wire x1="-2.286" y1="-2.0542" x2="-2.286" y2="2.0542" width="0.0508" layer="21"/>
<circle x="-1.6256" y="-1.2192" radius="0.4572" width="0.1524" layer="21"/>
<smd name="1" x="-2.275" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="2" x="-1.625" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="3" x="-0.975" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="4" x="-0.325" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="5" x="0.325" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="6" x="0.975" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="7" x="1.625" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="8" x="2.275" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="9" x="2.275" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="10" x="1.625" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="11" x="0.975" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="12" x="0.325" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="13" x="-0.325" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="14" x="-0.975" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="15" x="-1.625" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="16" x="-2.275" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<text x="-2.8956" y="-2.0828" size="1.016" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="3.8862" y="-2.0828" size="1.016" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.3766" y1="-3.121" x2="-2.1734" y2="-2.2828" layer="51"/>
<rectangle x1="-1.7266" y1="-3.121" x2="-1.5234" y2="-2.2828" layer="51"/>
<rectangle x1="-1.0766" y1="-3.121" x2="-0.8734" y2="-2.2828" layer="51"/>
<rectangle x1="-0.4266" y1="-3.121" x2="-0.2234" y2="-2.2828" layer="51"/>
<rectangle x1="0.2234" y1="-3.121" x2="0.4266" y2="-2.2828" layer="51"/>
<rectangle x1="0.8734" y1="-3.121" x2="1.0766" y2="-2.2828" layer="51"/>
<rectangle x1="1.5234" y1="-3.121" x2="1.7266" y2="-2.2828" layer="51"/>
<rectangle x1="2.1734" y1="-3.121" x2="2.3766" y2="-2.2828" layer="51"/>
<rectangle x1="2.1734" y1="2.2828" x2="2.3766" y2="3.121" layer="51"/>
<rectangle x1="1.5234" y1="2.2828" x2="1.7266" y2="3.121" layer="51"/>
<rectangle x1="0.8734" y1="2.2828" x2="1.0766" y2="3.121" layer="51"/>
<rectangle x1="0.2234" y1="2.2828" x2="0.4266" y2="3.121" layer="51"/>
<rectangle x1="-0.4266" y1="2.2828" x2="-0.2234" y2="3.121" layer="51"/>
<rectangle x1="-1.0766" y1="2.2828" x2="-0.8734" y2="3.121" layer="51"/>
<rectangle x1="-1.7266" y1="2.2828" x2="-1.5234" y2="3.121" layer="51"/>
<rectangle x1="-2.3766" y1="2.2828" x2="-2.1734" y2="3.121" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MAX3221">
<wire x1="-10.16" y1="17.78" x2="10.16" y2="17.78" width="0.4064" layer="94"/>
<wire x1="10.16" y1="-25.4" x2="10.16" y2="17.78" width="0.4064" layer="94"/>
<wire x1="10.16" y1="-25.4" x2="-10.16" y2="-25.4" width="0.4064" layer="94"/>
<wire x1="-10.16" y1="17.78" x2="-10.16" y2="-25.4" width="0.4064" layer="94"/>
<text x="-10.16" y="18.415" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-27.94" size="1.778" layer="96">&gt;VALUE</text>
<pin name="C1+" x="-12.7" y="15.24" length="short" direction="pas"/>
<pin name="C1-" x="-12.7" y="10.16" length="short" direction="pas"/>
<pin name="C2+" x="-12.7" y="5.08" length="short" direction="pas"/>
<pin name="C2-" x="-12.7" y="0" length="short" direction="pas"/>
<pin name="T1IN" x="-12.7" y="-5.08" length="short" direction="in"/>
<pin name="R1OUT" x="-12.7" y="-10.16" length="short" direction="out"/>
<pin name="V+" x="12.7" y="12.7" length="short" direction="pas" rot="R180"/>
<pin name="V-" x="12.7" y="7.62" length="short" direction="pas" rot="R180"/>
<pin name="T1OUT" x="12.7" y="-5.08" length="short" direction="out" rot="R180"/>
<pin name="R1IN" x="12.7" y="-10.16" length="short" direction="in" rot="R180"/>
<pin name="!INVALID" x="12.7" y="-15.24" length="short" direction="in" rot="R180"/>
<pin name="!FORCEOFF" x="-12.7" y="-20.32" length="short" direction="in"/>
<pin name="FORCEON" x="-12.7" y="-22.86" length="short" direction="in"/>
<pin name="!EN" x="-12.7" y="-15.24" length="short" direction="in"/>
</symbol>
<symbol name="VCC-GND">
<text x="1.524" y="-5.08" size="1.016" layer="95" rot="R90">GND</text>
<text x="1.524" y="2.54" size="1.016" layer="95" rot="R90">VCC</text>
<text x="-0.762" y="-0.762" size="1.778" layer="95">&gt;NAME</text>
<pin name="VCC" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
<pin name="GND" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MAX3221*" prefix="IC">
<description>&lt;b&gt;RS-232 Transceivers with AutoShutdown&lt;/b&gt;&lt;p&gt;
1µA Supply-Current, True +3V to +5.5V &lt;br&gt;
http://dbserv.maxim-ic.com/</description>
<gates>
<gate name="G$1" symbol="MAX3221" x="0" y="0"/>
<gate name="P" symbol="VCC-GND" x="20.32" y="0" addlevel="request"/>
</gates>
<devices>
<device name="AE" package="SSOP16">
<connects>
<connect gate="G$1" pin="!EN" pad="1"/>
<connect gate="G$1" pin="!FORCEOFF" pad="16"/>
<connect gate="G$1" pin="!INVALID" pad="10"/>
<connect gate="G$1" pin="C1+" pad="2"/>
<connect gate="G$1" pin="C1-" pad="4"/>
<connect gate="G$1" pin="C2+" pad="5"/>
<connect gate="G$1" pin="C2-" pad="6"/>
<connect gate="G$1" pin="FORCEON" pad="12"/>
<connect gate="G$1" pin="R1IN" pad="8"/>
<connect gate="G$1" pin="R1OUT" pad="9"/>
<connect gate="G$1" pin="T1IN" pad="11"/>
<connect gate="G$1" pin="T1OUT" pad="13"/>
<connect gate="G$1" pin="V+" pad="3"/>
<connect gate="G$1" pin="V-" pad="7"/>
<connect gate="P" pin="GND" pad="14"/>
<connect gate="P" pin="VCC" pad="15"/>
</connects>
<technologies>
<technology name="C">
<attribute name="MF" value="MAXIM" constant="no"/>
<attribute name="MPN" value="MAX3221CAE+" constant="no"/>
<attribute name="OC_FARNELL" value="9724508" constant="no"/>
<attribute name="OC_NEWARK" value="53K7474" constant="no"/>
</technology>
<technology name="E">
<attribute name="MF" value="MAXIM" constant="no"/>
<attribute name="MPN" value="MAX3221EAE+" constant="no"/>
<attribute name="OC_FARNELL" value="9725440" constant="no"/>
<attribute name="OC_NEWARK" value="68K4609" constant="no"/>
</technology>
</technologies>
</device>
<device name="UE" package="TSSOP16">
<connects>
<connect gate="G$1" pin="!EN" pad="1"/>
<connect gate="G$1" pin="!FORCEOFF" pad="16"/>
<connect gate="G$1" pin="!INVALID" pad="10"/>
<connect gate="G$1" pin="C1+" pad="2"/>
<connect gate="G$1" pin="C1-" pad="4"/>
<connect gate="G$1" pin="C2+" pad="5"/>
<connect gate="G$1" pin="C2-" pad="6"/>
<connect gate="G$1" pin="FORCEON" pad="12"/>
<connect gate="G$1" pin="R1IN" pad="8"/>
<connect gate="G$1" pin="R1OUT" pad="9"/>
<connect gate="G$1" pin="T1IN" pad="11"/>
<connect gate="G$1" pin="T1OUT" pad="13"/>
<connect gate="G$1" pin="V+" pad="3"/>
<connect gate="G$1" pin="V-" pad="7"/>
<connect gate="P" pin="GND" pad="14"/>
<connect gate="P" pin="VCC" pad="15"/>
</connects>
<technologies>
<technology name="C">
<attribute name="MF" value="MAXIM" constant="no"/>
<attribute name="MPN" value="MAX3221CUE+" constant="no"/>
<attribute name="OC_FARNELL" value="1379915" constant="no"/>
<attribute name="OC_NEWARK" value="68K4608" constant="no"/>
</technology>
<technology name="E">
<attribute name="MF" value="MAXIM" constant="no"/>
<attribute name="MPN" value="MAX3221EUE+" constant="no"/>
<attribute name="OC_FARNELL" value="1379916" constant="no"/>
<attribute name="OC_NEWARK" value="67K4827" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="FRAME1" library="frames" deviceset="TABL_L" device=""/>
<part name="X1" library="con-molex" deviceset="22-23-2031" device=""/>
<part name="X2" library="con-molex" deviceset="22-23-2031" device=""/>
<part name="X4" library="con-molex" deviceset="22-23-2021" device=""/>
<part name="X3" library="con-molex" deviceset="C-GRID-07" device="-70543"/>
<part name="X5" library="con-molex" deviceset="C-GRID-07" device="-70543"/>
<part name="X6" library="con-molex" deviceset="C-GRID-07" device="-70543"/>
<part name="X7" library="con-molex" deviceset="C-GRID-07" device="-70543"/>
<part name="X8" library="con-molex" deviceset="C-GRID-07" device="-70543"/>
<part name="X9" library="con-molex" deviceset="C-GRID-07" device="-70543"/>
<part name="U$1" library="avr-7" deviceset="AVR-PDI" device="VERT"/>
<part name="U1" library="atmel-avr32-michel" deviceset="AT32UC3C1512/1256/1128" device=""/>
<part name="IC1" library="maxim" deviceset="MAX3221*" device="UE" technology="C"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="302.26" y="25.4" size="5.08" layer="94" font="vector">CRW Electronics Box</text>
<text x="396.24" y="7.62" size="3.81" layer="94" font="vector">A</text>
<text x="355.6" y="246.38" size="1.778" layer="94">TODO: Replace with multi-con-X</text>
<text x="355.6" y="243.84" size="1.778" layer="94">TODO: Replace with mini-con-x</text>
<text x="281.94" y="205.74" size="1.778" layer="94">Use the: SN74LVC1T45?</text>
<text x="281.94" y="200.66" size="1.778" layer="94">Use the: MAX3221</text>
<text x="281.94" y="195.58" size="1.778" layer="94">Use the: SOT23 Dual Zener (5.1V, UC3 is 5V tolerant)</text>
<text x="281.94" y="193.04" size="1.778" layer="94">Use the: 50mA PTC on all signal lines (R1206)</text>
<text x="281.94" y="210.82" size="1.778" layer="94">Use the: MCP1703 for +5V</text>
<text x="281.94" y="215.9" size="1.778" layer="94">Use the: Zetex FET for +12V</text>
<text x="281.94" y="213.36" size="1.778" layer="94">Use the: 1.5A PTC on +12V (R1812)</text>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="FRAME1" gate="G$2" x="299.72" y="0"/>
<instance part="X1" gate="-1" x="368.3" y="238.76"/>
<instance part="X1" gate="-2" x="368.3" y="236.22"/>
<instance part="X1" gate="-3" x="368.3" y="233.68"/>
<instance part="X2" gate="-1" x="368.3" y="226.06"/>
<instance part="X2" gate="-2" x="368.3" y="223.52"/>
<instance part="X2" gate="-3" x="368.3" y="220.98"/>
<instance part="X4" gate="-1" x="368.3" y="213.36"/>
<instance part="X4" gate="-2" x="368.3" y="210.82"/>
<instance part="X3" gate="-1" x="368.3" y="203.2"/>
<instance part="X3" gate="-2" x="368.3" y="200.66"/>
<instance part="X3" gate="-3" x="368.3" y="198.12"/>
<instance part="X3" gate="-4" x="368.3" y="195.58"/>
<instance part="X3" gate="-5" x="368.3" y="193.04"/>
<instance part="X3" gate="-6" x="368.3" y="190.5"/>
<instance part="X3" gate="-7" x="368.3" y="187.96"/>
<instance part="X5" gate="-1" x="368.3" y="180.34"/>
<instance part="X5" gate="-2" x="368.3" y="177.8"/>
<instance part="X5" gate="-3" x="368.3" y="175.26"/>
<instance part="X5" gate="-4" x="368.3" y="172.72"/>
<instance part="X5" gate="-5" x="368.3" y="170.18"/>
<instance part="X5" gate="-6" x="368.3" y="167.64"/>
<instance part="X5" gate="-7" x="368.3" y="165.1"/>
<instance part="X6" gate="-1" x="368.3" y="157.48"/>
<instance part="X6" gate="-2" x="368.3" y="154.94"/>
<instance part="X6" gate="-3" x="368.3" y="152.4"/>
<instance part="X6" gate="-4" x="368.3" y="149.86"/>
<instance part="X6" gate="-5" x="368.3" y="147.32"/>
<instance part="X6" gate="-6" x="368.3" y="144.78"/>
<instance part="X6" gate="-7" x="368.3" y="142.24"/>
<instance part="X7" gate="-1" x="368.3" y="134.62"/>
<instance part="X7" gate="-2" x="368.3" y="132.08"/>
<instance part="X7" gate="-3" x="368.3" y="129.54"/>
<instance part="X7" gate="-4" x="368.3" y="127"/>
<instance part="X7" gate="-5" x="368.3" y="124.46"/>
<instance part="X7" gate="-6" x="368.3" y="121.92"/>
<instance part="X7" gate="-7" x="368.3" y="119.38"/>
<instance part="X8" gate="-1" x="368.3" y="111.76"/>
<instance part="X8" gate="-2" x="368.3" y="109.22"/>
<instance part="X8" gate="-3" x="368.3" y="106.68"/>
<instance part="X8" gate="-4" x="368.3" y="104.14"/>
<instance part="X8" gate="-5" x="368.3" y="101.6"/>
<instance part="X8" gate="-6" x="368.3" y="99.06"/>
<instance part="X8" gate="-7" x="368.3" y="96.52"/>
<instance part="X9" gate="-1" x="368.3" y="88.9"/>
<instance part="X9" gate="-2" x="368.3" y="86.36"/>
<instance part="X9" gate="-3" x="368.3" y="83.82"/>
<instance part="X9" gate="-4" x="368.3" y="81.28"/>
<instance part="X9" gate="-5" x="368.3" y="78.74"/>
<instance part="X9" gate="-6" x="368.3" y="76.2"/>
<instance part="X9" gate="-7" x="368.3" y="73.66"/>
<instance part="U$1" gate="G$1" x="104.14" y="238.76"/>
<instance part="U1" gate="NAME" x="147.32" y="132.08"/>
<instance part="IC1" gate="G$1" x="289.56" y="170.18"/>
</instances>
<busses>
</busses>
<nets>
<net name="MOT1_A" class="0">
<segment>
<pinref part="X1" gate="-1" pin="S"/>
<wire x1="365.76" y1="238.76" x2="350.52" y2="238.76" width="0.1524" layer="91"/>
<label x="353.06" y="238.76" size="1.778" layer="95"/>
</segment>
</net>
<net name="MOT1_B" class="0">
<segment>
<pinref part="X1" gate="-2" pin="S"/>
<wire x1="365.76" y1="236.22" x2="350.52" y2="236.22" width="0.1524" layer="91"/>
<label x="353.06" y="236.22" size="1.778" layer="95"/>
</segment>
</net>
<net name="MOT1_C" class="0">
<segment>
<pinref part="X1" gate="-3" pin="S"/>
<wire x1="365.76" y1="233.68" x2="350.52" y2="233.68" width="0.1524" layer="91"/>
<label x="353.06" y="233.68" size="1.778" layer="95"/>
</segment>
</net>
<net name="MOT2_A" class="0">
<segment>
<pinref part="X2" gate="-1" pin="S"/>
<wire x1="365.76" y1="226.06" x2="350.52" y2="226.06" width="0.1524" layer="91"/>
<label x="353.06" y="226.06" size="1.778" layer="95"/>
</segment>
</net>
<net name="MOT2_B" class="0">
<segment>
<pinref part="X2" gate="-2" pin="S"/>
<wire x1="365.76" y1="223.52" x2="350.52" y2="223.52" width="0.1524" layer="91"/>
<label x="353.06" y="223.52" size="1.778" layer="95"/>
</segment>
</net>
<net name="MOT2_C" class="0">
<segment>
<pinref part="X2" gate="-3" pin="S"/>
<wire x1="365.76" y1="220.98" x2="350.52" y2="220.98" width="0.1524" layer="91"/>
<label x="353.06" y="220.98" size="1.778" layer="95"/>
</segment>
</net>
<net name="CHARGE" class="0">
<segment>
<pinref part="X4" gate="-1" pin="S"/>
<wire x1="365.76" y1="213.36" x2="350.52" y2="213.36" width="0.1524" layer="91"/>
<label x="353.06" y="213.36" size="1.778" layer="95"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="X4" gate="-2" pin="S"/>
<wire x1="365.76" y1="210.82" x2="350.52" y2="210.82" width="0.1524" layer="91"/>
<label x="353.06" y="210.82" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X3" gate="-7" pin="S"/>
<wire x1="365.76" y1="187.96" x2="350.52" y2="187.96" width="0.1524" layer="91"/>
<label x="353.06" y="187.96" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X5" gate="-7" pin="S"/>
<wire x1="365.76" y1="165.1" x2="350.52" y2="165.1" width="0.1524" layer="91"/>
<label x="353.06" y="165.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X6" gate="-7" pin="S"/>
<wire x1="365.76" y1="142.24" x2="350.52" y2="142.24" width="0.1524" layer="91"/>
<label x="353.06" y="142.24" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X7" gate="-7" pin="S"/>
<wire x1="365.76" y1="119.38" x2="350.52" y2="119.38" width="0.1524" layer="91"/>
<label x="353.06" y="119.38" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X8" gate="-7" pin="S"/>
<wire x1="365.76" y1="96.52" x2="350.52" y2="96.52" width="0.1524" layer="91"/>
<label x="353.06" y="96.52" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="365.76" y1="73.66" x2="350.52" y2="73.66" width="0.1524" layer="91"/>
<label x="353.06" y="73.66" size="1.778" layer="95"/>
</segment>
</net>
<net name="S1_12V" class="0">
<segment>
<pinref part="X3" gate="-1" pin="S"/>
<wire x1="365.76" y1="203.2" x2="350.52" y2="203.2" width="0.1524" layer="91"/>
<label x="353.06" y="203.2" size="1.778" layer="95"/>
</segment>
</net>
<net name="S1_RX" class="0">
<segment>
<pinref part="X3" gate="-2" pin="S"/>
<wire x1="365.76" y1="200.66" x2="350.52" y2="200.66" width="0.1524" layer="91"/>
<label x="353.06" y="200.66" size="1.778" layer="95"/>
</segment>
</net>
<net name="S1_TX" class="0">
<segment>
<pinref part="X3" gate="-3" pin="S"/>
<wire x1="365.76" y1="198.12" x2="350.52" y2="198.12" width="0.1524" layer="91"/>
<label x="353.06" y="198.12" size="1.778" layer="95"/>
</segment>
</net>
<net name="S1_5V" class="0">
<segment>
<pinref part="X3" gate="-4" pin="S"/>
<wire x1="365.76" y1="195.58" x2="350.52" y2="195.58" width="0.1524" layer="91"/>
<label x="353.06" y="195.58" size="1.778" layer="95"/>
</segment>
</net>
<net name="S1_AN_A" class="0">
<segment>
<pinref part="X3" gate="-5" pin="S"/>
<wire x1="365.76" y1="193.04" x2="350.52" y2="193.04" width="0.1524" layer="91"/>
<label x="353.06" y="193.04" size="1.778" layer="95"/>
</segment>
</net>
<net name="S1_AN_B" class="0">
<segment>
<pinref part="X3" gate="-6" pin="S"/>
<wire x1="365.76" y1="190.5" x2="350.52" y2="190.5" width="0.1524" layer="91"/>
<label x="353.06" y="190.5" size="1.778" layer="95"/>
</segment>
</net>
<net name="S2_RX" class="0">
<segment>
<pinref part="X5" gate="-2" pin="S"/>
<wire x1="365.76" y1="177.8" x2="350.52" y2="177.8" width="0.1524" layer="91"/>
<label x="353.06" y="177.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="S2_12V" class="0">
<segment>
<pinref part="X5" gate="-1" pin="S"/>
<wire x1="365.76" y1="180.34" x2="350.52" y2="180.34" width="0.1524" layer="91"/>
<label x="353.06" y="180.34" size="1.778" layer="95"/>
</segment>
</net>
<net name="S2_TX" class="0">
<segment>
<pinref part="X5" gate="-3" pin="S"/>
<wire x1="365.76" y1="175.26" x2="350.52" y2="175.26" width="0.1524" layer="91"/>
<label x="353.06" y="175.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="S2_5V" class="0">
<segment>
<pinref part="X5" gate="-4" pin="S"/>
<wire x1="365.76" y1="172.72" x2="350.52" y2="172.72" width="0.1524" layer="91"/>
<label x="353.06" y="172.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="S2_AN_A" class="0">
<segment>
<pinref part="X5" gate="-5" pin="S"/>
<wire x1="365.76" y1="170.18" x2="350.52" y2="170.18" width="0.1524" layer="91"/>
<label x="353.06" y="170.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="S2_AN_B" class="0">
<segment>
<pinref part="X5" gate="-6" pin="S"/>
<wire x1="365.76" y1="167.64" x2="350.52" y2="167.64" width="0.1524" layer="91"/>
<label x="353.06" y="167.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="S3_12V" class="0">
<segment>
<pinref part="X6" gate="-1" pin="S"/>
<wire x1="365.76" y1="157.48" x2="350.52" y2="157.48" width="0.1524" layer="91"/>
<label x="353.06" y="157.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="S3_RX" class="0">
<segment>
<pinref part="X6" gate="-2" pin="S"/>
<wire x1="365.76" y1="154.94" x2="350.52" y2="154.94" width="0.1524" layer="91"/>
<label x="353.06" y="154.94" size="1.778" layer="95"/>
</segment>
</net>
<net name="S3_TX" class="0">
<segment>
<pinref part="X6" gate="-3" pin="S"/>
<wire x1="365.76" y1="152.4" x2="350.52" y2="152.4" width="0.1524" layer="91"/>
<label x="353.06" y="152.4" size="1.778" layer="95"/>
</segment>
</net>
<net name="S3_5V" class="0">
<segment>
<pinref part="X6" gate="-4" pin="S"/>
<wire x1="365.76" y1="149.86" x2="350.52" y2="149.86" width="0.1524" layer="91"/>
<label x="353.06" y="149.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="S3_AN_A" class="0">
<segment>
<pinref part="X6" gate="-5" pin="S"/>
<wire x1="365.76" y1="147.32" x2="350.52" y2="147.32" width="0.1524" layer="91"/>
<label x="353.06" y="147.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="S3_AN_B" class="0">
<segment>
<pinref part="X6" gate="-6" pin="S"/>
<wire x1="365.76" y1="144.78" x2="350.52" y2="144.78" width="0.1524" layer="91"/>
<label x="353.06" y="144.78" size="1.778" layer="95"/>
</segment>
</net>
<net name="S4_12V" class="0">
<segment>
<pinref part="X7" gate="-1" pin="S"/>
<wire x1="365.76" y1="134.62" x2="350.52" y2="134.62" width="0.1524" layer="91"/>
<label x="353.06" y="134.62" size="1.778" layer="95"/>
</segment>
</net>
<net name="S4_RX" class="0">
<segment>
<pinref part="X7" gate="-2" pin="S"/>
<wire x1="365.76" y1="132.08" x2="350.52" y2="132.08" width="0.1524" layer="91"/>
<label x="353.06" y="132.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="S4_TX" class="0">
<segment>
<pinref part="X7" gate="-3" pin="S"/>
<wire x1="365.76" y1="129.54" x2="350.52" y2="129.54" width="0.1524" layer="91"/>
<label x="353.06" y="129.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="S4_5V" class="0">
<segment>
<pinref part="X7" gate="-4" pin="S"/>
<wire x1="365.76" y1="127" x2="350.52" y2="127" width="0.1524" layer="91"/>
<label x="353.06" y="127" size="1.778" layer="95"/>
</segment>
</net>
<net name="S4_AN_A" class="0">
<segment>
<pinref part="X7" gate="-5" pin="S"/>
<wire x1="365.76" y1="124.46" x2="350.52" y2="124.46" width="0.1524" layer="91"/>
<label x="353.06" y="124.46" size="1.778" layer="95"/>
</segment>
</net>
<net name="S4_AN_B" class="0">
<segment>
<pinref part="X7" gate="-6" pin="S"/>
<wire x1="365.76" y1="121.92" x2="350.52" y2="121.92" width="0.1524" layer="91"/>
<label x="353.06" y="121.92" size="1.778" layer="95"/>
</segment>
</net>
<net name="S5_12V" class="0">
<segment>
<pinref part="X8" gate="-1" pin="S"/>
<wire x1="365.76" y1="111.76" x2="350.52" y2="111.76" width="0.1524" layer="91"/>
<label x="353.06" y="111.76" size="1.778" layer="95"/>
</segment>
</net>
<net name="S5_RX" class="0">
<segment>
<pinref part="X8" gate="-2" pin="S"/>
<wire x1="365.76" y1="109.22" x2="350.52" y2="109.22" width="0.1524" layer="91"/>
<label x="353.06" y="109.22" size="1.778" layer="95"/>
</segment>
</net>
<net name="S5_TX" class="0">
<segment>
<pinref part="X8" gate="-3" pin="S"/>
<wire x1="365.76" y1="106.68" x2="350.52" y2="106.68" width="0.1524" layer="91"/>
<label x="353.06" y="106.68" size="1.778" layer="95"/>
</segment>
</net>
<net name="S5_5V" class="0">
<segment>
<pinref part="X8" gate="-4" pin="S"/>
<wire x1="365.76" y1="104.14" x2="350.52" y2="104.14" width="0.1524" layer="91"/>
<label x="353.06" y="104.14" size="1.778" layer="95"/>
</segment>
</net>
<net name="S5_AN_A" class="0">
<segment>
<pinref part="X8" gate="-5" pin="S"/>
<wire x1="365.76" y1="101.6" x2="350.52" y2="101.6" width="0.1524" layer="91"/>
<label x="353.06" y="101.6" size="1.778" layer="95"/>
</segment>
</net>
<net name="S5_AN_B" class="0">
<segment>
<pinref part="X8" gate="-6" pin="S"/>
<wire x1="365.76" y1="99.06" x2="350.52" y2="99.06" width="0.1524" layer="91"/>
<label x="353.06" y="99.06" size="1.778" layer="95"/>
</segment>
</net>
<net name="S6_12V" class="0">
<segment>
<wire x1="365.76" y1="88.9" x2="350.52" y2="88.9" width="0.1524" layer="91"/>
<label x="353.06" y="88.9" size="1.778" layer="95"/>
</segment>
</net>
<net name="S6_RX" class="0">
<segment>
<wire x1="365.76" y1="86.36" x2="350.52" y2="86.36" width="0.1524" layer="91"/>
<label x="353.06" y="86.36" size="1.778" layer="95"/>
</segment>
</net>
<net name="S6_TX" class="0">
<segment>
<wire x1="365.76" y1="83.82" x2="350.52" y2="83.82" width="0.1524" layer="91"/>
<label x="353.06" y="83.82" size="1.778" layer="95"/>
</segment>
</net>
<net name="S6_5V" class="0">
<segment>
<wire x1="365.76" y1="81.28" x2="350.52" y2="81.28" width="0.1524" layer="91"/>
<label x="353.06" y="81.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="S6_AN_A" class="0">
<segment>
<wire x1="365.76" y1="78.74" x2="350.52" y2="78.74" width="0.1524" layer="91"/>
<label x="353.06" y="78.74" size="1.778" layer="95"/>
</segment>
</net>
<net name="S6_AN_B" class="0">
<segment>
<wire x1="365.76" y1="76.2" x2="350.52" y2="76.2" width="0.1524" layer="91"/>
<label x="353.06" y="76.2" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
