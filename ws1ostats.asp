<%Option Explicit%>

<!-- ws1ostats.asp -->

<!-- simple ASP routines to show you how to play with Web server info/stats & browser data, and capture various counter info -->

<!-- this works with my Windows 2000 Advanced Server, I have no idea what else it will (or won't) work with -->

<!-- use the Counter.mdb Access 2000 database as a sample, I put it in my Server's \Inetpub folder -->

<!-- created by Brian Battles WS1O (brianb@cmtelephone.com) on September 9, 2001...with plenty of ideas and snippets from various other people's code -->

<!-- This is free software, no copyright, etc, use/modify this freely as you see fit -->



<!-- okay, now let's look into the code... -->



<!-- this lets you use the ADO Constants that come with Microsoft IIS; just make sure this file exists in your Web site's root folder -->

<!--#include virtual="/adovbs.inc"--> 




<!-- now let's create a 14-day cookie so that we can keep track of this User for 2 weeks -->

<%

Response.Cookies("userInformation")("LastVisit") = Date
Response.Cookies("UserInformation")("UserAgentString") = Request.ServerVariables("HTTP_USER_AGENT")
Response.Cookies("UserInformation")("UserIPAddress") = Request.ServerVariables("REMOTE_ADDR")
Response.Cookies("UserInformation").Expires = Date + 14

%>

<%

    <!-- ADO recordset variables -->
    Dim SQL, rs, rsCount, sMDB, Conn, strSQL, iCount

    <!-- counter result variables -->
    Dim iCountToday, iCountThisWeek, iCountThisMonth, iCountThisYear, iCountThisuser, iCountAllHits, iCountUsers

    <!-- Server Variables -->
    dim sPath, sUserIP, sSessID, sCookie, sPreviousSite, sSite

    <!-- get the server variables -->
    sPath = Request.ServerVariables ("PATH_INFO")
    sSite = Request.ServerVariables ("SERVER_NAME")
    sUserIP = Request.ServerVariables ("REMOTE_ADDR")
    sCookie = Request.ServerVariables ("HTTP_COOKIE")
    sPreviousSite = Request.ServerVariables ("HTTP_REFERER")

    <!-- and grab the Server's SessionID for this visit -->
    sSessID = Session.SessionID

    <!-- change the value in SMDB to your own database file/path -->
    sMDB = ("c:\inetpub\counter.mdb")
    <!-- this instantiates our ADO recordset -->
    set Conn = server.CreateObject("adodb.connection")
    <!-- next we have to create a valid ADO connection string; this is easy for MS Access -->
   ' Conn.open "driver={Microsoft Access Driver (*.mdb)};dbq=" & sMDB & ";uid=Admin"

Path = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="
Path = Path & Server.MapPath("\access_db\counter.mdb")  & ";Mode=ReadWrite;Persist Security Info=False"

Conn.Open Path

    <!-- if we select records that have the current SessionID, then we won't count this Visit more than once -->
    <!--   because we don't add a new record to the database until this Session has expired -->
    SQL = "SELECT * FROM tblCounter WHERE SessionID = '" & sSessID & "' AND PATH = '" & sPath & "'"
    Set rs = Server.CreateObject("adodb.recordset")
    rs.Open SQL, Conn, adOpenDynamic, AdLockOptimistic


    sPath = sSite & SPath
    
    <!-- if the recordset has any data, we don't write a new record (user could have simply reloaded the page) -->
    If rs.EOF Then
        <!-- let's write a record of this visit to our hit counter database -->
        rs.AddNew
        rs("Hits")= 1
        rs("Date") = Date()
        rs("Time") = Time()
        rs("Path") = sPath
        rs("RemAddress") = sUserIP
        rs("SessionID") = sSessID
        rs.Update
        rs.Close
    End If

%>


<!-- up to now, none of this has been real HTML, so now we get some basic HTML going -->
	
<html>

<head>

<title>

WS1O's Way Cool ASP Web Counter & Stats !

</title>

</head>

<body>

<font face="Tahoma, Verdana,A rial, Helvetica, MS Sans Serif, Sans Serif, Geneva" size="2" color="magenta">

<p align="center">

Thanks for stopping by ...

<!-- okay, here comes our ASP database code to display stuff on the Web page -->

<%

<!-- let's get the various flavors of hit counts -->

<!-- this query only gets hits to THIS page from THIS user -->
strSQL = "SELECT SUM (Hits) AS CountofHits FROM tblCounter WHERE Path = '" & sPath & "' AND RemAddress = '" & sUserIP & "'"

Set RS = Conn.Execute(strSQL)

iCountThisUser = rs("CountofHits")

<!-- this query gets ALL hits to THIS page from ALL users -->
strSQL = "SELECT SUM (Hits) AS CountofHits FROM tblCounter WHERE Path = '" & sPath &"'"

Set RS = Conn.Execute(strSQL)

iCountAllHits = rs("CountofHits")

<!-- this query gets ALL hits to this page from ALL users for today's date -->
strSQL = "SELECT SUM (Hits) AS CountofHits FROM tblCounter WHERE Path = '" & sPath & "' AND Date = #" & Date() & "#"

Set RS = Conn.Execute(strSQL)

iCountToday = rs("CountofHits")

<!-- this query gets ALL hits to this page from ALL users for the past 7 days -->
strSQL = "SELECT Hits, Date FROM tblCounter GROUP BY Hits, Date, SessionID, Path HAVING Date Between (Date()) And (Date()-7) AND Path = '" & sPath & "'"

Set rsCount = Server.CreateObject("adodb.recordset")
rsCount.Open strSQL, Conn, adOpenKeyset

iCountThisWeek = rsCount.RecordCount
rsCount.Close

<!-- this query gets ALL hits to this page from ALL users for the past month -->
strSQL = "SELECT Sum(Hits) AS SumOfHits FROM tblCounter GROUP BY DatePart('m',[Date]), Path HAVING DatePart('m',[Date])=DatePart('m',Date()) AND Path = '" & sPath & "'"

Set rsCount = Conn.Execute(strSQL)
iCountThisMonth = rsCount("SumOfHits")
rsCount.Close

<!-- this query gets ALL hits to this page from ALL users for the past year -->
strSQL = "SELECT Sum(Hits) AS SumOfHits FROM tblCounter GROUP BY DatePart('yyyy',[Date]), Path HAVING DatePart('yyyy',[Date])=DatePart('yyyy',Date()) AND Path = '" & sPath & "'"

Set rsCount = Conn.Execute(strSQL)
iCountThisYear = rsCount("SumOfHits")
rsCount.Close

<!--   this query shows ONE record EACH for ALL users who have ever visited this page...but we need a keyset -->
strSQL = "SELECT DISTINCT RemAddress FROM tblCounter WHERE Path = '" & sPath & "'"

<!-- we're opening a KEYSET recordset... -->
Set rsCount = Server.CreateObject("adodb.recordset")
rsCount.Open strSQL, Conn, adOpenKeyset

iCountUsers = rsCount.RecordCount
rsCount.Close

<!-- this query gets the IP Address, SessionID, Page and Date from the first record of this user visiting this page -->
strSQL = "SELECT RemAddress, SessionID, Path, Date FROM tblCounter WHERE RemAddress = '" & sUserIP & "' AND Path = '" & sPath & "'"

Set RS = Conn.Execute(strSQL)
    
    Select Case sSessID
        <!-- if the current SessionID matches the one in the database, then this is their first visit -->
        Case rs("SessionID")
            Response.Write("This is the first time you've been here" & "<br>")
        <!-- if the SessionID in the database is older than the current one, they've been here before -->
        Case Else       
  	    Response.Write("Your last time here was " & Request.Cookies("userInformation")("LastVisit")  & "<br>")
    End Select

Response.Write "</I><BR><SMALL>"

Response.Write "<TABLE BGCOLOR='lightyellow' BORDER='2' CELLPADDING='4' CELLSPACING='4'>"

<!-- display the stats in the table -->

Response.Write "<TR><TD><I><FONT SIZE=2>"
Response.Write "Your first Session ID from here was" 
Response.Write "</I></TD><TD><B><FONT SIZE=2>"
Response.Write rs("SessionID")
Response.Write "</B></TD></TR></FONT>"

Response.Write "<TR><TD><I><FONT SIZE=2>"
Response.Write "Which was on" 
Response.Write "</I></TD><TD><B><FONT SIZE=2>"
Response.Write FormatDateTime(rs("Date"), vbLongDate) 
Response.Write "</B></TD></TR></FONT>"

Response.Write "<TR><TD><I><FONT SIZE=2>"
Response.Write "Your current Session ID here is"
Response.Write "</I></TD><TD><B><FONT SIZE=2>"
Response.Write sSessID
Response.Write "</B></TD></TR></FONT>"

<!-- we've gathered all the counter values, now let's display them -->

Response.Write "<TR><TD><I><FONT SIZE=2>"
Response.Write "All Visits Today"
Response.Write "</I></TD><TD><B><FONT SIZE=2>"
Response.Write iCountToday
Response.Write "</B></TD></TR></FONT>"

Response.Write "<TR><TD><I><FONT SIZE=2>"
Response.Write "All Visits This Week"
Response.Write "</I></TD><TD><B><FONT SIZE=2>"
Response.Write iCountThisWeek
Response.Write "</B></TD></TR></FONT>"

Response.Write "<TR><TD><I><FONT SIZE=2>"
Response.Write "All Visits This Month"
Response.Write "</I></TD><TD><B><FONT SIZE=2>"
Response.Write iCountThisMonth
Response.Write "</B></TD></TR></FONT>"

Response.Write "<TR><TD><I><FONT SIZE=2>"
Response.Write "All Visits This Year"
Response.Write "</I></TD><TD><B><FONT SIZE=2>"
Response.Write iCountThisYear
Response.Write "</B></TD></TR></FONT>"

Response.Write "<TR><TD><I><FONT SIZE=2>"
Response.Write "All of Your Visits"
Response.Write "</I></TD><TD><B><FONT SIZE=2>"
Response.Write iCountThisUser
Response.Write "</B></TD></TR></FONT>"

Response.Write "<TR><TD><I><FONT SIZE=2>"
Response.Write "All Visits Total"
Response.Write "</I></TD><TD><B><FONT SIZE=2>"
Response.Write iCountAllHits
Response.Write "</B></TD></TR></FONT>"

Response.Write "<TR><TD><I><FONT SIZE=2>"
Response.Write "Total Visitors"
Response.Write "</I></TD><TD><B><FONT SIZE=2>"
Response.Write iCountUsers
Response.Write "</B></TD></TR></FONT>"

Response.Write "</TABLE>"

<!-- clean up our object -->
Set rsCount = Nothing

Response.Write "<font face='Verdana, Tahoma, Arial, Helvetica, MS Sans Serif, Sans Serif, Geneva' size=4 color=blue>"


<!-- now let's play around with some info the Server provides -->

Response.Write "<TABLE BGCOLOR='lightblue' BORDER='0' CELLPADDING='2' CELLSPACING='4'>"
Response.Write "<font size=2 color=brown>"

    <!-- if there's anything in the HTTP_REFERER string, let's show it -->
    If sPreviousSite <> "" Then
        Response.Write "<TR><TD><I><FONT SIZE=2>"
        Response.Write "Just before you got here, you were at"
        Response.Write "</I></TD><TD><B><FONT SIZE=2>"
        Response.Write sPreviousSite
        Response.Write "</B></TD></TR></FONT>"
    Else
        <!-- never mind! -->
    End If

Response.Write "<TR><TD><I><FONT SIZE=2>"
Response.Write "The date is"
Response.Write "</I></TD><TD><B><FONT SIZE=2>"
Response.Write FormatDateTime(Date, vbLongDate)
Response.Write "</B></TD></TR></FONT>"

Response.Write "<TR><TD><I><FONT SIZE=2>"
Response.Write "The time is"
Response.Write "</I></TD><TD><B><FONT SIZE=2>"
Response.Write FormatDateTime(Time, vbLongTime)
Response.Write "</B></TD></TR></FONT>"

Response.Write "<TR><TD><I><FONT SIZE=2>"
Response.Write "Your current IP address is"
Response.Write "</I></TD><TD><B><FONT SIZE=2>"
Response.Write sUserIP
Response.Write "</B></TD></TR></FONT>"

Response.Write "<TR><TD><I><FONT SIZE=2>"
Response.Write "Your browser is"
Response.Write "</I></TD><TD><B><FONT SIZE=2>"
Response.Write Request.ServerVariables("HTTP_USER_AGENT")
Response.Write "</B></TD></TR></FONT>"

Response.Write "</TABLE>"

<!-- curious about Session variables? let's look at them (if there are any) -->

<!-- first, see if there are any -->
If Session.Contents.Count > 0 Then
    Dim iLoop
    Dim strSV

    Response.Write "<BR>"
    Response.Write "<BR>"
    Response.Write "Current Session Variables"
    Response.Write "<BR>"
    Response.Write Session.Contents.Count
    Response.Write "<BR>"

    For Each strSV in Session.Contents
        Response.Write 
        ' if this variable is an array...
        If IsArray(Session(strSV)) Then
            ' loop through each array element
            For iLoop = LBound(Session(strSV)) To UBound(Session(strSV))
                Response.Write strSV & "(" & iLoop & ") - " & Session(strSV)(iLoop) & "<BR>"
            Next
        Else
            ' this one must not be an array variable
            Response.Write strSV & " - " & Session.Contents(strSV) & "<BR>"
        End If
    Next
    Response.Write "<BR>"
    Response.Write "<BR>"
Else
    <!-- Guess there aren't any! -->
End IF

%>

<HR WIDTH="80%">

<br>

<CENTER>

<font face="Times New Roman,Roman,Times,MS Serif,Serif" size="3" color="green">

<A HREF="mailto:brianb@cmtelephone.com">

Click Here To Send Comments Or Questions About This Web Site

</A>

<br>

<p align="center">

<font face="Comic Sans MS,Arial,Tahoma,Verdana,Helvetica,MS Sans Serif,Sans Serif" size="1" color="blue">

Page updated September 10, 2001

</font>

</p>

</body>


<!-- if you like this stuff, please vote for it on Planet Source Code! -->

</html>