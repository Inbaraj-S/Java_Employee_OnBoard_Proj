<%@
	page import="java.sql.*,javax.sql.*,javax.mail.*,javax.mail.internet.*,javax.activation.*"
	%>
<%
	Connection con=null;
%>
<html>
<head>
<title>Sending Mailing</title>
</head>
<body>
<%
    
    String eid=(String)session.getAttribute("eid");
    session.setAttribute("eid",eid);
    
    con=(Connection)session.getAttribute("con");
    session.setAttribute("con",con);
   
%>
<center>
<h3><font color="#0066ff">Employee Added Successfully</font></h3><br>

<a href="HR_home.jsp">--> HR Home</a>
</center>
</body>
</html>