<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
  <!-- Dropdown Structure -->
  <header>
<ul id="dropdown1" class="dropdown-content">
  <% 
    response.setHeader("Cache-control","no-cache, no-store, must-revalidate");
    if(session.getAttribute("username")==null)
    {
    	response.sendRedirect("login.jsp");
    	return;
    }
%>
 <li><a href="/ELearningWebApp/Logout" class ="button">Logout</a></li>
</ul>
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
      <!-- Dropdown Trigger -->
      <li><a class="dropdown-trigger " href="#" data-target="dropdown1"><i class="material-icons">account_circle</i><i class="material-icons right">arrow_drop_down</i></a></li>
    </ul>
  </div>
</nav>
        
  </header>
    <script>
$(document).ready(function(){
	  $('.dropdown-trigger').dropdown();
	});
    </script>

</body>
</html>