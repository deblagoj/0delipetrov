<?php include("header.php"); ?>



<style type="text/css">
<!--
.style1 {
	font-size: 11px;
	color: #105f8c;
	font-family: Arial, Helvetica, sans-serif;
}
.style2 {
	font-size: 12px;
	color: #FFFFFF;
	font-family: Arial, Helvetica, sans-serif;
}
.style3 {
	color: #000000;
	font-weight: none;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
}
.kopce {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #ffffff;
	border: 2px solid #000000;
	font-weight: bold;
        background: #000000;
}
input,textarea{
background-color:#ffffff;
border: 1px solid #aaaaaa;
color: #000000;
margin: 2px;
}
A:link {text-decoration: none; font-weight:bold;}
A:visited {text-decoration: none; color: #faecb6; font-weight:bold;}
A:hover {text-decoration: underline; color: #faecb6; font-weight:bold;}
-->
</style>











<table cellSpacing="0" cellPadding="0" width="860" height="10" border="0">
<tr><td width="860" height="10" bgcolor="#ffffff"></td></tr></table>





























<table cellSpacing="0" cellPadding="0" width="860" height="57" border="0" background="design/naslovi.jpg">
<tr><td width="70">
<td width="790" height="57" align="left" valign="middle" class="style2"><font color="#105f8c", size="2"><b>
Контакт Информации </b><font size="2">&nbsp;&nbsp;Делипетров </font></font></td></tr></table>



<table cellSpacing="0" cellPadding="0" width="860" height="30" border="0">
<tr><td width="860" height="30" bgcolor="#ffffff"></td></tr></table>



<table cellSpacing="0" cellPadding="0" width="860" border="0" bgcolor="#ffffff" >
<tr>

<td width="30"></td>
<td width="360" align="center" valign="top" >

 <table border=0 cellpadding="0" cellspacing="0"> <tr> 
<?php
function spamcheck($field)
  {
  //filter_var() sanitizes the e-mail
  //address using FILTER_SANITIZE_EMAIL
  $field=filter_var($field, FILTER_SANITIZE_EMAIL);

  //filter_var() validates the e-mail
  //address using FILTER_VALIDATE_EMAIL
  if(filter_var($field, FILTER_VALIDATE_EMAIL))
    {
    return TRUE;
    }
  else
    {
    return FALSE;
    }
  }

if (isset($_REQUEST['email']))
  {//if "email" is filled out, proceed

  //check if the email address is invalid
  $mailcheck = spamcheck($_REQUEST['email']);
  if ($mailcheck==FALSE)
    {
    echo "<font color='#105f8c', size='3' <b>Обидете се повторно<p> </p>";
    }
  else
      {//send email
    $email = $_REQUEST['email'] ;
    $subject = $_REQUEST['subject'] ;
    $message = $_REQUEST['message'] ;
	
$headers = "MIME-Version: 1.0\r\n";
$headers .= "Content-type: text/html; charset=utf-8\r\n";

/* additional headers */
$headers .= "From: ". $email. "\r\n";  

    mail("blagoj@delipetrov.com", $subject,    $message, $headers );
	//mail("ilinka@delipetrov.mk", $subject,    $message, $headers );
    echo "<font color='#105f8c', size='3' <b>Your message is successfully sent <p> </p>";
    }
  }
else
  {//if "email" is not filled out, display the form


echo" <form name='form' method='post' action='contact-mk.php'>
<td> 

<table  width='360' border='0' cellspacing='0' class='style1'>

<tr> 
<td width=360 align=left><font size='2'>&nbsp;ЕMail:</font><br>
<input name='email' type='text' class='style3' style='background-color:#fefdfc;' size='50'></td>
</tr>

<tr> 
<td width=360 align=left><font size='2'>&nbsp;Наслов:</font><br>
<input name='subject' type='text' class='style3' style='background-color:#fefdfc;' size='50'></td>
</tr>

<tr> 
<td width=360 align=left><font size='2'>&nbsp;Коментар:</font><br>
<textarea name='message'  cols='60' rows='11' class='style3' style='background-color:#fefdfc;'></textarea></td>
</tr>

<tr> 
<td height=10></td>
</tr>

<tr>
<td width=360 align=center><input name='Submit' type='submit' class='kopce' onClick='MM_validateForm('ИМЕ И ПРЕЗИМЕ','','R','Е-МАИЛ','','RisEmail');return document.MM_returnValue' value='Испрати'>&nbsp;&nbsp;&nbsp;<input name='Submit2' type='reset' class='kopce' value='Избриши'></td>
</tr>
</table>

</td></form>
</tr></table>

";
  }
?>






</td>


<td width="10"></td>

<td width="460" align="left" valign="top" class="style1">
<font color="#646a72", size="2">За подетални информации за нашите услуги кои што ги нудиме ( Продажба на компјутерски конфигурации и компјутерска галерија, Изработка на веб-решенија, ГИС - проекти, хардвер/софтвер, податоци, и сл. ) контактирајте не на следниве информации:</font><br><br>

<table cellSpacing="0" cellPadding="0" width="460" border="0"><tr>
<td width="1"></td>
<td width="153" align="left" valign="top"><font color="#646a72", size="2">
<font color="#257097"><b>Адреса:</b></font><br>Ул. Пиринска бб ц/4<br>2000 Штип<br>Р.Македонија</font></td>
<td width="153" align="left" valign="top"><font color="#646a72", size="2">
<font color="#257097"><b>Телефони:</b></font><br>++ 398 32 388 880<br>++ 389 70 252 774</font></td>
<td width="153" align="left" valign="top"><font color="#646a72", size="2">
<font color="#257097"><b>Е-маил:</b></font><br>ilinka@delipetrov.mk<br>delipetrov@gmail.com</font></td>
</tr></table><br><br>

<font color="#646a72", size="2">Доколку сакате може да не контактирате и преку нашата онлајн е-маил форма внесувајќи ги бараните информации.</font><br><br>
<font color="#646a72", size="2">На сите ваши прашања одговараме во рок од 24 часа.<br>Повелете ве очекуваме.</font><br>

</td>



<td width="20">








</td></tr></table>






























<table cellSpacing="0" cellPadding="0" width="860" height="114" border="0" background="design/footer.jpg">
<tr>
<td width="430" height="114" align="right"></td>
<td width="430" height="114" align="right" class="style2"><br><br>

<a href="index.asp"><font color="#105f8c"><b>Почетна</b></font></a>
<font color="#105f8c"><b> | </b></font>
<a href="makedonski-vebresenija.asp"><font color="#105f8c"><b>Веб Решенија</b></font></a>
<font color="#105f8c"><b> | </b></font>
<a href="makedonski-gis-proekti.asp"><font color="#105f8c"><b>ГИС Проекти</b></font></a>
<font color="#105f8c"><b> | </b></font>
<a href="makedonski-kontakt.html"><font color="#105f8c"><b>Контакт</b></font></a>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></font><br><br>
<span class="style1"><font color="#353535">Copyright © 2009 Delipetrov.com All rights reserved&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font><br>
<font color="#105f8c"><b>Professional Company | Delipetrov™&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></font></span></td>
</tr></table>






















</tr></table>










<table cellSpacing="0" cellPadding="0" width="860" height="20" border="0">
<tr><td></td></tr></table>



</body>
</html>
