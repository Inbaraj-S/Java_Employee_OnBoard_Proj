<%@ page language ="java" import="java.sql.*,javax.sql.*" %>
<%

 %>
<%
	String seid=request.getParameter("sel");
	session.setAttribute("seid",seid);
	System.out.print(seid);

	Connection con=null;
		Statement st=null;
		ResultSet rs=null;
		
   	String eid=(String)session.getAttribute("eid");
    session.setAttribute("eid",eid);
    
    
    
    con=(Connection)session.getAttribute("con");
    session.setAttribute("con",con);
    
%>
<html>
<head>
<title>Employee Details to Edit</title>
</head>
<body>
<img alt="" src="rms1.jpg" height="40%" width="100%">

<%
try{
		String sql="delete from master_employee where eid="+seid; //error
		st=con.createStatement();
		rs=st.executeQuery(sql);
		
		        }
catch(Exception e)
{
out.println("error"+e);
}
%>
<center>
<%=seid %> is deleted

<address><a href="HR_home.jsp">-->HR Home Page</a></address>
</center>
</body>
</html>
</html>