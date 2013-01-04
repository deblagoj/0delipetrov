<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%
 
   Dim objConn  
  Set objConn = Server.CreateObject("ADODB.Connection")
  	
	objConn.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Inetpub\wwwroot\delipetrov\nova.mdb;User Id=admin;Password=;"   '--- za na hdd 

dim sql1,obj1
dim objDetali1,detsql
sql1= "select mmid from MMdata"
set obj1= server.CreateObject("ADOdb.Recordset")
obj1.open sql1, ObjConn, AdOpenForwardOnly ', AdOpenForwardOnly, adLockReadOnly ', adCmdText ', AdOpenForwardOnly, adLockReadOnly, adCmdText 
set objdetali1= server.CreateObject("AdoDb.recordset")
	
while not obj1.eof  
	
		  detSQL="select * from MMdata  WHERE  MMid="&obj1("mmid")&""
		objdetali1.open detsql,objconn, AdOpenForwardOnly ',adopenforwardonly,adopenforwardonly,adlockreadonly,adcmdtext ',adopenforwardonly,adlockreadonly,adcmdtext	
	
	response.write " <hr><p> <br>Име = "& objdetali1("ime") &"  <br>   Екстензија = "&objdetali1("ekstenzija")& _
	"    <br> Патека = <a href ='" & objdetali1("pateka") & "'>"& objdetali1("pateka") & "</a>" &  _
	"   <br>  Компресија = " &objdetali1("kompresijaDANE") & _
	"      <br>Компресија тип = " & objdetali1("kompresijatip") & "   <br>   Големина =  " & objdetali1("golemina") & _
	"  <br>    Кeywords   = "& objdetali1("keywords")  	
	objdetali1.close
	
dim strpom1

	
	'strpom1="<p> <br>Име = "& objdetali1("ime") &" "
	
	'response.write strpom1
	
obj1.movenext


wend
%>


<title>Untitled Document</title>
</head>

<body>

</body>
</html>
