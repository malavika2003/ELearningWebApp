<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, com.web.dao.CourseMapperDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Videos</title>
</head>
<body>

<%

    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
    if(session.getAttribute("username")==null) 
    {
    	response.sendRedirect("login.jsp");
    }
    else{
    	int userID = ((Integer)session.getAttribute("userId")).intValue();
    	Map<String, List<String>> subMap = CourseMapperDAO.getInstance().getCourses(userID);
    
    	for (Map.Entry<String, List<String>> entry: subMap.entrySet()){
%>
<iframe width="560" height="315" src="<%=entry.getValue().get(0)%>" title="<%=entry.getKey()%>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
<a href="<%=entry.getValue().get(1)%>">Question Papers</a>
<a href="<%=entry.getValue().get(2)%>">E-Text Books</a>

<%
    	}
    }
%>
</body>
</html>