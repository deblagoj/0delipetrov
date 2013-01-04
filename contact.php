<?php include("header-en.php"); ?>

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
Contact Information  </b><font size="2">&nbsp;&nbsp;Delipetrov </font></font></td></tr></table>



<table cellSpacing="0" cellPadding="0" width="860" height="30" border="0">
<tr><td width="860" height="30" bgcolor="#ffffff"></td></tr></table>



<table cellSpacing="0" cellPadding="0" width="860" border="0" bgcolor="#ffffff" >
<tr>

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
    echo "<font color='#105f8c', size='3' <b>Try again<p> </p>";
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

    mail("blagoj@delipetrov.com", $subject,
    $message, $headers );
	//mail("ilinka@delipetrov.mk", $subject,    $message, $headers );
    echo "<font color='#105f8c', size='3' <b>Your message is successfully sent <p> </p>";
    }
  }
else
  {//if "email" is not filled out, display the form


echo" <form name='form' method='post' action='contact.php'>
<td> 

<table  width='360' border='0' cellspacing='0' class='style1'>

<tr> 
<td width=360 align=left><font size='2'>&nbsp;Email:</font><br>
<input name='email' type='text' class='style3' style='background-color:#fefdfc;' size='50'></td>
</tr>

<tr> 
<td width=360 align=left><font size='2'>&nbsp;Title:</font><br>
<input name='subject' type='text' class='style3' style='background-color:#fefdfc;' size='50'></td>
</tr>

<tr> 
<td width=360 align=left><font size='2'>&nbsp;Body:</font><br>
<textarea name='message'  cols='60' rows='11' class='style3' style='background-color:#fefdfc;'></textarea></td>
</tr>

<tr> 
<td height=10></td>
</tr>

<tr>
<td width=360 align=center><input name='Submit' type='submit' class='kopce' onClick='MM_validateForm('ИМЕ И ПРЕЗИМЕ','','R','Е-МАИЛ','','RisEmail');return document.MM_returnValue' value='Send'>&nbsp;&nbsp;&nbsp;<input name='Submit2' type='reset' class='kopce' value='Erase'></td>
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
<font color="#646a72", size="2">For detailed information about our services you can contact us on following addresses and telephones:</font><br><br>

<table cellSpacing="0" cellPadding="0" width="460" border="0"><tr>
<td width="1"></td>
<td width="153" align="left" valign="top"><font color="#646a72", size="2">
<font color="#257097"><b>Address:</b></font><br>St. Pirinska bb c/4<br>2000 Stip<br>Republic of Macedonia</font></td>
<td width="153" align="left" valign="top"><font color="#646a72", size="2">
<font color="#257097"><b>Тel:</b></font><br>++ 398 32 388 880<br>++ 389 70 252 774</font></td>
<td width="153" align="left" valign="top"><font color="#646a72", size="2">
<font color="#257097"><b>Emails:</b></font><br>ilinka@delipetrov.mk<br>delipetrov@gmail.com</font></td>
</tr></table><br><br>

<font color="#646a72", size="2">You can contact us using online form .</font><br><br>
<font color="#646a72", size="2">On your request we will answer in the next 24 hours.<br></font><br>

</td>



<td width="20">








</td></tr></table>




















<?php include("footer-en.php"); ?>