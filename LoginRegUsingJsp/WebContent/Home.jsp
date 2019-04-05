<%@page import="ta.model.com.User"%>
<% 
		User u=(User)session.getAttribute("USER");
        String un=u.getName();
        String email=u.getEmail();
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
</head>
<body bgcolor="grery">
<h3 style="color:#FFFFFF">Welcome To Mr.</h3>
<h1 style="color:#000fff"><%=un %></h1>
<h2 style="color:#eeff00"><%=email %></h2>
<a href="logout.jsp">Logout</a>
</body>
</html>