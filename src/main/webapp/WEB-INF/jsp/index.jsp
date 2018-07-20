<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">


  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">
    
   <link href="./styles/bootstrap.css" rel="stylesheet">
   <!-- <link href="./styles/bootstrap.css" rel="stylesheet"> -->

    <!-- Custom styles for this template -->
    <link href="./styles/carousel.css" rel="stylesheet">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    

    <title>Home</title>

    <!-- Bootstrap core CSS -->
    <link href="./styles/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    

    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">
  </head>
  
  <body>

    <header>
   <!--  NAVIGATION MENU BAR
   ================================================== -->
    
       <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="#">ConnectOurHearts</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        
      
      <button class="w3-button w3-black">HOME</button>
        <a href="about"><button class="w3-button w3-white"><i class="fa fa-diamond w3-margin-right"></i>About</button></a>
		
		<a target="_blank"  href="radarMap"><button class="w3-button w3-white w3-hide-small"><i class="fa fa-photo w3-margin-right"></i>Weather</button></a>
		<a href="register"><button class="w3-button w3-white"><i class="fa fa-diamond w3-margin-right"></i>Register</button></a>

      <a target="_blank"  href="login"><button class="w3-button w3-white w3-hide-small"><i class="fa fa-photo w3-margin-right"></i>Login</button></a>
      <a class="btn btn-lg btn-primary" href="donate" role="button">Donate</a>
      
      </nav>
    </header>

     <main role="main"> 
     
     <!-- CAROUSEL SLIDES AND LINKS TO OTHER TABS 
     ================================================== -->

      <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
          <li data-target="#myCarousel" data-slide-to="3"></li>
          <!-- <li data-target="#myCarousel" data-slide-to="4"></li> -->
          
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="first-slide" src=".//images//hurricane-maria-puerto-rico-04.jpg" width="1500" height="600"alt="First slide">
            <div class="container">
              <div class="carousel-caption text-left">
                <h1>Hurricane Maria 2017</h1>
                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                <p><a class="btn btn-lg btn-primary" href="register" role="button">Sign up today</a></p>
                
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="second-slide" src=".//images//hurricane-rescue-volunteers.jpg" width="1500" height="600" alt="Second slide">
            <div class="container">
              <div class="carousel-caption">
                <h1>Looking for a way to help?.</h1>
                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                <p><a class="btn btn-lg btn-primary" href="about" role="button">Learn more</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="third-slide" src=".//images//volunteers.jpg" width="1400" height="600" alt="Third slide">
            <div class="container">
              <div class="carousel-caption text-right">
                <h1>Be a Volunteer!</h1>
                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                <p><a class="btn btn-lg btn-primary" href="allEvents" role="button">Browse Opportunities</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="fourth-slide" src=".//images//harveyflood2.jpg" width="1500" height="600" alt="Fourth slide">
            <div class="container">
              <div class="carousel-caption text-left">
                <h1>Connect Our Hearts!</h1>
                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Natural Disaster Training</a></p>
              </div>
            </div>
           </div>
           
          </div>
        </div>
        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      


      <!-- Marketing messaging and featurettes
      ================================================== -->
      <!-- Wrap the rest of the page in another container to center all the content. -->

      <div class="container marketing">

        <!-- Three columns of text below the carousel -->
        <div class="row">
          <div class="col-lg-4">
            <img class="rounded-circle" src=".//images//volunteers_boardwalk_Sandy_sweepers_jeh.jpg" width="140" height="140">
            <h2>After The Storm</h2>
            <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
            <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <img class="rounded-circle" src=".//images//thumbnailimage.img.jpg" width="140" height="140">
            <h2>Destruction</h2>
            <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
            <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <img class="rounded-circle" src=".//images//volunteers_boardwalk_Sandy_sweepers_jeh.jpg" width="140" height="140">
            <h2>How You Can Help</h2>
            <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
            <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
        </div><!-- /.row -->


        <!-- START THE FEATURETTES -->

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">After Hurricane Katrina. <span class="text-muted">10+ years later....</span></h2>
            <p class="lead">New Orleans population in 2005 before Katrina was over 400,000 and now even more than 10 years later, it is only 300,000.</p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" src=".//images//hurricaneharvey.jpg" data-src=".//images//hurricaneharvey.jpg" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7 order-md-2">
            <h2 class="featurette-heading">California Wildfires spread to Luxury Bel-Air neighborhood in Dec 2017 <span class="text-muted">See for yourself.</span></h2>
            <p class="lead">Several homes in Los Angeles luxury Bel-Air neighborhood are burning on Wednesday morning as a wind-driven wildfire prompted closure of the 405 Freeway and mandatory evacuations in an area of multi million-dollar homes.</p>
          </div>
          <div class="col-md-5 order-md-1">
            <img class="featurette-image img-fluid mx-auto" src=".//images//Southern-California-Wildfires-December-2017-4.jpg" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">Wildfires continue to wreak havoc across the West. <span class="text-muted">A Yearly Issue.</span></h2>
            <p class="lead">

Despite record-breaking rain and snowfall across the West in 2017, this year's fire season has been unforgiving.

Billows of thick black smoke and red-hot flames have consumed hundreds of thousands of acres in Montana, Oregon, Washington, Idaho, California and Utah. More than 24,000 firefighters have been battling 137 blazes, some for as long as six months, leaving experts shocked at the scale and duration.

"Typically by the third week of September we see not as much fire activity," said Jessica Gardetto, spokeswoman for the National Interagency Fire Center. "But we just haven't had that relief."</p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" src=".//images//californiawildfires.jpg" width="500" height="500" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <!-- /END THE FEATURETTES -->

      </div><!-- /.container -->

<!-- Contact Section -->
  <div class="w3-container w3-padding-large w3-grey">
    <h4 id="contact"><b>Contact Me</b></h4>
    <div class="w3-row-padding w3-center w3-padding-24" style="margin:0 -16px">
      <div class="w3-third w3-dark-grey">
        <p><i class="fa fa-envelope w3-xxlarge w3-text-light-grey"></i></p>
        <p>djudd0720@yahoo.com</p>
      </div>
      <div class="w3-third w3-teal">
        <p><i class="fa fa-map-marker w3-xxlarge w3-text-light-grey"></i></p>
        <p>St Louis, MO, US</p>
      </div>
      <div class="w3-third w3-dark-grey">
        <p><i class="fa fa-phone w3-xxlarge w3-text-light-grey"></i></p>
        <p>8047227222</p>
      </div>
    </div>
    <hr class="w3-opacity">
    <form action="/action_page.php" target="_blank">
      <div class="w3-section">
        <label>Name</label>
        <input class="w3-input w3-border" type="text" name="Name" required>
      </div>
      <div class="w3-section">
        <label>Email</label>
        <input class="w3-input w3-border" type="text" name="Email" required>
      </div>
      <div class="w3-section">
        <label>Message</label>
        <input class="w3-input w3-border" type="text" name="Message" required>
      </div>
      <button type="submit" class="w3-button w3-black w3-margin-bottom"><i class="fa fa-paper-plane w3-margin-right"></i>Send Message</button>
    </form>
  </div>

  <!-- Footer -->
  <footer class="w3-container w3-padding-32 w3-dark-grey">
  <div class="w3-row-padding">
    <div class="w3-third">
      <h3>FOOTER</h3>
      <p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
      <p>Powered by <a href="http://denisejudd.com" target="_blank">Connect Our Hearts</a></p>
    </div>
  
    <div class="w3-third">
      <h3>BLOG POSTS</h3>
      <ul class="w3-ul w3-hoverable">
        <li class="w3-padding-16">
          <img src=".//images//volunteers.jpg" class="w3-left w3-margin-right" style="width:50px">
          <span class="w3-large">Volunteers</span><br>
          <span>Sed mattis nunc</span>
        </li>
        <li class="w3-padding-16">
          <img src=".//images//ToyMalaysiaCHR.png" class="w3-left w3-margin-right" style="width:50px">
          <span class="w3-large">Foreign</span><br>
          <span>Praes tinci sed</span>
        </li> 
      </ul>
    </div>

    <div class="w3-third">
      <h3>POPULAR TAGS</h3>
      <p>
        <span class="w3-tag w3-black w3-margin-bottom">Travel</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">New York</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">London</span>
        <span class="w3-tag w3-grey w3-small w3-margin-bottom">IKEA</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">NORWAY</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">DIY</span>
        <span class="w3-tag w3-grey w3-small w3-margin-bottom">Ideas</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">Baby</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">Family</span>
        <span class="w3-tag w3-grey w3-small w3-margin-bottom">News</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">Clothing</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">Shopping</span>
        <span class="w3-tag w3-grey w3-small w3-margin-bottom">Sports</span> <span class="w3-tag w3-grey w3-small w3-margin-bottom">Games</span>
      </p>
    </div>

  </div>
  </footer>
  
  <div class="w3-black w3-center w3-padding-24">Powered by <a href="http://denisejudd.com" title="ConnectOurHearts" target="_blank" class="w3-hover-opacity">ConnectOurHearts</a></div>

<!-- End page content -->
<!-- </div> -->

      <!-- FOOTER -->
      <footer class="container">
        <p class="float-right"><a href="#">Back to top</a></p>
        <p>&copy; 2018-2019 ConnectOurHearts, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>
    </main>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery-3.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="js/holder.js"></script>
    
    <!-- <script src="https://js/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
 -->
    
  </body>
</html>
