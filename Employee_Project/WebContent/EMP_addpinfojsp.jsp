<%@ page language ="java" import="java.sql.*,javax.sql.*" 
%>
<%
	Connection con=null;
	PreparedStatement st=null;
 %>
<%
    
    String eid=(String)session.getAttribute("eid");
    session.setAttribute("eid",eid);
    
    con=(Connection)session.getAttribute("con");
    session.setAttribute("con",con);

	String dependent1= request.getParameter("dependent1");
	String dependent2 = request.getParameter("dependent2");
	String fatherName = request.getParameter("FATHER_NAME");
	String motherName= request.getParameter("MOTHERS_NAME");
	String martial=request.getParameter("MARTIAL_STATUS");
	String permanentAddress= request.getParameter("PERMANENT_ADDRESS");
	int flag=0;
%>
<html>
<head>
<title>
Employee Add Personal Info JSP
</title>
</head>
<body>
<%
try{
		String sql="insert into personal_info values(?,?,?,?,?,?,?)";
		st=con.prepareStatement(sql);   
		st.setString(1,eid);
		st.setString(2,dependent1);
		st.setString(3,dependent2);
		st.setString(4,fatherName);
		st.setString(5,motherName);
		st.setString(6,martial);
		st.setString(7,permanentAddress);


		flag=st.executeUpdate();
		if(flag==0)
		{
			out.print("The record is already inserted"); 
			System.exit(0);
		}
}
catch(Exception e)
{
out.println("error"+e);


}          
%>
<center>
<h3> You have successfully inserted your personal information</h3>
<a href="EMP_add.jsp">Back--></a>
</center>

</body>
</html>