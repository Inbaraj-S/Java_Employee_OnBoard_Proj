<%@ page language ="java" import="java.sql.*,javax.sql.*" %>
<%String teid="",pan="",ename="",dob="",email="",phone="",joining_date="",deptid="",position="",location="",salary="";
	Connection con=null;
		Statement st=null;
		ResultSet rs=null;
   	String eid=(String)session.getAttribute("eid");
    session.setAttribute("eid",eid);
    
    con=(Connection)session.getAttribute("con");
    session.setAttribute("con",con);
    
%>
<html>
<body>
<img alt="" src="rms1.jpg" height="40%" width="100%">
<br>
<br>
<table valign=center border=5 width=100%  >
<tr>
<th>Employee Id</th>
<th>PAN</th>
<th>Employee Name</th>
<th>Date of Birth</th>
<th>Phone</th>
<th>E-Mail</th>
<th>Joining_date</th>
<th>Department Id</th>
<th>Salary</th>
<th>Position</th>
<th>Location</th>


</tr>
<%
try{
		String sql="select * from master_employee";
		st=con.createStatement();
		rs=st.executeQuery(sql);
		while (rs.next())
		{
								
						  teid=rs.getString(1);
					      pan=rs.getString(2);
						  ename=rs.getString(3);
						  dob=rs.getString(4);
					      phone=rs.getString(5);
						  email=rs.getString(6);
						  joining_date=rs.getString(7);
						  deptid=rs.getString(8);
					      position=rs.getString(9);
						  location=rs.getString(10);
						  salary=rs.getString(11);
		                  
		%>
		
<tr>
<td><%=teid%></td>
<td><%=pan%></td>
<td><%=ename%></td>
<td><%=dob%></td>
<td><%=phone%></td>
<td><%=email%></td>
<td><%=joining_date%></td>
<td><%=deptid%></td>
<td><%=position%></td>
<td><%=location%></td>
<td><%=salary%></td>
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
<address><a href="HR_home.jsp">back>></a></address>
</center>
</body>
</html>
</html>