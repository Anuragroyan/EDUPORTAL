<?php
  session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>student's site</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 100px;
      background-color: lightgray;
      height: 190%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    .sidenav{
	 position:right;
	 width:33%;
	 height: 190%;
	 background-color: lightgray;
	}
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
<div id="gugu"  style="background-color:white;float:right;height:100px;width:300px;box-shadow:10px 10px 10px 5px #888888;">
<button style="float:right;" onClick="close_gugu()">Close</button>
<?php echo $_SESSION['user']; ?>
</div>
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">EDUPORTAL</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="eduportal.html">Home</a></li>
        <li><a href="college.php">College</a></li>
		<li><a href="review.php">Reviews</a></li>
        <li><a href="faq.php">FAQ</a></li>
		 <li><a href="comment.php">Comments</a></li>
        <li><a href="contact.php">Contact</a></li>
		 <li><a href="feedback.php">Feedback</a></li>
		  <li><a href="email.php">Email</a></li>
		 </ul>
	  <ul class="nav navbar-nav navbar-right">
        <li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
    <a href="csearch.php"><input type="button" name="college_search" class="btn btn-default" value="college_search"/></a><br><br>
  <hr>
  <div>
  <a href="compare.php"><input type="button" name="college_compare" class="btn btn-default" value="college_compare"/></a><br><br>
  <a href="predict.php"><input type="button" name="college_predictor" class="btn btn-default" value="college_predictor"/></a>
  </div>
</form>
   </div>
    <div class="col-sm-8 text-left"> 
      <h1 style="color:Dodgerblue">Welcome <?php echo $_SESSION['user']; ?></h1>
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
	 <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>
  

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="lab.jpeg" alt="lab" >
	  <div class="carousel-caption">
	   <h3>Computer-lab</h3>
	   </div>
	  </div>
	  

    <div class="item">
      <img src="convocation.jpg" alt="Convocation" >
	  <div class="carousel-caption">
	   <h3>Convocation Day</h3>
	   </div>
    </div>

    <div class="item">
      <img src="Library.jpg" alt="Library">
	  <div class="carousel-caption">
	   <h3>Library</h3>
	   </div>
    </div>
	<div class="item">
      <img src="classroom.jpg" alt="classroom" >
	  <div class="carousel-caption">
	   <h3>Classroom</h3>
	   </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div> <br>
      <h1>About</h1>
      <p>An education portal is a comprehensive tool providing information about the organization providing education services. It is used as a search engine for information related to course, list of colleges, universities etc. The portal provides information like list of course, career-related information previous year question paper. This portal guides the user to take fields and decide for the course that the user can choose in those fields.</p>
    </div>
        </div>
  </div>
  

<footer class="container-fluid text-center">
    <div class="footer-main-div">
	<div class="footer-social-icon">
	 <ul>
	   <li><a href="http://www.facebook.com" target="blank"><i class="fa fa-facebook"></i></a></li>
	   <li><a href="http://www.twitter.com" target="blank"><i class="fa fa-twitter"></i></a></li>
	    <li><a href="http://www.youtube.com" target="blank"><i class="fa fa-youtube"></i></a></li>
		 <li><a href="http://www.google.com" target="blank"><i class="fa fa-google-plus"></i></a></li>
		 </ul>
		 </div>
		 <div class="footer-menu-one">
		  <ul>
		     <li><a href="eduportal.html">Home</a></li>
			 <li><a href="<p>">About</a></li>
			 <li><a href="#">Service</a></li>
			 <li><a href="contact.php">Contact us</a></li>
			 </ul>
			 
		 </div>
		 </div>
		 <div class="footer-bottom">
		  <p>Designed By:<a href="#">Anurag Roy</a></li>
		 </div>
		 </footer>


</body>
<script type="text/javascript">
function close_gugu()
    { document.getElementById('gugu').style.display="none"; }
</script>		 
</html>
