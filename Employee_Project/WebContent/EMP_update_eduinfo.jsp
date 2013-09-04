<%@ page language ="java" import="java.sql.*,javax.sql.*" 
%>
<%
	String qual="",per="",passyear="",clg="",city="",state="",country="",exp="";
	Connection con=null;
	ResultSet rs=null;
	PreparedStatement st=null;
%>
<%
	String eid=(String)session.getAttribute("eid");
    session.setAttribute("eid",eid);
    
    con=(Connection)session.getAttribute("con");
    session.setAttribute("con",con);

%>
<html>
<body>
<form action="EMP_update_edinfojsp.jsp" method="post">
<%


try{
	String query="select * from educational_info where eid=?";
	st=con.prepareStatement(query);
	st.setString(1,eid);
	rs=st.executeQuery();
	while (rs.next())
	{
	
					qual=rs.getString("QUALIFICATION");
					per=rs.getString("PERCENTAGE");
					passyear=rs.getString("YEAR_OF_PASSING");
	                clg=rs.getString("COLLEGE");
	                city=rs.getString("CITY");
	                state=rs.getString("STATE");
	                country=rs.getString("COUNTRY");
	                exp=rs.getString("EXPERIENCE");
		
	}
}
catch(Exception e)
{
	out.println(e.toString());
}
%>
<br>
<table border=5 width=100%  cellspacing=17 valign=center>
<tr>
<td>Employee Id:</td>
<td><Input Type=text name="eid" disabled="disabled" Value=<%=eid%> onFocus="this.blur();"></td>
</tr>

<tr>
<td>Enter Qualification:</td>
<td><Input Type=text name="qual" Value=<%=qual%>></td>
</tr>

<tr>
<td>Percentage:</td>
<td><Input Type=text name="per" Value=<%=per%>></td>
</tr>

<tr>
<td>YearOfPassing:</td>
<td><Input Type=text name="passyear" Value=<%=passyear%>></td>
</tr>

<tr>
<td>College:</td>
<td><Input Type=text name="clg" Value=<%=clg%> >
</td>
</tr>

<tr>
<td>City:</td>
<td><Input Type=text name="city" Value=<%=city%>></td>
</tr>

<tr>
<td>State:</td>
<td><Input Type=text name="state" Value=<%=state%>></td>
</tr>

<tr>
<td>Country:</td>
<td><Input Type=text name="country" Value=<%=country%>></td>
</tr>

<tr>
<td>Experience(If any):</td>
<td><Input Type=text name="exp" Value=<%=exp%>></td>
</tr>

<tr >
<td colspan=2 align=center><input Type="submit" value="Update" ></td>
</tr>
</table>
</form>
</body>
</html>