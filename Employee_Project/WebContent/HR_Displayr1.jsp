<%@ page language ="java" import="java.sql.*,javax.sql.*" %>
<html>
<head>
<title>For Dispatching your Request</title>
</head>
<body>
<img alt="" src="rms1.jpg" height="40%" width="100%">

<h3>Dispatching REquest. Please Have Patience</h3>

<%

	String wdo=request.getParameter("do");

   	String eid=(String)session.getAttribute("eid");
    session.setAttribute("eid",eid);
    
    Connection con=(Connection)session.getAttribute("con");
    session.setAttribute("con",con);
    
    RequestDispatcher rd=null;
    if(wdo.equals("emp"))
    {
    	rd=request.getRequestDispatcher("HR_D_DisplayEmployeeDetails.jsp");
    }
    else
    {
    	rd=request.getRequestDispatcher("HR_D_DisplayDept.jsp");
    }
    rd.forward(request,response);
    
    
%>


</body>
</html>