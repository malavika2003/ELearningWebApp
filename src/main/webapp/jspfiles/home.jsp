<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!-- font awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
  <!--Import Google Icon Font-->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">
  <title>Home</title>
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
          <li><a href= "welcome.jsp">Courses</a></li>
          <li><a href= "aboutus.jsp">About us</a> 
          <li><a href= "contact.jsp">Contact</a>           
          <li><a href="#" class="tooltipped btn-floating btn-small indigo darken-4" data-position="bottom" data-tooltip="Instagram"> 
            <i class="fab fa-instagram"></i>
          </a></li>
          <li><a href="#" class="tooltipped btn-floating btn-small indigo darken-4" data-position="bottom" data-tooltip="Facebook">
            <i class="fab fa-facebook"></i>
          </a></li>
          <li><a href="#" class="tooltipped btn-floating btn-small indigo darken-4" data-position="bottom" data-tooltip="Twitter">
            <i class="fab fa-twitter"></i>
          </a></li>
        </ul>
        <ul class="sidenav grey lighten-2" id="mobile-menu">
           <li><a href="home.jsp">Home</a></li>
          <li><a href= "welcome.jsp">Courses</a></li>
          <li><a href= "aboutus.jsp">About us</a> 
          <li><a href= "contact.jsp">Contact</a> </li>
        </ul>
      </div>
    </nav>
  </header>

  <!-- photo / grid -->
  <section class="container section scrollspy" id="photos">
    <div class="row">
      <div class="col s12 l4">
          <img src="img/portrait.jpg" alt="" class="responsive-img materialboxed">
      </div>
      <div class="col s12 l6 offset-l1">
        <h2 class="indigo-text text-darken-4">Portraits</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at lacus congue, suscipit elit nec, tincidunt orci.</p>
      </div>
    </div>
    <div class="row">
      <div class="col s12 l4 offset-l1 push-l7">
          <img src="img/city.jpg" alt="" class="responsive-img materialboxed">
      </div>
      <div class="col s12 l6 offset-l1 pull-l5 right-align">
        <h2 class="indigo-text text-darken-4">Cityscapes</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at lacus congue, suscipit elit nec, tincidunt orci.</p>
      </div>
    </div>
    <div class="row">
      <div class="col s12 l4">
          <img src="img/nature.jpg" alt="" class="responsive-img materialboxed">
      </div>
      <div class="col s12 l6 offset-l1">
        <h2 class="indigo-text text-darken-4">Nature</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at lacus congue, suscipit elit nec, tincidunt orci.</p>
      </div>
    </div>
  </section>

  <!-- parallax -->
  <div class="parallax-container">
    <div class="parallax">
      <img src="img/street.jpg" alt="" class="responsive-img">
    </div>
  </div>

  <!-- services / tabs -->
  <section class="section container scrollspy" id="services">
    <div class="row">
      <div class="col s12 l4">
        <h2 class="indigo-text text-darken-4">What I do..</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at lacus congue, suscipit elit nec, tincidunt orci.</p>
        <p>Mauris dolor augue, vulputate in pharetra ac, facilisis nec libero. Fusce condimentum gravida urna, vitae scelerisque erat ornare nec.</p>
      </div>
      <div class="col s12 l6 offset-l2">
        <!-- tabs -->
        <ul class="tabs">
          <li class="tab col s6">
            <a href="#photography" class="active indigo-text text-darken-4">Photography</a>
          </li>
          <li class="tab col s6">
            <a href="#editing" class="indigo-text text-darken-4">Editing</a>
          </li>
        </ul>
        <div id="photography" class="col s12">
            <p class="flow-text indigo-text text-darken-4">Photography</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at lacus congue, suscipit elit nec, tincidunt orci.</p>
            <p>Mauris dolor augue, vulputate in pharetra ac, facilisis nec libero. Fusce condimentum gravida urna, vitae scelerisque erat ornare nec.</p>
        </div>
        <div id="editing" class="col s12">
            <p class="flow-text indigo-text text-darken-4">Editing</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at lacus congue, suscipit elit nec, tincidunt orci.</p>
            <p>Mauris dolor augue, vulputate in pharetra ac, facilisis nec libero. Fusce condimentum gravida urna, vitae scelerisque erat ornare nec.</p>
        </div>
        </div>
      </div>
    </div>
  </section>

  <!-- parallax -->
  <div class="parallax-container">
    <div class="parallax">
      <img src="img/stars.jpg" alt="" class="responsive-img">
    </div>
  </div>

  <!-- contact form -->
  <section class="section container scrollspy" id="contact">
    <div class="row">
      <div class="col s12 l5">
        <h2 class="indigo-text text-darken-4">Get in Touch</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at lacus congue, suscipit elit nec, tincidunt orci.</p>
        <p>Mauris dolor augue, vulputate in pharetra ac, facilisis nec libero. Fusce condimentum gravida urna, vitae scelerisque erat ornare nec.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at lacus congue, suscipit elit nec, tincidunt orci.</p>
        <p>Mauris dolor augue, vulputate in pharetra ac, facilisis nec libero. Fusce condimentum gravida urna, vitae scelerisque erat ornare nec.</p>
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
                <span>Photography</span>
              </label>
            </p>
            <p>
              <label>
                <input type="checkbox">
                <span>Photo Editing</span>
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
      <div class="container center-align">&copy; 2018 Photo Ninja</div>
    </div>
  </footer>

  <!-- Compiled and minified JavaScript -->
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>
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