<!--#include file="header-en.asp" -->
<link href="css/default-eng.css" rel="stylesheet" type="text/css" />

<p>&nbsp;</p>
<table cellSpacing="0" cellPadding="0" width="860" height="30" border="0">
<tr><td width="860" height="30" bgcolor="#ffffff"></td></tr></table>




<table cellSpacing="0" cellPadding="0" width="860" height="138" border="0"><tr>
<td width="27" height="138" bgcolor="#ffffff"></td>

<td width="283" height="138" bgcolor="#ffffff" class="style2" align="left" valign="top"><img src="design/strelka1.gif" border="0">
<font color="#257097", size="2"><b> 	Best offer for  <font color="#cb0909">Laptop </font> computers </b></font><br>
<br>
<font color="#646a72">Broad offer of Laptop computers configuration of the world best brands: Asus, HP, Acer, MSI, Fujitsu Siemens, HP and others</font><br><br>
<a href="en-kompjuteri-laptop.asp"><img src="design/kopce1eng.jpg" border="0"></a>
</td>
<%



dim sql1,obj1
dim objDetali1,detsql
sql1= "select id from naj"
set obj1= server.CreateObject("ADOdb.Recordset")
obj1.open sql1, ObjConn, AdOpenForwardOnly 
set objdetali1= server.CreateObject("AdoDb.recordset")
	
while not obj1.eof  
	dim strpom1
		  detSQL="select * from naj  WHERE  id="&obj1("id")&""
		objdetali1.open detsql,objconn, AdOpenForwardOnly 
	

%>
<td width="135" height="138" bgcolor="#ffffff"><img src="drop/<%= objdetali1("Slika") %>" width="135" height="138" border="0"></td>

<td width="136" height="138" bgcolor="#ffffff" class="style2" align="left" valign="top">
<font color="#257097"><b><% = objdetali1("ime")%></b></font><br>
<font color="#646a72"><% =objdetali1("specifikacija") %>.</font><br><br>
<font color="#646a72">price: </font><font color="#d70c0c", size="2"><b><% =objdetali1("cena") %>
den .</b></font><br>
<font color="#257097">including VAT 5%</font></td>


<%
	
objdetali1.close
	

obj1.movenext


wend

%>
<td width="8" height="138" bgcolor="#ffffff"></td>
</tr></table>


















<table cellSpacing="0" cellPadding="0" width="860" height="5" border="0" bgcolor="#ffffff">
<tr><td></td></tr></table>


<table cellSpacing="0" cellPadding="0" width="860" height="30" border="0">
<tr>
  <td width="860" height="40" bgcolor="#ffffff" align="center">
  <div id="telop">
<div id="telop-kocka">
<div id="telopot">
<iframe name="telopp" frameborder="0" width="760" height="30" scrolling="no" src="telop/nMk.php"></iframe>
</div>
</div>
</div>
  
  </td>
</tr></table>



<table cellSpacing="0" cellPadding="0" width="860" height="10" border="0" bgcolor="#ffffff">
<tr><td></td></tr></table>











<table cellSpacing="0" cellPadding="0" width="860" height="38" border="0" background="design/slika4.jpg">
<tr>

<td width="60" height="38"></td>

<td width="13" height="38"><img src="design/strelka2.gif" border="0"></td>

<td width="267" height="38" class="style2" align="left" valign="middle">
<font color="#257097", size="2"><b>&nbsp;Development of web solutions </b></font></td>

<td width="13" height="38" ><img src="design/strelka2.gif" border="0"></td>

<td width="527" height="38" class="style2" align="left" valign="middle">
<font color="#257097", size="2"><b>&nbsp;Computer accessories </b></font></td>
</tr></table>







<table cellSpacing="0" cellPadding="0" width="860" height="26" border="0" background="design/slika5.jpg">
<tr><td></td></tr></table>





































<table cellSpacing="0" cellPadding="0" width="860" height="273" border="0" bgcolor="#ffffff">
<tr>
<td width="28" height="273"></td>

<td width="275" height="273" bgcolor="#ffffff" class="style2" align="left" valign="top"><font color="#646a72">
Development of web solutions using latest ICT technologies (ASP, Flash, HTML, Java Scripts, Ajax Scripts, PHP, Adobe Photoshop ... )</font><br><img src="design/vebstrani.jpg" border="0"><br>
<font color="#646a72">Last finished project </font><a href="http://www.akustika.com.mk" target="_new"><font color="#c71010", size="2"><span style="text-decoration: underline;"><b> www.akustika.com.mk</b></span></font></a></td>

<td width="34" height="273"></td>

<td width="511" height="273" class="style2" align="left" valign="top"><font color="#646a72">
Delipetrov DOOEL Stip – offers broad choice of computer accessories from the best world’s brands Asus, Microsoft, HP ….</font><br><img src="design/galanterija.jpg" border="0">
<table cellSpacing="0" cellPadding="0" width="511" height="66" border="0"><tr>
<td width="16" height="66"></td>
<td width="164" height="66" class="style2" align="left" valign="top"><font color="#105f8c">
<img src="design/galanterijatocki.jpg" border="0">Hard drives</br>
<img src="design/galanterijatocki.jpg" border="0">Graphics cards</br>
<img src="design/galanterijatocki.jpg" border="0">Flash memory</br>
<img src="design/galanterijatocki.jpg" border="0">PC cameras</br>
</font></td>
<td width="169" height="66" class="style2" align="left" valign="top"><font color="#105f8c">
<img src="design/galanterijatocki.jpg" border="0">Mother boards</br>
<img src="design/galanterijatocki.jpg" border="0">Monitors</br>
<img src="design/galanterijatocki.jpg" border="0">Network equipment</br>
<img src="design/galanterijatocki.jpg" border="0">Processors</br>
</font></td>
<td width="162" height="66" class="style2" align="left" valign="top"><font color="#105f8c">
<img src="design/galanterijatocki.jpg" border="0">Printers</br>
<img src="design/galanterijatocki.jpg" border="0">Scanners</br>
<img src="design/galanterijatocki.jpg" border="0">Multimedia devices</br>
<img src="design/galanterijatocki.jpg" border="0">Cables</br>
</font></td>
</tr></table>

</td>


<td width="12" height="273"></td>

</tr></table>





































<table cellSpacing="0" cellPadding="0" width="860" height="22" border="0" bgcolor="#ffffff">
<tr>
<td width="303" height="22" align="right"><a href="en-vebresenija.asp"><img src="design/kopce2eng.jpg" border="0"></a></td>
<td width="443" height="22">
<table cellSpacing="0" cellPadding="0" width="443" height="22" border="0"><tr><td class="style2" align="right" valign="middle">
<font color="#105f8c">price list in PDF:&nbsp;&nbsp;</font></td></tr></table></td>
<td width="114" height="22" align="left">
<a href="dokumenti/kompjuteri-galanterija.pdf" target="_new"><img src="design/kopce3.jpg" border="0"></a></td>
</tr></table>


<!--#include file="footer-en.asp" -->




















