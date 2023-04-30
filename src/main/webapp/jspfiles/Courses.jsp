<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.*, com.web.dao.CoursesDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Courses</title>
  
</head>
<body>
 <jsp:include page="header.jsp" />
<nav>
  <div class="nav-wrapper">
     <a href="#" class="brand-logo">E-Learning WebApp</a>
      <a href="#" class="sidenav-trigger" data-target="mobile-menu">
          <i class="material-icons">menu</i>
        </a>
    <ul class="right hide-on-med-and-down">
      
          <li><a href="home.jsp">Home</a></li>
          <li><a href= "classes.jsp">Classes</a></li>
          <li><a href= "Courses.jsp">Courses</a></li>
          <li><a href= "aboutus.jsp">About us</a> </li>
         <li>
    </ul>
  </div>
</nav>   
<%
Map<String, List<String>> sublist=CoursesDAO.getInstance().getCourses();
for (Map.Entry<String, List<String>> entry: sublist.entrySet()){
	String subname=entry.getKey();
	%>
	<h3><%=subname%></h3>
	<%
	for(String subs:entry.getValue()){
		
%>
<div class="row">
    <div class="col s12 m6">
      <div class="card blue-grey darken-1">
        <div class="card-content white-text">
        
          <span class="card-title"><%=subs %></span>
          
        </div>
        <div class="card-action">
         
          <a href="../SubscribeServlet?subName=<%=subs %>">Subscribe</a>
          
          
          
        </div>
      </div>
    </div>
  </div>
  <% }} %>
 <jsp:include page="footer.jsp" />
</body>
</html>