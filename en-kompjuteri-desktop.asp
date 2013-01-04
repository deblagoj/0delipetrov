<!--#include file="header-en.asp" -->
<table cellSpacing="0" cellPadding="0" width="860" height="10" border="0">
<tr><td width="860" height="10" bgcolor="#ffffff"></td></tr></table>






























<table cellSpacing="0" cellPadding="0" width="860" height="57" border="0" background="design/naslovi.jpg">
<tr><td width="70">
<td width="790" height="57" align="left" valign="middle" class="style2"><font color="#105f8c", size="2"><b>
Desktop configurations  </b><font size="2">&nbsp;&nbsp;( Sale )</font></font></td></tr></table>






<table cellSpacing="0" cellPadding="0" width="860" border="0">
<tr><td width="860" bgcolor="#ffffff" align="center" valign="top" >






<table cellSpacing="0" cellPadding="0" width="800" border="0">
<tr><td width="800" bgcolor="#ffffff" align="left" valign="top" class="style2">

<br>
<table cellSpacing="0" cellPadding="0" width="800" height="22" border="0" bgcolor="#ffffff"><tr><td align="left" valign="top" class="style2"><font color="#646a72">
Large choice of desktop configurations with the best prices. All desktop systems have 2 years warranty. First software service is free. 

<br>
<font color="#d70c0c", size="2">Prices include 5% VAT</font></font></td></tr></table>




<table cellSpacing="0" cellPadding="0" width="800" height="22" border="0" bgcolor="#ffffff">
<tr><td width="800" height="22">
<table cellSpacing="0" cellPadding="0" width="710" height="22" border="0"><tr><td class="style2" align="right" valign="middle">
<font color="#105f8c">price list in PDF:&nbsp;&nbsp;</font></td></tr></table></td>
<td width="90" height="22" align="left">
<table cellSpacing="0" cellPadding="0" width="90" height="22" border="0"><tr><td>
<a href="dokumenti/kompjuteri-desktop.pdf" target="_new"><img src="design/kopce3.jpg" border="0"></a></td></tr></table>
</td></tr></table>




<%


dim sql1,obj1
dim objDetali1,detsql
sql1= "select id from Desktop"
set obj1= server.CreateObject("ADOdb.Recordset")
obj1.open sql1, ObjConn, AdOpenForwardOnly 
set objdetali1= server.CreateObject("AdoDb.recordset")
	
while not obj1.eof  
	dim strpom1
		  detSQL="select * from Desktop  WHERE  id="&obj1("id")&""
		objdetali1.open detsql,objconn, AdOpenForwardOnly 
	

%>





<table cellSpacing="0" cellPadding="0" width="800" border="0"><tr>
<td width="220" height="170" align="right" valign="middle"><img src="drop/<%= objdetali1("Slika") %>" border="0" width="220" height="170"></td>
<td width="570" height="170" class="style2" align="left" valign="top"><br>
<font color="#105f8c", size="2"><b><% = objdetali1("ime")%></b></font><br>
<table cellSpacing="0" cellPadding="0" height="8" border="0"><tr><td></td></tr></table>
<font color="#646a72">
<img src="design/strelka1.gif" border="0"><font color="#105f8c">Mother board:</font> <% = objdetali1("maticna")%> <br>
<img src="design/strelka1.gif" border="0"><font color="#105f8c">Memory:</font> <% = objdetali1("memorija")%><br>
<img src="design/strelka1.gif" border="0"><font color="#105f8c">Graphics card:</font> <% = objdetali1("graficka")%><br>
<img src="design/strelka1.gif" border="0"><font color="#105f8c">Hard drive:</font> <% = objdetali1("hard_disk")%><br>
<img src="design/strelka1.gif" border="0"><font color="#105f8c">Optical device:</font><% = objdetali1("opticki_ured")%><br>
<img src="design/strelka1.gif" border="0"><font color="#105f8c">Case:</font> <% = objdetali1("kukiste")%><br>
<% = objdetali1("dodatoci")%></font><br><br>
<table cellSpacing="0" cellPadding="0" width="570" border="0" class="style2"><tr>
<td width="150" align="left"><font color="#105f8c">price: </font><font color="#d70c0c", size="2"><b>
<% = objdetali1("cena1")%> den.</b></font></td>
<td width="420" align="left"><font color="#105f8c">with processor:</font>&nbsp;&nbsp;&nbsp;<font color="#646a72"><% = objdetali1("procesor1")%></font>
</td></tr></table>

<table cellSpacing="0" cellPadding="0" width="570" border="0" class="style2"><tr>
<td width="150" align="left"><font color="#105f8c">price: </font><font color="#d70c0c", size="2"><b>
<% = objdetali1("cena2")%> den.</b></font></td>
<td width="420" align="left"><font color="#105f8c">with processor:</font>&nbsp;&nbsp;&nbsp;<font color="#646a72">
<% = objdetali1("procesor2")%></font>
</td></tr></table>
<table cellSpacing="0" cellPadding="0" width="570" border="0" class="style2"><tr>
<td width="150" align="left"><font color="#105f8c">price: </font><font color="#d70c0c", size="2"><b>
<% = objdetali1("cena3")%> den.</b></font></td>
<td width="420" align="left"><font color="#105f8c">with processor:</font>&nbsp;&nbsp;&nbsp;<font color="#646a72"><% = objdetali1("procesor3")%></font>
</td></tr></table>
</font>
</td></tr></table>


<img src="design/izmegju.jpg" border="0">
<%
	
objdetali1.close
	

obj1.movenext


wend

%>







<table cellSpacing="0" cellPadding="0" width="1" height="20" border="0"><tr><td></td></tr></table>

<table cellSpacing="0" cellPadding="0" width="800" height="22" border="0" bgcolor="#ffffff"><tr><td align="right" valign="top" class="style2"><font color="#646a72">
<br>
For complete offer download the price list in  
 <a href="dokumenti/kompjuteri-desktop.pdf" target="_new"><span style="text-decoration: underline;"><font color="#d70c0c", size="2"><b>PDF file.</b></font></span></a></font></td></tr></table>



<table cellSpacing="0" cellPadding="0" width="1" height="30" border="0"><tr><td></td></tr></table>











</td></tr></table>

</td></tr></table>


<!--#include file="footer-en.asp" -->

