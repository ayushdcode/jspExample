<%@page import="ta.db.com.DBHelper"%>
<% 
	String em="";
    if(request.getParameter("email")!=null)
	   em=request.getParameter("email");
 
    String nemail=request.getParameter("newemail"); 
    String uname=request.getParameter("uname");
	if(nemail!=null)
	{
		DBHelper db=new DBHelper();
		int c=db.editData(uname, nemail);
		if(c>0)
			out.print("UPDATE DATA SUCCESSFULLY");
		else
			out.print("Not Update");
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
<form action="">
  <input type="text" name="newemail" value="<%=em%>">
  <input type="text" name="uname" placeholder="Enter new name">
  <input type="submit" value="UPDATE NOW">
</form>
<a href="showUsers.jsp">Show User</a>
</body>
</html>