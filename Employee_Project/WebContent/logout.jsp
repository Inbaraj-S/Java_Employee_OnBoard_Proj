<%@ page language="java" import="java.sql.*, javax.sql.*" %>
<% 
session.removeAttribute("eid");
session.removeAttribute("con");
response.sendRedirect("Login.jsp");
%>
