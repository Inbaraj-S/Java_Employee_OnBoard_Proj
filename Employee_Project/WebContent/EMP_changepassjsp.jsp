<%@ page language ="java" import="java.sql.*,javax.sql.*" %>
<%
	Connection con=null;
	PreparedStatement st=null;
	ResultSet rs=null;
 %>
<%
    
    String eid=(String)session.getAttribute("eid");
    session.setAttribute("eid",eid);
    
    con=(Connection)session.getAttribute("con");
    session.setAttribute("con",con);
    
    String enpwd=request.getParameter("pwd");
	String cnpwd=request.getParameter("confirmpwd");
	String role="";
      
%>
<html>
<body>
<%

if(enpwd.equals(cnpwd))
{
	try
	{
		String sql="update password set password=? where eid=?";
		st=con.prepareStatement(sql);
		st.setString(1,enpwd);
		st.setString(2,eid);
		int flag=st.executeUpdate();
		String sql1="select position from master_employee where eid=?";
		st=con.prepareStatement(sql1);
		st.setString(1,eid);
		rs=st.executeQuery();
		while (rs.next())
		{
			role=rs.getString("position");
		}
	}
	catch(Exception e)
	{
	out.println("error"+e);
	}

%>
<center>
<h3>Your password is successfully updated</h3>

<a href="EMP_view.jsp">--> Back To Home Page</a>
<%
}
else{
%>
<h3>Improper Password. Check and Try Again.</h3>

<a href="EMP_view.jsp">--> Back To Home Page</a>
<%
}
%>
</center>
</body>
</html>