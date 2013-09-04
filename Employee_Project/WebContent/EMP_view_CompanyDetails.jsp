<%@ page language="java" import="java.sql.*,javax.sql.*"%>
<%
	String pan="",ename="",email="",dob="",phone="",position="",deptid="",location="",salary="",doj="";
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
<th>Pan card No</th>
<th>Employee Name</th>
<th>Date of birth</th>
<th>Phone</th>
<th>Department id</th>
<th>Position</th>
<th>Location</th>
<th>Email</th>
<th>Salary</th>
<th>Joining Date</th>
</tr>
<%
try
{
		String sql="select * from master_employee where eid=? ";
		st=con.prepareStatement(sql);
		st.setString(1,eid);
		rs=st.executeQuery();
		while (rs.next())
		{
			
			pan=rs.getString("pan");
			ename=rs.getString("ename");
		    dob=rs.getString("dob");
		    phone=rs.getString("phone");
		    position=rs.getString("position");
		    deptid=rs.getString("deptid");
		    location=rs.getString("location");
		    email=rs.getString("email");
		    salary=rs.getString("salary");
		    doj=rs.getString("joining_date");
		                  
%>
<tr>
<td><%=eid%></td>
<td><%=pan%></td>
<td><%=ename%></td>
<td><%=dob%></td>
<td><%=phone%></td>
<td><%=deptid%></td>
<td><%=position%></td>
<td><%=location%></td>
<td><%=email%></td>
<td><%=salary%></td>
<td><%=doj%></td>

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