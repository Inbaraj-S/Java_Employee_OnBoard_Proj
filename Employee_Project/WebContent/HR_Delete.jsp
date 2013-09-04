<%@ page language ="java" import="java.sql.*,javax.sql.*" %>

<%
	Statement st=null;
   	String eid=(String)session.getAttribute("eid");
    session.setAttribute("eid",eid);
    String sename="",seid="";
    Connection con=(Connection)session.getAttribute("con");
    session.setAttribute("con",con);
    
%>
<html>
<head>
<title>Select the Employee to FIRE!!</title>
</head>
<body>
<img alt="" src="rms1.jpg" height="40%" width="100%">
<center>
	<h2><font color="#009900"> Employee in Organisation</font></h2>
	<hr>
	<form id=2 method="get" action="HR_Deletejsp.jsp">
		Select which Employee Details to display:&nbsp;
		<select id=1 name="sel">
<%
		
	try{
  
    st=con.createStatement();
    String sql="SELECT EID,ENAME FROM MASTER_EMPLOYEE";
    ResultSet rs=st.executeQuery(sql);
    while(rs.next())
    {
    	seid=rs.getString(1);
    	sename=rs.getString(2);
    	System.out.print(sename);
    	
%>

        <option value="<%=seid%>"> <%=sename%> </option>
        
        
 <%
     }
    }catch(Exception e)
{
out.println("error"+e);
}

 %>
		 </select>
        <br />
        <br />
        <input type="submit" name="display" value="Delete Employee Record"">
        <br />
        <br />
	</form>
</center>
</body>
</html>