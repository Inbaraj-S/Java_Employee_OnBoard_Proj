<%@ page language ="java" import="java.sql.*,javax.sql.*" 
%>
<%
	Connection con=null;
 %>
<%
    
    String eid=(String)session.getAttribute("eid");
    session.setAttribute("eid",eid);
    
    con=(Connection)session.getAttribute("con");
    session.setAttribute("con",con);
 
%>

<html>
<body>
<br>
<br>
<center><A href="EMP_update_perinfo.jsp">Update Personal Information</A><br><br>
              <A href="EMP_update_eduinfo.jsp">Update Educational Information</A><br>
              
</center>
</body>
</html>