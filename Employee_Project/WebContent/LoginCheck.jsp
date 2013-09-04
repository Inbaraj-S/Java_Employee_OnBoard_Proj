<%@ page language ="java" import="java.sql.*,javax.sql.*" %>
<%
    String eid = request.getParameter("eid");
    String pwd = request.getParameter("pwd");
	String employeeid=" ";
    String pswrd=" ";
    String role="";  
    Connection con=null;
    Statement st=null;
	String name="";    
%>
<html>
<head>
<title>Welcome</title>
</head>
<body>

<%
   	outerloop: try{
   	Class.forName("oracle.jdbc.driver.OracleDriver");//sun has provided Class for database
    con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "inba");
	st=con.createStatement();
    String sql="select m.eid,m.position,p.password,m.ename from  master_employee m, password p where m.eid=p.eid";
    ResultSet rs=st.executeQuery(sql);
    while(rs.next())
             {
				 employeeid=rs.getString(1);
				 role=rs.getString(2);
			      pswrd=rs.getString(3);
			      name=rs.getString(4);
                   if(employeeid.equalsIgnoreCase(eid) && pswrd.equalsIgnoreCase(pwd))
                   {
                   
                   if(role.equalsIgnoreCase("EMPLOYEE"))
                   {
                       
%>
						<center><h1>Welcome Mr/Ms. <%=name%></h1>
						
						<a href="EMP_home.jsp">CLICK TO CONTINUE</a>
						
						</center>
<%
					}
					else if(role.equalsIgnoreCase("HR"))
					{
%>
						<center><h1>Welcome HR </h1>
						<a href="HR_home.jsp">CLICK TO CONTINUE</a>
						</center>
<%
					}
					session.setAttribute("con",con);
					session.setAttribute("eid",eid);
					break outerloop;
                   }
             }
%>
			<center><h1>Wrong User-name or Password</h1>
			<a href=Login.jsp>back-->></a></center>
<%  }
	catch(Exception e)
	{
		out.println("error"+e);
	}           
%>

</body>
</html>