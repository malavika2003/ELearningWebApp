<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,com.web.dao.ClassesDAO, com.web.pojo.Standard"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Classes</title>

<jsp:include page="header.jsp" />
<jsp:include page="navbar.jsp" />

     <link rel="stylesheet" href="dropstyle.css">
 <!-- style>

    @media screen and (max-width: 670px){
      header{
        min-height: 500px;
      }
    }
    .section{
      padding-top: 4vw;
      padding-bottom: 4vw;
    }
    .tabs .indicator{
      background-color: #1a237e;
    }
    .tabs .tab a:focus, .tabs .tab a:focus.active{
      background: transparent;
    }
  </style -->


</head>
<body>

<%
      response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
      if(session.getAttribute("username")==null) 
          {
	          response.sendRedirect("login.jsp");
          }
      else{
    	  List<Standard> classlist=ClassesDAO.getInstance().getClasses();
    	  for(Standard std: classlist){
    		  
    	 
%>



<div class="row">
    <div class="col s6 m6 l5 xl6">
      <div class="card blue-grey darken-1">
        <div class="card-content white-text">
          <span class="card-title"><%=std.getClassName() %></span>
          
        </div>
        <div class="card-action">
          <a href="videos.jsp?classId=<%=std.getClassId() %>"> Subscribed Courses</a>
          <a href="selectedsubs.jsp?classId=<%=std.getClassId() %>"> All Courses</a>
                     
          
        </div>
      </div>
    </div>
  </div>
  
  <%
    	  }
      }
%>
  
 
  <jsp:include page="footer.jsp" />

  
</body>
</html>