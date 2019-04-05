<%@page import="ta.db.com.DBHelper"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>User List</h1>

<table>
 	<tr>
		<th>NAME</th>
		<th>EMAIL</th>
	</tr>	
    <% 
        ResultSet rs=null;
	try{
		DBHelper db=new DBHelper();
	        rs=db.getAllUsers();
	  while(rs.next())
	  {       
         %>
	<tr style="color:#0ff000">
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
   <td><a href="update.jsp?email=<%=rs.getString(2)%>">Edit</a></td>
    <td><a href="delete.jsp?email=<%=rs.getString(2)%>">Delete</a></td>
		
 	</tr>
      <% 
          }//while loop
       }//try
       catch(Exception e){
    	}            
      %>
  </table>



</body>
</html>