<%@page import="ta.db.com.DBHelper"%>
<% 
	String em="";
    if(request.getParameter("email")!=null)
	   em=request.getParameter("email"); 
  
	if(em!=null)
	{
		DBHelper db=new DBHelper();
		int c=db.delData(em);
		if(c>0)
			out.print("Delete DATA SUCCESSFULLY");
		else
			out.print("Not Deleted");
	}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<a href="showUsers.jsp">Show User</a>
</body>
</html>