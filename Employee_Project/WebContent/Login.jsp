<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head><title>Employee On-Board Home</title>
<script type="text/javascript">
function validate()
{
		var myForm=document.forms[0];
		var un=myForm.uname;
		var pw=myForm.pwd;
		if(un.value.length==0 && pw.value.length==0)
		{
			alert("Fields Shudnt be left empty!!");
			un.focus();
		}
		else if(un.value.length==0)
		{
			
			alert("username is requird");
			un.focus();
			
		}
		else if(pw.value.length==0)
		{
			alert("password is requird");
			pw.focus();
			
		}
	
}
</script>
</head>
<body>
<img alt="" src="rms1.jpg" height="40%" width="100%">
	<center><form method="post" id=1 action="LoginCheck.jsp">
	
	<h2><font color="red">Welcome To Employee On-board</font></h2>
	<fieldset>
	<br>
	<b>User name&nbsp;&nbsp;</b><span></span><input width="150" type="text" name="eid"><br><br>
	<b>Pass word&nbsp;&nbsp;</b><span></span><input width="150" type="password" name="pwd"><br><br>
	<input type='submit' value='Submit' onclick='return validate()'/>
	<br>
	</fieldset>
	</form></center>
</body>
</html>