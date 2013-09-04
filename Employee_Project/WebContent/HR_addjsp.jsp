
<%@page import="com.proj.SendMail"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Random"%>
<%@ page language ="java" import="java.sql.*,javax.sql.*" %>
<%
	int neweid=(Integer)
	String username=session.getAttribute("neweid");
	String HODMAIL="",HODNAME="";
    PreparedStatement st=null;
    Statement st1=null;
    ResultSet rs=null;
    Statement st2=null;
    
   	String eid=(String)session.getAttribute("eid");
    session.setAttribute("eid",eid);
    
    PrintWriter out1=response.getWriter();
    
    Connection con=(Connection)session.getAttribute("con");
    session.setAttribute("con",con);
    int password=0;
%>
<%
	 Random randomGenerator = new Random();
	 for(int i=0;;i++)
	 {
      password = randomGenerator.nextInt(100000);
      if(password>9999)
      {
      	break;
      }
     }
    String pwd=String.valueOf(password);
    String PAN=request.getParameter("pan");
    String FNAME=request.getParameter("fname");
    String LNAME=request.getParameter("lname");
    String DOB=request.getParameter("dob");
    String EMAIL=request.getParameter("email");
    String PHONE=request.getParameter("phone");
    String JD=request.getParameter("jd");
    String DEPTID=request.getParameter("deptid");
    String SAL=request.getParameter("sal");
    String POS=request.getParameter("pos");
    String LOC=request.getParameter("loc");
	String NAME=FNAME+" "+LNAME;
	
	

 %>
<html>
<body>
<img alt="" src="rms1.jpg" height="40%" width="100%">
<%
	try{
	
     	String sql1="INSERT INTO PASSWORD VALUES("+neweid+",'"+password+"')";
		st1=con.createStatement();
	
		String sql="INSERT INTO MASTER_EMPLOYEE VALUES(?,?,?,?,?,?,?,?,?,?,?)";
		st=con.prepareStatement(sql);   
		
		String sql2="select hod_name,hod_mail from department where deptid="+DEPTID;
		st2=con.createStatement();
		
		st.setInt(1,neweid); 
		st.setString(2,PAN);
		st.setString(3,NAME);
		st.setString(4,DOB);
		st.setString(5,PHONE );
		st.setString(6,EMAIL);
		st.setString(7,JD);
		st.setString(8,DEPTID);
		st.setString(9,SAL);
		st.setString(10,POS);
		st.setString(11,LOC);
		
		int flag=st.executeUpdate();
		st1.execute(sql1);
		rs=st2.executeQuery(sql2);
		while(rs.next())
		{
			HODNAME=rs.getString(1);
			HODMAIL=rs.getString(2);
			System.out.print(HODMAIL);
		}
		
	/* 
	public static void go(String hodname, String firstname, String lastname,
			String startdate, String username, String password1, String hodemail) 
	*/ 
		if(flag!=0)
		{
			out.println("Success entry");
		}
		    
		}catch(Exception e)
		{
		out.println("error"+e);
		}
		request.setAttribute("hodname",HODNAME);
		request.setAttribute("firstname",FNAME);
		request.setAttribute("lastname",LNAME);
		request.setAttribute("startdate",JD);
		request.setAttribute("username",username);
		request.setAttribute("password1",pwd);
		request.setAttribute("hodemail",HODMAIL);
		RequestDispatcher rd=request.getRequestDispatcher("./MS");
		rd.forward(request,response);
		
	%>
<br>
<center>
<a href="HR_home.jsp">--> HR Home</a>
</center>
</body>
</html>