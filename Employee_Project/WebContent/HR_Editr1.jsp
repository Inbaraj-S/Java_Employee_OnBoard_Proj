<%@ page language ="java" import="java.sql.*,javax.sql.*" %>
<%

 %>
<%
	String seid=request.getParameter("sel");
	session.setAttribute("seid",seid);
	System.out.print(seid);
	String pan="",ename="",dob="",email="",phone="",jd="",deptid="",position="",location="",salary="";
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
<form action="HR_editUpdate.jsp">
<table valign=center border=5 width=100%  >
<tr>
<th>Employee Id</th>
<th>PAN</th>
<th>Employee Name</th>
<th>Date of Birth</th>
<th>Phone</th>
<th>E-Mail</th><!-- 
//<th>Joining_date</th> -->
<th>Department Id</th>
<th>Salary</th>
<th>Position</th>
<th>Location</th>


</tr>
<%
try{
		String sql="select * from master_employee where eid="+seid; //error
		st=con.createStatement();
		rs=st.executeQuery(sql);
		while (rs.next())
		{
						  pan=rs.getString(2);
						  ename=rs.getString(3);
						  dob=rs.getString(4);
					      phone=rs.getString(5);
						  email=rs.getString(6);
						  jd=rs.getString("JOINING_DATE");
						  //System.out.print(jd);
						  deptid=rs.getString(8);
						  salary=rs.getString(9);
					      position=rs.getString(10);
						  location=rs.getString(11);
						  
		        }
		        }
catch(Exception e)
{
out.println("error"+e);
}
%>	
<tr>
<td><input type="text" name="teid" disabled="disabled" value=<%=seid%>></td>

<td><input type="text" name="pan" disabled="disabled" value=<%=pan%>></td>

<td><input type="text" name="ename" value=<%=ename%>></td>

<td><input type="text" name="dob" value=<%=dob%>></td>

<td><input type="text" name="phone" value=<%=phone%>></td>

<td><input type="text" name="email" value=<%=email%>></td>

<%-- //<td><input type="text" name="jd" disabled="disabled" value=<%=jd%>></td> --%>

<td><input type="text" name="deptid" disabled="disabled" value=<%=deptid%>></td>

<td><input type="text" name="sal" value=<%=salary%>></td>
<td><input type="text" name="pos" value=<%=position%>></td>
<td><input type="text" name="loc" value=<%=location%>></td>
</tr>
</table>
<%
//response.setIntHeader("refresh", 1);
 %>
<table align="center">
<tr>
<center>
<input type="submit" value="Update The Edit">
</center>
</tr>
</table>
</form>
<center>
//Enter Date update as "DD MMM YYYY". Eg: 4 AUG 1992
<address><a href="HR_home.jsp">-->HR Home Page</a></address>
</center>
</body>
</html>
</html>