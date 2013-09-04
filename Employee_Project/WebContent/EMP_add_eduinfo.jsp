<%@ page language ="java" import="java.sql.*,javax.sql.*" %>
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
<body>
<form action="EMP_add_eduinfojsp.jsp" method="post">
<br>
<table border=5 width=100%  cellspacing=17 valign=center>

<tr>
<td>Employee Id:</td>
<td><Input Type=text name="eid" Value=<%=eid%> onFocus="this.blur();"></td>
</tr>

<tr>
<td>Enter Qualification:</td>
<td><Input Type=text name="equalification" Value=""></td>
</tr>

<tr>
<td>Percentage:</td>
<td><Input Type=text name="epercentage" Value=""></td>
</tr>

<tr>
<td>YearOfPassing:</td>
<td><Input Type=text name="epassyear" Value=""></td>
</tr>

<tr>
<td>College:</td>
<td><Input Type=text name="eclg" Value=""></td>
</tr>

<tr>
<td>City:</td>
<td><Input Type=text name="ecity" Value=""></td>
</tr>

<tr>
<td>State:</td>
<td><Input Type=text name="estate" Value=""></td>
</tr>

<tr>
<td>Country:</td>
<td><Input Type=text name="ecountry" Value=""></td>
</tr>

<tr>
<td>Year Of Experience(if any):</td>
<td><Input Type=text name="experience" Value=""></td>
</tr>

<tr>
<td colspan=2 align=center><input Type="submit" value="Save And Continue" ></td>
</tr>

</table>
</form>
</body>
</html>