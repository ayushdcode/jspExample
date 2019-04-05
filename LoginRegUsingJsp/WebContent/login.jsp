<%@page import="ta.db.com.DBHelper"%>
<%@page import="ta.model.com.User"%>
<%
      String msg="";
		String emailid=request.getParameter("email");
        String pwd=request.getParameter("pass");
        try{
        	DBHelper db=new DBHelper();
        	User user=db.getUser(emailid, pwd);
        	if(user!=null)
        	{
        		session.setAttribute("USER", user);
        		response.sendRedirect("Home.jsp");		
        	}
        	else
        		response.sendRedirect("login.html");		
            
        
        }catch(Exception e)
        {
        	out.print("ERROR :"+e);
         } 
        
%>
<html>
<body>
	<h1 style="color:#f00ff0"><%= msg %></h1>
</body>
</html>