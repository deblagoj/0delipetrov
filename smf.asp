
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html40/loose.dtd">
<html><head>
<meta name="ROBOTS" content="INDEX, ALL, FOLLOW">
<meta NAME="revisit-after" CONTENT="2 days">
<meta name="description" content="Компјутерска опрема по најповолни цени во Македонија. Голем избор на комјутерска галантерија. Изработка на веб решенија.">
<meta name="keywords" content="компјутери, лаптоп, флеш мемории">
<title>Делипетров - Штип</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<%
Dim objMail
Set objMail = CreateObject("CDONTS.Newmail")
objMail.TO = "deblagoj1@yahoo.com"
objMail.From = "ilinka.delipetreva@gmail.com" ' You can send anonimous 'mail if you so choose
objmail.Subject = "HTML EMAIL!"
objMail.MailFormat = cdoMailFormatMime
objMail.BodyFormat = cdoBodyFormatHTML
objMail.Body = "<html><body><p align='center'><b>Hey there!</b></p><p align='center'><b>This is a html doc in your Email!!!!</b></p><p align='center'>&nbsp;</p><p align='center'>&nbsp;</p><p align='center'><i><u>We kick the Llamas Ass!!!!</u></i></p></body></html>"
objMail.send
set objMail = Nothing
%>
