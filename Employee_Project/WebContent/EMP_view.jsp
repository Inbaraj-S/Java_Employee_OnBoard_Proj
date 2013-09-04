<%@page import="java.sql.*,javax.sql.*"%>

<%
    Connection con=null;
%>

<html>
<body>

<%
    
    String eid=(String)session.getAttribute("eid");
    session.setAttribute("eid",eid);
    
    con=(Connection)session.getAttribute("con");
    session.setAttribute("con",con);
    
   
    
%>
<center><br><br>
	<a href='EMP_view_CompanyDetails.jsp'>Display my functional information</a><br><br>
	<a href='EMP_view_pinfo.jsp'>Display my personal information</a><br><br>
    <a href='EMP_view_EduInfo.jsp'>Display my educational information</a><br>
</center>
</body>
</html>