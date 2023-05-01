<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.*, com.web.dao.CoursesDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Courses</title>
  <style>
  .card-image{
    height: 350px; /* Your height here */
    overflow: hidden;
}
  </style>
</head>
<body style ="background-color: #e1f5fe ">
 <jsp:include page="header.jsp" />
<nav>
  <div class="nav-wrapper  teal accent-4">
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
Map<String, List<Map<String,String>>> sublist=CoursesDAO.getInstance().getCourses();
for (Map.Entry<String, List<Map<String,String>>> entry: sublist.entrySet()){
	%>
	    
	
	<%
	String subname=entry.getKey();
	%>
	<br>
	<h3><%=subname%></h3>
		<div class="row">
	
	<%
	for(Map<String,String> subs:entry.getValue()){
		Map.Entry<String,String> subMap = subs.entrySet().iterator().next();
%>
<div class="col s6 m6 l5 xl6">

      <div class="card ">
      <p class="z-depth-5"></p>
        <div class="card-image">
        <img class="responsive-img" src= "<%=subMap.getValue() %>">
        
          <span class="card-title "><%=subMap.getKey()%></span>
          
        </div>
        <div class="card-action">
         
          <a href="../SubscribeServlet?subName=<%=subMap.getKey() %>">Subscribe</a>
          
          
          
        </div>
      </div>
    </div>
  <% }
	%>
	    </div>
	 
	<%} %>
  
 <jsp:include page="footer.jsp" />
</body>
</html>