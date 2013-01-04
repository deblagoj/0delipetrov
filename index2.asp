<!--#include file="header.asp" -->
<link href="css/default-eng.css" rel="stylesheet" type="text/css" />


<table cellSpacing="0" cellPadding="0" width="860" height="30" border="0">
<tr><td width="860" height="30" bgcolor="#ffffff"></td></tr></table>




<table cellSpacing="0" cellPadding="0" width="860" height="138" border="0"><tr>
<td width="27" height="138" bgcolor="#ffffff"></td>

<td width="283" height="138" bgcolor="#ffffff" class="style2" align="left" valign="top"><img src="design/strelka1.gif" border="0">
<font color="#257097", size="2"><b>Најнова понуда на <font color="#cb0909">ЛапТоп</font> Компјутери</b></font><br><br>
<font color="#646a72">Голем избор на ЛапТоп компјутерски конфигурации од познатите светските брендови: Acer, MSI, Fujitsu, Asus, HP и многу други.</font><br><br>


<a href="makedonski-kompjuteri-laptop.asp"><img src="design/kopce1.jpg" border="0"></a>
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
		
		



    Dim x, y, temp, serv, D, hits
    x = Trim(day(date()))
    D = Application( "serv" )
    
    if D = x Then
    Application( "hits" ) = Application( "hits" ) + 1
    Else
    
    Application( "hits" ) = 1
    
    End if
    y = x
    temp = y
    Application( "serv" ) = temp
	
	
%>



<td width="135" height="138" bgcolor="#ffffff"><img src="drop/<%= objdetali1("Slika") %>" width="135" height="138" border="0"></td>

<td width="136" height="138" bgcolor="#ffffff" class="style2" align="left" valign="top">
<font color="#257097"><b><% = objdetali1("ime")%></b></font><br>
<font color="#646a72"><% =objdetali1("specifikacija") %>.</font><br><br>
<font color="#646a72">цена: </font><font color="#d70c0c", size="2"><b><% =objdetali1("cena") %> ден.</b></font><br>
<font color="#257097">со вклучено ДДВ 5%</font></td>


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
<tr><td width="860" height="40" bgcolor="#ffffff" align="center">

<div id="telop">
<div id="telop-kocka">
<div id="telopot">
<iframe name="telopp" frameborder="0" width="760" height="30" scrolling="no" src="telop/nMk.php"></iframe>
</div>
</div>
</div>
</td></tr></table>



<table cellSpacing="0" cellPadding="0" width="860" height="10" border="0" bgcolor="#ffffff">
<tr><td></td></tr></table>











<table cellSpacing="0" cellPadding="0" width="860" height="38" border="0" background="design/slika4.jpg">
<tr>

<td width="60" height="38"></td>

<td width="13" height="38"><img src="design/strelka2.gif" border="0"></td>

<td width="267" height="38" class="style2" align="left" valign="middle">
<font color="#257097", size="2"><b>&nbsp;Изработка на Веб Решенија</b></font></td>

<td width="13" height="38" ><img src="design/strelka2.gif" border="0"></td>

<td width="527" height="38" class="style2" align="left" valign="middle">
<font color="#257097", size="2"><b>&nbsp;Компјутерска галантерија</b></font></td>
</tr></table>







<table cellSpacing="0" cellPadding="0" width="860" height="26" border="0" background="design/slika5.jpg">
<tr><td></td></tr></table>





































<table cellSpacing="0" cellPadding="0" width="860" height="273" border="0" bgcolor="#ffffff">
<tr>
<td width="28" height="273"></td>

<td width="275" height="273" bgcolor="#ffffff" class="style2" align="left" valign="top"><font color="#646a72">
Изработка на целосни веб-решенија со употреба на најновите технологии (ASP, Flash, HTML, Java Scripts, Ajax Scripts, PHP, Adobe Photoshop ...)</font><br><img src="design/vebstrani.jpg" border="0"><br>
<font color="#646a72">последно изработен проект:</font><a href="http://www.akustika.com.mk" target="_new"><font color="#c71010", size="2"><span style="text-decoration: underline;"><b> www.akustika.com.mk</b></span></font></a></td>

<td width="34" height="273"></td>

<td width="511" height="273" class="style2" align="left" valign="top"><font color="#646a72">
Делипетров ДООЕЛ Штип - располага со голем избор на компјутерска галантерија од најпознатите светски индустрии “ASUS”, “Microsoft”...</font><br><img src="design/galanterija.jpg" border="0">
<table cellSpacing="0" cellPadding="0" width="511" height="66" border="0"><tr>
<td width="16" height="66"></td>
<td width="164" height="66" class="style2" align="left" valign="top"><font color="#105f8c">
<img src="design/galanterijatocki.jpg" border="0">Хард дискови</br>
<img src="design/galanterijatocki.jpg" border="0">Графички картици</br>
<img src="design/galanterijatocki.jpg" border="0">Флеш мемории</br>
<img src="design/galanterijatocki.jpg" border="0">РС камери</br>
</font></td>
<td width="169" height="66" class="style2" align="left" valign="top"><font color="#105f8c">
<img src="design/galanterijatocki.jpg" border="0">Матични плочи</br>
<img src="design/galanterijatocki.jpg" border="0">Монитори</br>
<img src="design/galanterijatocki.jpg" border="0">Мрежна опрема</br>
<img src="design/galanterijatocki.jpg" border="0">Процесори</br>
</font></td>
<td width="162" height="66" class="style2" align="left" valign="top"><font color="#105f8c">
<img src="design/galanterijatocki.jpg" border="0">Печатари</br>
<img src="design/galanterijatocki.jpg" border="0">Скенери</br>
<img src="design/galanterijatocki.jpg" border="0">Мултимедија</br>
<img src="design/galanterijatocki.jpg" border="0">Каблови</br>
</font></td>
</tr></table>

</td>


<td width="12" height="273">


</td>

</tr></table>





































<table cellSpacing="0" cellPadding="0" width="860" height="22" border="0" bgcolor="#ffffff">
<tr>
<td width="303" height="22" align="right"><a href="makedonski-vebresenija.asp"><img src="design/kopce2.jpg" border="0"></a></td>
<td width="443" height="22">
<table cellSpacing="0" cellPadding="0" width="443" height="22" border="0"><tr><td class="style2" align="right" valign="middle">
<font color="#105f8c">ценовник во PDF формат:&nbsp;&nbsp;</font></td></tr></table></td>
<td width="114" height="22" align="left">
<a href="dokumenti/kompjuteri-galanterija.pdf" target="_new"><img src="design/kopce3.jpg" border="0"></a></td>
</tr></table>



<!--#include file="footer.asp" -->




















