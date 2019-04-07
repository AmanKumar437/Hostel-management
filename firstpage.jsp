<%-- 
    Document   : firstpage
    Created on : 1 Apr, 2019, 12:02:13 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Hostel management</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,800,700,300' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=BenchNine:300,400,700' rel='stylesheet' type='text/css'>
</head>
<body>
	
	<!-- ====================================================
	header section -->
        
	<header class="top-header">
		<div class="container">
			<div class="row">
				<div class="col-xs-5 header-logo">
					<br>
					<a href="index.html"><img src="img/chitkara_image.jpg" height="125" width="125" alt="" class="img-responsive logo"></a>
				</div>

				<div class="col-md-7">
					<nav class="navbar navbar-default">
					  <div class="container-fluid nav-bar">
					    <!-- Brand and toggle get grouped for better mobile display -->
					    <div class="navbar-header">
					      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					        <span class="sr-only">Toggle navigation</span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					      </button>
					    </div>

					    <!-- Collect the nav links, forms, and other content for toggling -->
					    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					      
			 <ul class="nav navbar-nav navbar-right">
					        <li><a class="menu active" href="#home" >Home</a></li>
			        <li><a class="menu" href="leave.jsp">Apply for leave</a></li>
					        <li><a class="menu" href="profile.jsp"> student's info</a></li>
					        
                                                <li><a class="menu" <h3><%=request.getSession().getAttribute("uname").toString()%></h3></a></li>
                                                <li> <form action="logout" method="post" ><a><input type="submit" value="Log Out"  style="background-color:red;color:white;text-decoration:none;font-size:20px"></a></form>
                   <% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");%>
                                                     </li>
					      </ul>
					    </div><!-- /navbar-collapse -->
					  </div><!-- / .container-fluid -->
					</nav>
				</div>
			</div>
		</div>
	</header> <!-- end of header area -->

			
			

			<section class="slider" id="home">
				<div class="container-fluid">
					<div class="row">

					    <div id="carouselHacked" class="carousel slide carousel-fade" data-ride="carousel">
							<div class="header-backup"></div>
					        <!-- Wrapper for slides -->
					        <div class="carousel-inner" role="listbox">
					            <div class="item active">
					            	<img src="img/chitkara_slide3.jpg" width="1500"alt="">
					                <div class="carousel-caption">
				               			<h1>Welcome To</h1>
				               			<p>Chitkara university,himachal pradesh</p>
				               			
					                </div>
					            </div>
					            <div class="item">
					            	<img src="img/slide_7.jpg" height="700" width="1600" alt="">
					                <div class="carousel-caption">
				               			<h1>Education</h1>
				               			<p>we are eager to provide quality education</p>
				               			
					                </div>
					            </div>
					            <div class="item">
					            	<img src="img/chitkara_slide4.jpg" width="1600" alt="">
					                <div class="carousel-caption">
				               			<h1>Hostel</h1>
				               			<p>we provide quality education with home like environment</p>
				               			
					                </div>
					            </div>
					            <div class="item">
					            	<img src="img/slide-three.jpg" alt="" width="1600" >
					                <div class="carousel-caption">
				               			<h1>Environment</h1>
				               			<p>We are ranked third in swachhta ranked</p>
				               			
					                </div>
					            </div>
					        </div>

					        <!-- Controls -->
					        <a class="left carousel-control" href="#carouselHacked" role="button" data-slide="prev">
					            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					            <span class="sr-only">Previous</span>
					        </a>
					        <a class="right carousel-control" href="#carouselHacked" role="button" data-slide="next">
					            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					            <span class="sr-only">Next</span>
					        </a>
					    </div>

					</div>
				</div>
			</section><!-- end of slider section -->


			<!-- about section -->
			<section class="about text-center" id="about">
				<div class="container">
					<div class="row">
						<h2>about us</h2>
						<h4>Chitkara University in Punjab, has been founded by Dr. Ashok Chitkara and Dr. Madhu Chitkara, who have been passionate teachers for more than 40 years now.</h4>
                                                <h4> We are eager to provide quality education in following fields</h4>
						<div class="col-md-4 col-sm-6">
							<div class="single-about-detail clearfix">
								<div class="about-img">
									<img src="img/about4.jpg" alt="">
								</div>

								<div class="about-details">
									<div class="pentagon-text">
										<h1>E</h1>
							</div>

									<h3>ENGINEERING</h3>
									<p>Computer Science:
Game Design & Augmented Reality  |  Mobile Computing  |  DevOps  |  Data Analytics  | 	Full Stack Development | 	Cyber Security  |  Cloud Computing & Virtualisation |  UI/UX Design  |  AI & Machine Learning
Electronics & Communication:.</p>
								</div>
							</div>
						</div>

						<div class="col-md-4 col-sm-6">
							<div class="single-about-detail">
								<div class="about-img">
									<img class="img-responsive" src="img/about5.jpg" alt="">
								</div>

								<div class="about-details">
									<div class="pentagon-text">
										<h1>H</h1>
									</div>

									<h3>HOSPITALITY</h3>
									<p>HOSPITALITY
3-Year Hospitality programs focus on hotel operational skills and management skills needed for careers which work in India and across the world.
B.Sc Hospitality Administration
B.Sc Hospitality affiliated with NCHMCT</p>
								</div>
							</div>
						</div>


						<div class="col-md-4 col-sm-6">
							<div class="single-about-detail">
								<div class="about-img">
									<img class="img-responsive" src="img/about6.jpg" alt="">
								</div>

								<div class="about-details">
									<div class="pentagon-text">
										<h1>C</h1>
									</div>

									<h3>COMMERCE</h3>
									<p>Computer Science:
Game Design & Augmented Reality  |  Mobile Computing  |  DevOps  |  Data Analytics  | 	Full Stack Development | 	Cyber Security  |  Cloud Computing & Virtualisation |  UI/UX Design  |  AI & Machine Learning
Electronics & Communication:</p>
								</div>
							</div>
						</div>

					</div>
				</div>
			</section><!-- end of about section -->


			<!-- service section starts here -->

			<section class="service text-center" id="service">
				<div class="container">
					
				</div>
			</section><!-- end of service section -->


			<!-- team section -->

			
			<!-- end of team section -->

			


			<!-- footer starts here -->
			<footer class="footer clearfix">
				<div class="container">
					<div class="row">
						<div class="col-xs-6 footer-para">
							<p>&copy; <a href="https://www.amankumar.com">Aman kumar</a> All right reserved</p>
						</div>

						<div class="col-xs-6 text-right">
							<a href=""><i class="fa fa-facebook"></i></a>
							<a href=""><i class="fa fa-twitter"></i></a>
							<a href=""><i class="fa fa-skype"></i></a>
						</div>
					</div>
				</div>
			</footer>



	

	<!-- script tags
	============================================================= -->
	<script src="js/jquery-2.1.1.js"></script>
	<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
	<script src="js/gmaps.js"></script>
	<script src="js/smoothscroll.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/custom.js"></script>
	
</body>


</html>
