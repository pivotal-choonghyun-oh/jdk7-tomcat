<%@page language="java" contentType="text/html; charset=euc-kr"%> 
<html> 
<% 
session = request.getSession(true); 

request.getSession().setAttribute("my-key", "pm set value."); 

%> 
<body> 
<h3>Set session data</h3> 
<%
	out.println("session value=" + session.getAttribute("my-key"));	
%>
</body> 
</html> 



