<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <title>Home</title>
   <jsp:include page="header.jsp" />
  <style>
    header{
      background: url(../images/bgimage.jpg);
      background-size: cover;
      background-position: center;
      min-height: 1000px;
    }
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
  </style>
</head>
<body>

<% 
	response.setHeader("Cache-control","no-cache, no-store, must-revalidate");
	boolean isLoggedIn = session.getAttribute("username") != null; %>
  <!-- navbar -->
  <header>
    <nav class="nav-wrapper transparent">
      <div class="container">
        <a href="#" class="brand-logo">E-Learning WebApp</a>
        <a href="#" class="sidenav-trigger" data-target="mobile-menu">
          <i class="material-icons">menu</i>
        </a>
        <ul class="right hide-on-med-and-down">
          <li><a href="home.jsp">Home</a></li>
          <li><a href= "classes.jsp">Classes</a></li>
          <li><a href= "Courses.jsp">Courses</a></li>
          <li><a href= "aboutus.jsp">About us</a> 
                   
          <li><a class="waves-effect waves-light btn-small lime darken-4" href= <%= isLoggedIn ? "/ELearningWebApp/Logout" : "login.jsp" %>><%=  isLoggedIn? "Logout" : "Login"  %></a></li>
          
        
                  
          
        </ul>
        <ul class="sidenav grey lighten-2" id="mobile-menu">
           <li><a href="home.jsp">Home</a></li>
           <li><a href= "classes.jsp">Classes</a></li>
           <li><a href= "Courses.jsp">Courses</a></li>
          <li><a href= "aboutus.jsp">About us</a> 
          
          <li><a href= <%= isLoggedIn ? "/ELearningWebApp/Logout" : "login.jsp" %>><%= isLoggedIn ? "Logout" : "Login" %></a></li>
        </ul>
      </div>
    </nav>
  </header>

  <!-- photo / grid -->
  <section class="container section scrollspy" id="photos">
    <div class="row">
      <div class="col s12 l4">
          <img src="../images/lovelearn.jpg" alt="" class="responsive-img materialboxed">
      </div>
      <div class="col s12 l6 offset-l1">
        <h2 class="indigo-text text-darken-4">Personalized learning</h2>
        <p>Students practice at their own pace, first filling in gaps in their understanding and then accelerating their learning.</p>
      </div>
    </div>
    <div class="row">
      <div class="col s12 l4 offset-l1 push-l7">
          <img src="../images/tablearn.jpg" alt="" class="responsive-img materialboxed">
      </div>
      <div class="col s12 l6 offset-l1 pull-l5 right-align">
        <h2 class="indigo-text text-darken-4">Computer Managed Learning</h2>
        <p>Computers are the teachers, as they have the role of accessing and managing the individual's learning progress. Education is the key to the mental, physical, spiritual, and social development of humans.</p>
      </div>
    </div>
    <div class="row">
      <div class="col s12 l4">
          <img src="../images/eduimage.jpg" alt="" class="responsive-img materialboxed">
      </div>
      <div class="col s12 l6 offset-l1">
        <h2 class="indigo-text text-darken-4">Linear E-Learning</h2>
        <p>The learning material is passing from sender to receiver without two-way communication between teachers and students.</p>
      </div>
    </div>
  </section>

  <!-- parallax -->
  <div class="parallax-container">
    <div class="parallax">
      <img src="../images/children.jpg" alt="" class="responsive-img">
    </div>
  </div>

  <!-- services / tabs -->
  <section class="section container scrollspy" id="services">
    <div class="row">
      <div class="col s12 l4">
        <h2 class="indigo-text text-darken-4">Why we need education?</h2>
        <p>Learning is not attained by chance, it must be sought for with ardor and attended to with diligence</p>
        <p>Education is the passport to the future, for tomorrow belongs to those who prepare for it today.</p>
      </div>
      <div class="col s12 l6 offset-l2">
        <!-- tabs -->
        <ul class="tabs">
          <li class="tab col s6">
            <a href="#photography" class="active indigo-text text-darken-4">Computer Science Facts</a>
          </li>
          <li class="tab col s6">
            <a href="#editing" class="indigo-text text-darken-4">Science Facts</a>
          </li>
        </ul>
        <div id="photography" class="col s12">
            <p class="flow-text indigo-text text-darken-4">Computer Science Facts</p>
           <p> The first computer game, "Spacewar!", was invented in 1962.</p>
                      <p>The first computer, known as the ENIAC, weighed 30 tons and took up an entire room.
                       </p>
           
        </div>
        <div id="editing" class="col s12">
            <p class="flow-text indigo-text text-darken-4">Science Fact</p>
             <p>Science is the acceptance of what works and the rejection of what does not. That needs more courage than we might think.</p>
            <p>There is no law except the law that there is no law.</p>
        </div>
        </div>
      </div>
 
  </section>

  <!-- parallax -->
  <div class="parallax-container">
    <div class="parallax">
      <img src="../images/neverstoplearning.jpg" alt="" class="responsive-img">
    </div>
  </div>

  <!-- contact form -->
  <section class="section container scrollspy" id="contact">
    <div class="row">
      <div class="col s12 l5">
        <h2 class="indigo-text text-darken-4">Quotes</h2>
        <p>The roots of education are bitter, but the fruit is sweet.</p>

<p>It is not what is poured into a student that counts but what is planted. </p>

<p>An investment in knowledge plays the  best interest.</p>


<p>Education is the key that unlocks the golden door to freedom.</p>
      </div>
      <div class="col s12 l5 offset-l2">
        <form>
          <div class="input-field">
            <i class="material-icons prefix">email</i>
            <input type="email" id="email">
            <label for="email">Your Email</label>
          </div>
          <div class="input-field">
            <i class="material-icons prefix">message</i>
            <textarea id="message" class="materialize-textarea" cols="20" rows="20"></textarea>
            <label for="message">Your Message</label>
          </div>
          <div class="input-field">
            <i class="material-icons prefix">date_range</i>
            <input type="text" id="date" class="datepicker">
            <label for="date">Choose a date you need me for...</label>
          </div>
          <div class="input-field">
            <p>Services required:</p>
            <p>
              <label>
                <input type="checkbox">
                <span></span>
              </label>
            </p>
            <p>
              <label>
                <input type="checkbox">
                <span></span>
              </label>
            </p>
          </div>
          <div class="input-field center">
            <button class="btn">Submit</button>
          </div>
        </form>
      </div>
    </div>
  </section>

  <!-- footer -->
  <footer class="page-footer grey darken-3">
    <div class="container">
      <div class="row">
        <div class="col l6 s12">
          <h5>About Me</h5>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at lacus congue.</p>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at lacus congue, suscipit elit nec, tincidunt orci.</p>
        </div>
        <div class="col l4 offset-l2 s12">
          <h5 class="white-text">Connect</h5>
          <ul>
            <li><a class="grey-text text-lighten-3" href="#">Facebook</a></li>
            <li><a class="grey-text text-lighten-3" href="#">Twitter</a></li>
            <li><a class="grey-text text-lighten-3" href="#">Linked In</a></li>
            <li><a class="grey-text text-lighten-3" href="#">Instagram</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="footer-copyright grey darken-4">
      <div class="container center-align">&copy;</div>
    </div>
  </footer>

  <!-- Compiled and minified JavaScript -->
  <jsp:include page="footer.jsp" />
  
  <script>
    $(document).ready(function(){

      $('.sidenav').sidenav();
      $('.materialboxed').materialbox();
      $('.parallax').parallax();
      $('.tabs').tabs();
      $('.datepicker').datepicker({
        disableWeekends: true,
        yearRange: 1
      });
      $('.tooltipped').tooltip();
      $('.scrollspy').scrollSpy();

    });
  </script>
</body>
</html>