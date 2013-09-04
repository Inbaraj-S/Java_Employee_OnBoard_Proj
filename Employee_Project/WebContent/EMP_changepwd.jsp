<%@ page language ="java" import="java.sql.*,javax.sql.*" 
%>
<%
	Connection con=null;
 %>
<%
    
    String eid=(String)session.getAttribute("eid");
    session.setAttribute("eid",eid);
    
    con=(Connection)session.getAttribute("con");
    session.setAttribute("con",con);
    
   
    
%>
<html>
<head>
<title>Employee Password Change</title>
</head>
<center>
<body>
	<form action="EMP_changepassjsp.jsp" method="post">
	<br>
		<table border=5 width=100%  cellspacing=17 valign=center>
		<tr>
		<td>Enter New Password:</td>
		<td><Input Type=password name="pwd" Value=""></td>
		</tr>
		<tr>
		<td>Confirm New Password:</td>
		<td><Input Type=password name="confirmpwd" Value=""></td>
		</tr>
		<tr >
		<td colspan=2 align=center><input Type="submit" value="Change"></td>
		</tr>
		</table>
	</form>
</body>
</center>
</html>