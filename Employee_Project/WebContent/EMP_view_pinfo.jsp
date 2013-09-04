<%@page import="java.sql.*,javax.sql.*"%>

<%
	String dept1="",dept2="",fname="" ,mname="",martial="",paddr="";
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
<th>Dependent1</th>
<th>Dependent2</th>
<th>Fathers Name</th>
<th>Mother's Name</th>
<th>Married</th>
<th>Permanent Address</th>

</tr>
<%
try{

		String sql="select * from personal_info where eid=?";
		st=con.prepareStatement(sql);
		st.setString(1,eid);
		rs=st.executeQuery();
		while (rs.next())
		{
			
			dept1=rs.getString("dependent1");
			dept2=rs.getString("dependent2");
			fname=rs.getString("father_name");
		    mname=rs.getString("mother_name");
		    martial=rs.getString("married");
		    paddr=rs.getString("address");
		                  
%>
<tr>
<td><%=eid%></td>
<td><%=dept1%></td>
<td><%=dept2%></td>
<td><%=fname%></td>
<td><%=mname%></td>
<td><%=martial%></td>
<td><%=paddr%></td>

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
<address><a href="EMP_view.jsp">back>></a></address>
</center>
</body>
</html>



