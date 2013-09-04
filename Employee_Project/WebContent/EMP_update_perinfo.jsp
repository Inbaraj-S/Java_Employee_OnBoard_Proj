<%@ page language ="java" import="java.sql.*,javax.sql.*" %>
<%
	PreparedStatement st=null;
	ResultSet rs=null;
	Connection con=null;
	String dob="",email="",phone="",fname="",mname="",dept1="",dept2="",martial="",address="";
    
%>
<%
    
    String eid=(String)session.getAttribute("eid");
    session.setAttribute("eid",eid);
    
    con=(Connection)session.getAttribute("con");
    session.setAttribute("con",con);
    
   
    
%>
<html>
<body>
<form action="EMP_update_perinfojsp.jsp" method="post">
<%

try{

	String query="select m.dob,m.email,m.phone,p.dependent1,p.dependent2,p.father_name,p.mother_name,p.married,p.address from personal_info p,master_employee m where m.eid=p.eid and m.eid=?";
	st=con.prepareStatement(query);
	st.setString(1,eid);
	rs=st.executeQuery();
	while (rs.next())
	{					
					  dob=rs.getString(1);
	      			  email=rs.getString(2);
	      			  phone=rs.getString(3);
	      			  
	                  dept1=rs.getString(4);
	                  dept2=rs.getString(5);
	                  fname=rs.getString(6);
	                  mname=rs.getString(7);
	                  martial=rs.getString(8);
	                  address=rs.getString(9);
	                 
		
	}
	st.close();
}
catch(Exception e)
{
	out.println(e.toString());
}
%>
<br>

<table border=5 width=100%  cellspacing=17 valign=center>

<tr>
<td width="200px">Employee Id:</td>
<td><Input Type=text name="eid" disabled="disabled" Value=<%=eid%> onFocus="this.blur();"></td>
</tr>

<tr> 
<td>DOB</td>
<td><Input Type=text name="dob" Value=<%=dob%>> <font color="darkgreen">Type in Date as dd mmm yyyy. Eg. 4 AUG 2012 || else Error.</font></td>
</tr>

<tr> 
<td>Email:</td>
<td><Input Type=text name="email" Value=<%=email%>></td>
</tr>

<tr> 
<td>Phone:</td>
<td><Input Type=text name="phone" Value=<%=phone%>></td>
</tr>

<tr> 
<td>Depenedent1:</td>
<td><Input Type=text name="dept1" Value=<%=dept1%>></td>
</tr>

<tr>
<td>Dependent 2:</td>
<td><Input Type=text name="dept2" Value=<%=dept2%>></td>
</tr>
<tr>
<tr>
<td>Father Name:</td>
<td><Input Type=text name="fname" Value=<%=fname%>></td>
</tr>
<tr>

<tr>
<td>Mother Name:</td>
<td><Input Type=text name="mname" Value=<%=mname%>></td>
</tr>
<tr>

<td>Marital status:</td>
<td><Input Type=text name="martial" Value=<%=martial%>></td>
</tr>
<tr>
<td>Permanent Address:</td>
<td><Input Type=text name="addr" Value=<%=address%>></td>
</tr>

<tr >
<td colspan=2 align=center><input Type="submit" value="Update" ></td>
</tr>
</table>
</form>
</body>
</html>