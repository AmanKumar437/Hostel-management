<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Hostel management</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,800,700,300' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=BenchNine:300,400,700' rel='stylesheet' type='text/css'>
        <link href="yell.css" rel="stylesheet" style="css/text" />
        <style> 
            input[type=text] {
                width: 70%;
                padding: 12px 20px;
                margin: 8px 0;
                box-sizing: border-box;
                border: 3px solid #ccc;
                -webkit-transition: 0.5s;
                transition: 0.5s;
                outline: none;
            }
            input[type=date] {
                width: 70%;
                padding: 12px 20px;
                margin: 8px 0;
                box-sizing: border-box;
                border: 3px solid #ccc;
                -webkit-transition: 0.5s;
                transition: 0.5s;
                outline: none;
            }
            input[type=number] {
                width: 70%;
                padding: 12px 20px;
                margin: 8px 0;
                box-sizing: border-box;
                border: 3px solid #ccc;
                -webkit-transition: 0.5s;
                transition: 0.5s;
                outline: none;
            }

            input[type=text]:focus {
                border: 3px solid #555;
            }


            input[type=submit] {
                width: 70%;
                padding: 12px 20px;
                margin: 8px 0;
                box-sizing: border-box;
                border: 3px solid #ccc;
                -webkit-transition: 0.5s;
                transition: 0.5s;
                outline: none;
            }

            input[type=email]:focus {
                border: 3px solid #555;
            }
            input[type=password]:focus {
                border: 3px solid #555;
            }
        </style>
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
					        <li><a class="menu active" href="firstpage.jsp" >Home</a></li>
			        <li><a class="menu" href="leavestatus.jsp">leave status</a></li>
					        <li><a class="menu" href="profile.jsp"> student's info</a></li>
					        
                                                <li><a class="menu" <h3><%=request.getSession().getAttribute("uname").toString()%></h3></a></li>
                                      
					      </ul>
					    </div><!-- /navbar-collapse -->
					  </div><!-- / .container-fluid -->
					</nav>
				</div>
			</div>
		</div>
	</header> <!-- end of header area -->
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        
        <div class="header">
            <h1><center>Apply for leave here</center><h1>
                    </div>
                    <div class="login-page">
                       
                        <div class="form">
                            <form method="post" action ="leave">


     
                                <img src="chitkara_image.jpg" alt="Smiley face" height="100" width="100">
                                <input type ="text"  name="name" placeholder="name" required><br>
                                <input type =  "text"  name="id" placeholder="college-id" required><br>

                                <input type = "date"  name="leave_from" placeholder="leave from" required><br>
                                <input type ="date"  name="leave_till" placeholder="leave upto" required><br>

                                <input type="submit" value="submit"><br>


                            </form>

                        </div>
                    </div>
        
			<section class="service text-center" id="service">
				<div class="container">
					<div class="row">
						<h2>your leave status</h2>
                                                

                
                
                
                
                
    </body></html>
                                                
                                                
					</div>
				</div>
			</section><!-- end of service section -->
        
        
        
        
        
        
        
        
        
        
        
</body>
</html>