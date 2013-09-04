<%@page import="java.sql.*,javax.sql.*"%>

<%
	String qualification="",per="",yop="" ,clg="",city="",state="",country="",exp="";
	Connection con=null;
    PreparedStatement st=null;
	ResultSet rs=null;
%>

<html>
<body>

<%
    
    String eid=(String)session.getAttribute("eid");
    session.setAttribute("eid",eid);
    
    con=(Connection)session.getAttribute("con");
    session.setAttribute("con",con);
    
   
    
%>
<br><br>
<table valign=center border=5 width=100%  >
<tr>
<th>Employee Id</th>
<th>Qualification</th>
<th>percentage</th>
<th>year of passing</th>
<th>college</th>
<th>city</th>
<th>state</th>
<th>country</th>
<th>experience(if any)</th>

</tr>
<%
try{

		String sql="select * from educational_info where eid=?";
		st=con.prepareStatement(sql);
		st.setString(1,eid);
		rs=st.executeQuery();
		while (rs.next())
		{
			
			qualification=rs.getString("qualification");
			per=rs.getString("percentage");
			yop=rs.getString("year_of_passing");
		    clg=rs.getString("college");
		    city=rs.getString("city");
		    state=rs.getString("state");
		    country=rs.getString("country");
		    exp=rs.getString("experience");
		                  
%>
<tr>
<td><%=eid%></td>
<td><%=qualification%></td>
<td><%=per%></td>
<td><%=yop%></td>
<td><%=clg%></td>
<td><%=city%></td>
<td><%=state%></td>
<td><%=country%></td>
<td><%=exp%></td>

</tr>

<%
	
}
}
catch(Exception e)
{
out.println("error"+e);
}
%>
</table>
<center>
<address><a href="EMP_view.jsp">Back-->></a></address>
</center>
</body>
</html>