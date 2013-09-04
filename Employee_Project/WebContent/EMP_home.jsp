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
<head>
<title>
Welcome Employee
</title>
</head>

<frameset rows="25%,*">
<frame src="EMP_rms.jsp" name="frame1">
<frameset cols="30%,*">
<frame src="EMP_sidebar_view.jsp" name="frame2">
<frame src="EMP_add.jsp" name="frame3">
</frameset>
</frameset>

</html>