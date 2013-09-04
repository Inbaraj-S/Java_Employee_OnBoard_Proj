<%@ page language ="java" import="java.sql.*,javax.sql.*" %>
<%
	Statement st=null;
	int flag=0;

   	String eid=(String)session.getAttribute("eid");
    session.setAttribute("eid",eid);
    
    Connection con=(Connection)session.getAttribute("con");
    session.setAttribute("con",con);
    
    String seid=(String)session.getAttribute("seid");
 %>
<%
	

    String ENAME=request.getParameter("ename");
    String DOB=request.getParameter("dob");
    String EMAIL=request.getParameter("email");
    String PHONE=request.getParameter("phone");

    String SAL=request.getParameter("sal");
    String POS=request.getParameter("pos");
    String LOC=request.getParameter("loc");

 %>
<html>
<body>
<img alt="" src="rms1.jpg" height="40%" width="100%">
<%
	try{
		
		

	String sql="UPDATE MASTER_EMPLOYEE SET ENAME="+"'"+ENAME+"'"+", DOB="+"'"+DOB+"'"+", PHONE="+PHONE+", EMAIL="+"'"+EMAIL+"'"+", SALARY="+SAL+", POSITION="+"'"+POS+"'"+", LOCATION="+"'"+LOC+"'"+" WHERE EID="+seid;
		System.out.print(sql);
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
	
		    
		    }catch(Exception e)
		{
		out.println("error"+e);
		}
		%>

<br>
<center><a href="HR_home.jsp">--> HR Home</a></center>
</body>
</html>