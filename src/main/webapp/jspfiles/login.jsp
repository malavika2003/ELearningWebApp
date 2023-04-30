<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Login</title>

  </head>
        <link rel="stylesheet" href="style.css">
  <style>
    body {
      background-image: url(../images/login_bg.jpg);
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: cover;
    }
    </style>
  <body>
  <%
  	if(session.getAttribute("username") != null){
  		response.sendRedirect("classes.jsp");
  		return;
  	}
  %>
    
    <div class="center">
        <h1>Login</h1>
      <form action="/ELearningWebApp/Login" method="post">
        <div class="txt_field">
         <input type="text" required name= "Username"><br>
          <span></span>
          <label>Username</label>
        </div>
        <div class="txt_field">
          <input type="password" required name= "Userpassword"><br>
          <span></span>
          <label>Password</label>
        </div>
        <div class="pass">Forgot Password?</div>
        <input type="submit" value="login">
        <div class="signup_link">
          Not a member? <a href="#">Signup</a>
        </div>
      </form>
    </div>

  </body>
</html>
    
    
    
    
    
    
    
    
    
    
    
    
    
