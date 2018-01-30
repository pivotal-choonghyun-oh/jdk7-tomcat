<%@page language="java" contentType="text/html; charset=euc-kr"%> 
<html> 
<body> 
<h3>Get session data</h3> 
<%
	String instanceIndex=System.getenv("CF_INSTANCE_INDEX");
	out.println("INDEX=" + instanceIndex + "<br>");
	out.println("GET:: session value=" + session.getAttribute("my-key"));	
%>
</body> 
</html> 



