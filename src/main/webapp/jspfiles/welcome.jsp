<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<%
    response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
    if(session.getAttribute("username")==null) 
    {
    	response.sendRedirect("login.jsp");
    }
%>
Welcome page.....
helLOO ${username}<br>
<a href= "videos.jsp">Videos here</a>
<form action="/ELearningWebApp/Logout">
<input type="submit" value= "Log out">
</form>

</body>
</html>