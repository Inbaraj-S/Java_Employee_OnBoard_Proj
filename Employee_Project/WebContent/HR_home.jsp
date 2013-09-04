<%@page import="java.sql.*,javax.sql.*"%>

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
<title>HR Home Page</title>
</head>

<body>
<img alt="" src="rms1.jpg" height="40%" width="100%">
<center>
<b>
<h2>
<font color="#0066ff">Select an Action</font>
</h2>
</b>
<table border=2 width=250px>
	<tr valign="bottom">
		<td align="center">
		<form action="HR_addemp.jsp">		
			<input type="submit" value="Add New Employee">
		</form>
		</td>
	</tr>
	<tr valign="bottom">
	<td align="center">
		<form action="HR_edit.jsp">
		<input type="submit" value="Edit Existing Employee">
		</form>
	</td>
	</tr>
	<tr valign="bottom">
	<td align="center">
		<form action="HR_Display.jsp">
			<input type="submit" value="Display Details">
		</form>
	</td>
	</tr>
	<tr valign="bottom">
		<td align="center">
		<form action="HR_Delete.jsp">
			<input type="submit" value="Delete Employee">
		</form>
		</td>
	</tr>
	<tr valign="bottom">
		<td align="center">
		<form action="logout.jsp">
			
			<input type="submit" value="Log Out">
		</form>
		</td>
	</tr>
</table>
</center>
</body>

</html>
