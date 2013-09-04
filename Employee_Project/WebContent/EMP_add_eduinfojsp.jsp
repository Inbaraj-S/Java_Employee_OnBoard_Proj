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
<%
	String qualification= request.getParameter("equalification");
	String percentage= request.getParameter("epercentage");
	String yearOfPassing = request.getParameter("epassyear");
	String college=request.getParameter("eclg");
	String city= request.getParameter("ecity");
	String state= request.getParameter("estate");
	String country= request.getParameter("ecountry");
	String exp= request.getParameter("experience");

%>
<html>
<head>
<title>Employee Educational info Adding JSP</title>
</head>
<body>
<%
try{

	String sql="insert into EDUCATIONAL_INFO values(?,?,?,?,?,?,?,?,?)";
	st=con.prepareStatement(sql);   
	st.setString(1,eid);
	st.setString(2,qualification);
	st.setString(3,percentage);
	st.setString(4,yearOfPassing);
	st.setString(5,college);
	st.setString(6,city);
	st.setString(7,state);
	st.setString(8,country);
	st.setString(9,exp);
	flag=st.executeUpdate();
}
catch(Exception e)
{
	out.println("error"+e);
}           
%>
<center>
<%
if (flag==0)
{
	out.println("YOU HAVE ALREADY ADDED THE INFORMATION"); 
} 
%> 
<h3>You have successfully inserted your education information</h3>
<a href="EMP_home.jsp">Back--></a>
</center>
</body>
</html>