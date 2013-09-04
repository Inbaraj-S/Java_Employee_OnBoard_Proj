<%@ page language ="java" import="java.sql.*,javax.sql.*" %>
<%
	Connection con=null;
	Statement st=null;
	Statement st1=null;
	ResultSet rs=null;
	
 %>
<%
    
    String eid=(String)session.getAttribute("eid");
    session.setAttribute("eid",eid);
    con=(Connection)session.getAttribute("con");
    session.setAttribute("con",con);
    
    String dept1=request.getParameter("dept1");
	String dept2= request.getParameter("dept2");
	String fname=request.getParameter("fname");
	String mname= request.getParameter("mname");
	String martial=request.getParameter("martial");
	String address=request.getParameter("addr");
	
    String dob=request.getParameter("dob");
    String email=request.getParameter("email");
    String phone=request.getParameter("phone");
    int flag=0,flag1=0;
%>
<html>
<head>
<title>Employee Personal Update JSP</title>
</head>
<body>
<center>
<%
	
  	
try{


	String sql="UPDATE personal_info SET dependent1="+"'"+dept1+"'"+", dependent2="+"'"+dept2+"'"+", married="+"'"+martial+"'"+", address="+"'"+address+"'"+", father_name="+"'"+fname+"'"+", mother_name="+"'"+mname+"'"+" WHERE EID="+eid;
	st=con.createStatement();  
	flag=st.executeUpdate(sql); 
	System.out.print(sql);
	
}
catch(Exception e)
{
	out.println("error"+e);
} 
st.close();
try{
	String sql1="UPDATE master_employee SET DOB="+"'"+dob+"'"+", email="+"'"+email+"'"+", phone="+phone+" WHERE EID="+eid;
	st1=con.createStatement();  
	flag1=st1.executeUpdate(sql1);
	System.out.print(sql1);
	 
}catch(Exception e)
{
	out.println("error"+e);
}
st1.close();
%>

<%
if(flag!=0 && flag1!=0)
	{
		out.println("Successful Update");
	}
else if(flag!=0 && flag1==0)
{
	out.println("Successful update of Personal table");
}
else if(flag1!=0)
{
	out.println("Successful update of Master Employee table");
}
else if (flag==0 && flag1==0)
{
	out.print("no updation");
} 
%>

<a href="EMP_update.jsp">Back--></a>


</center>

</body>
</html>