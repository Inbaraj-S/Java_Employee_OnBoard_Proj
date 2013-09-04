<%@ page language ="java" import="java.sql.*,javax.sql.*" %>

<%

   	String eid=(String)session.getAttribute("eid");
    session.setAttribute("eid",eid);
    
    Connection con=(Connection)session.getAttribute("con");
    session.setAttribute("con",con);
    
    
    Statement st=null;
    int neweid=0;
%>

<html>
<head>
<title>Add New Employee</title>
</head>
<body>
<img alt="" src="rms1.jpg" height="40%" width="100%">
<%
		
	try{
  
    st=con.createStatement();
    String sql="SELECT MAX(EID) FROM MASTER_EMPLOYEE";
    ResultSet rs=st.executeQuery(sql);
    if(rs.next())
    {
    	neweid=rs.getInt(1)+1;
    	session.setAttribute("neweid",neweid);
    }
    }catch(Exception e)
{
out.println("error"+e);
}
 %>
<center><form action="HR_addjsp.jsp" method="get">
<fieldset><h2 style="text-align:left","font-size:200%",><font color="brown"> Personal Details</font></h2>

<table>
<tr >
<td width="200px">
<b>PAN</b>
</td>
<td>
<input type="text" name="pan"/>
</td>
<tr>
<tr>
<td>
<b>First Name</b>
</td>
<td><input type="text" name="fname"/>
</td>
</tr>
<tr>
<td>
<b>Last Name</b>
</td>
<td><input type="text" name="lname"/>
</td>
<tr>
<tr>
<td>
<b>Date of Birth</b>
</td>
<td><input type="text" name="dob"/> <font color="blue"> //Enter Date update as "DD MMM YYYY". Eg: 4 AUG 1992</font>
</td>
</tr>
<tr>
<td>
<b>Phone</b>
</td>
<td><input type="text" name="phone"/>
</td>
</tr>

<tr>
<td>
<b>E-Mail</b>
</td>
<td><input type="text" name="email"/>
</td>
</tr>
</table>
<br>
</fieldset>


<br>



<fieldset>
<h2  style="text-align:left",> <font color="brown"> Functional Details </font></h2>
<br>
<table>

<tr>
<td width="200px">
<b>Joining_date</b>
</td>
<td>
<input type="text" name="jd"/><font color="blue"> //Enter Date update as "DD MMM YYYY". Eg: 4 AUG 1992</font>
</td>
</tr>

<tr>
<td>
<b>Department Id</b>
</td>
<td>
<input type="text" name="deptid"/>
</td>
</tr>

<tr>
<td>
<b>Salary</b>
</td>
<td>
<input type="text" name="sal"/>
</td>
</tr>

<tr>
<td>
<b>Position</b>
</td>
<td>
<input type="text" name="pos"/>
</td>
</tr>

<tr>
<td>
<b>Location
</b>
</td>
<td>
<input type="text" name="loc"/>
</td>
</tr>
</table>
<br>
</fieldset>
<br>
<input type="submit" value="Create Employee">
<br>
</form>
</center>
</body>
</html>