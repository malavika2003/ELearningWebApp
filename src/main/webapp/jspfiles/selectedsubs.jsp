<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.*, com.web.dao.CoursesDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Courses</title>
<jsp:include page="header.jsp" />
   <jsp:include page="navbar.jsp" />
   
</head>
<body>

<%
response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
if(session.getAttribute("username")==null) 
    {
        response.sendRedirect("login.jsp");
    }
else{
	int classId=Integer.parseInt(request.getParameter("classId"));
    Map<String, List<String>> sublist=CoursesDAO.getInstance().selectedCourses(classId);
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
  <% }}} %>
 <jsp:include page="footer.jsp" />

</body>
</html>