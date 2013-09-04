<%@ page language ="java" import="java.sql.*,javax.sql.*" %>

    <%
    	Connection con=null;
    	int flag=0;
		PreparedStatement st=null;
     %>
<%
    
    String eid=(String)session.getAttribute("eid");
    session.setAttribute("eid",eid);
    
    con=(Connection)session.getAttribute("con");
    session.setAttribute("con",con);
 
%>
<html>
<head>
<title>Add Your Personal Details</title>
</head>
<body>
<center>
<form action="EMP_addpinfojsp.jsp" method="post">

<br>
<table border=5 width=100%  cellspacing=17 valign=center>
<tr>
<td>Employee Id:</td>
<td><Input Type=text name="eid" Value=<%=eid%> disabled="disabled" onFocus="this.blur();"></td>
</tr>
<tr>
<td>Enter Dependent1:</td>
<td><Input Type=text name="dependent1" Value=""></td>
</tr>
<tr>
<td>Enter Dependent2:</td>
<td><Input Type=text name="dependent2" Value=""></td>
</tr>
<tr>
<td>Enter Father's Name:</td>
<td><Input Type=text name="FATHER_NAME" Value=""></td>
</tr>

<tr>
<td>Enter Mothers's Name:</td>
<td><Input Type=text name="MOTHERS_NAME Value=""></td>
</tr>

<tr>
<td>Enter Marital Status:</td>
<td><Input Type=text name="MARTIAL_STATUS" Value=""></td>
</tr>

<tr>
<td>Enter Permanent Address:</td>
<td><Input Type=text name="PERMANENT_ADDRESS" Value=""></td>
</tr>

<tr >
<td colspan=2 align=center><input Type="submit" value="Save And Continue" ></td>
</tr>
</table>
</form>
</center>
</body>
</html>