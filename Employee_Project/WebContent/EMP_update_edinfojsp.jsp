<%@ page language ="java" import="java.sql.*,javax.sql.*" 
%>
<%
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
 %>
<%
	String eid=(String)session.getAttribute("eid");
    session.setAttribute("eid",eid);
    
    con=(Connection)session.getAttribute("con");
    session.setAttribute("con",con);
    
    String qual=request.getParameter("qual");
	String per= request.getParameter("per");
	String passyear=request.getParameter("passyear");
	String clg=request.getParameter("clg");
	String city=request.getParameter("city");
	String state=request.getParameter("state");
	String country=request.getParameter("country");
	String exp=request.getParameter("exp");
	int flag=0;
       
%>
<html>
<body>
<%
  
	try{

		String sql="UPDATE educational_info SET qualification="+"'"+qual+"'"+", percentage="+per+", year_of_passing="+passyear+", college="+"'"+clg+"'"+", city="+"'"+city+"'"+", country="+"'"+country+"'"+", experience="+exp+" WHERE EID="+eid;
		st=con.createStatement();  
		flag=st.executeUpdate(sql);
		if(flag!=0)
		{
			out.println("Successful Update");
		}
		else
		{
			out.println("UnSuccessful Update");
		}
	}
	catch(Exception e)
	{
	out.println("error"+e);
	}           
%>
<center>
<h3>You have successfully updated your personal information</h3>
<a href="EMP_add.jsp">--> Back To Home Page</a>
</center>

</body>
</html>