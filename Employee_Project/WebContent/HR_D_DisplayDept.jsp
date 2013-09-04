<%@ page language ="java" import="java.sql.*,javax.sql.*" %>
<%
		String deptid="",dname="",hod="",email="";
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
<br><br>
<table valign=center border=5 width=100%  >
<tr>
<th>Dept Id</th>
<th>Department</th>
<th>HOD</th>
<th>Mail</th>
</tr>
<%
try{
		
		String sql="select * from department";
		st=con.createStatement();
		rs=st.executeQuery(sql);
		while (rs.next())
		{
								
						  deptid=rs.getString(1);
					      dname=rs.getString(2);
						  hod=rs.getString(3);
						  email=rs.getString(4);
		                  
		%>
<tr>
<td><%=deptid%></td>
<td><%=dname%></td>
<td><%=hod%></td>
<td><%=email%></td>
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