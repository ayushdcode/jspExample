<%@page import="ta.db.com.DBHelper"%>
<%
      String msg="";
		String username=request.getParameter("uname");
        String emailid=request.getParameter("email");
        String pwd=request.getParameter("pass");
        try{
        	DBHelper db=new DBHelper();
        	int count=db.addUser(username, emailid, pwd);
        	if(count>0)
        	{
        		msg="Register success";
        	response.sendRedirect("index.html");
        		//out.print("Register successs");
        	}
        	else
        		msg="Failed";
        }catch(Exception e)
        {
        	out.print("ERROR :"+e);
        } 
        
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
      <h1 style="color:#000fff"><%=msg%></h1>
	
</body>
</html>


