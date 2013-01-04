<!--#include file="header.asp" -->


<table cellSpacing="0" cellPadding="0" width="860" height="10" border="0">
<tr><td width="860" height="10" bgcolor="#ffffff"></td></tr></table>






























<table cellSpacing="0" cellPadding="0" width="860" height="57" border="0" background="design/naslovi.jpg">
<tr><td width="70">
<td width="790" height="57" align="left" valign="middle" class="style2"><font color="#105f8c", size="2"><b>
Принтери </b><font size="2">&nbsp;&nbsp;( продажба )</font></font></td>
</tr></table>






<table cellSpacing="0" cellPadding="0" width="860" border="0">
<tr><td width="860" bgcolor="#ffffff" align="center" valign="top" >






<table cellSpacing="0" cellPadding="0" width="800" border="0">
<tr><td width="800" bgcolor="#ffffff" align="left" valign="top" class="style2">

<br>
<table cellSpacing="0" cellPadding="0" width="800" height="22" border="0" bgcolor="#ffffff"><tr>
  <td align="left" valign="top" class="style2"><font color="#646a72">
Продажба на принтери.</font></td>
</tr></table>




<table cellSpacing="0" cellPadding="0" width="800" height="22" border="0" bgcolor="#ffffff">
<tr><td width="800" height="22">
<table cellSpacing="0" cellPadding="0" width="710" height="22" border="0"><tr><td class="style2" align="right" valign="middle">
<font color="#105f8c">ценовник во PDF формат:&nbsp;&nbsp;</font></td></tr></table></td>
<td width="90" height="22" align="left">
<table cellSpacing="0" cellPadding="0" width="90" height="22" border="0"><tr><td>
<a href="dokumenti/kompjuteri-laptop.pdf" ><img src="design/kopce3.jpg" border="0"></a></td></tr></table>
</td></tr></table>




<table cellSpacing="0" cellPadding="0" width="800" border="0"><tr>

<td width="790" height="400"  align="left" valign="top"><br>
<%

dim sql1,obj1
dim objDetali1,detsql
sql1= "select id from Printeri"
set obj1= server.CreateObject("ADOdb.Recordset")
obj1.open sql1, ObjConn, AdOpenForwardOnly 
set objdetali1= server.CreateObject("AdoDb.recordset")
	
while not obj1.eof  
	dim strpom1
		  detSQL="select * from Printeri  WHERE  id="&obj1("id")&""
		objdetali1.open detsql,objconn, AdOpenForwardOnly 
	

%>



<table  cellSpacing=0 cellPadding=0 width=800 border=0> <TR >
<td width="220" height="170" align="right" valign="top"><img src="drop/<%= objdetali1("Slika") %>" border="0" width="220" height="170"></td>
<td width="570" height="170" class="style2" align="left" valign="top"><br>
<img src="design/strelka1.gif" border="0"><font color="#105f8c", size="2"><b> <% = objdetali1("ime")%> </b><br>
<table cellSpacing="0" cellPadding="0" height="8" border="0"><tr><td></td></tr></table>
<font color="#646a72"> <% =objdetali1("specifikacija") %></font><br><br><br> 
цена: <font color="#d70c0c", size="2"><b> <% =objdetali1("cena")  %> денари </b></font>
<font color="#646a72"> - со пресметано ДДВ 5%</font></font></td></tr></table> 
<img src=design/izmegju.jpg border=0>

		
<%
	
objdetali1.close
	

obj1.movenext


wend

%>







</td></tr></table>













<table cellSpacing="0" cellPadding="0" width="1" height="30" border="0"><tr><td></td></tr></table>











</td></tr></table>

</td></tr></table>








































<!--#include file="footer.asp" -->
