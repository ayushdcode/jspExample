<%
	if(session.getAttribute("USER")!=null)
	{
		session.invalidate();
		
	}
    response.sendRedirect("index.html");
%>