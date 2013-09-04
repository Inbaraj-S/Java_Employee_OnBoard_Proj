<%@ page language ="java" import="java.sql.*,javax.sql.*" %>

<%

   	String eid=(String)session.getAttribute("eid");
    session.setAttribute("eid",eid);
    
    Connection con=(Connection)session.getAttribute("con");
    session.setAttribute("con",con);
    
%>
<html>
<head>
<title>Display Details</title>
</head>

<body>
<img alt="" src="rms1.jpg" height="40%" width="100%">
<center>
	<h2><font color="#009900"> Display Details</font></h2>
	<hr>
	<form id=2 method="post" action="HR_Displayr1.jsp">
		Select which Details to display:&nbsp;<span></span><select id=1 name="do">
        <option value="dept"> Department </option>
        <option value="emp"> Employee </option>
        </select>
        <br />
        <br />
        <input type="submit" name="display" value="View Details" onclick="redirect()">
        <br />
        <br />
	</form>
</center>
</body>
</html>
