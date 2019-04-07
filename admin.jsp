<%-- 
    Document   : firstpage
    Created on : 1 Apr, 2019, 12:02:13 AM
    Author     : HP
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
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
					        <li><a class="menu active" href="admin.jsp" >Home</a></li>
			        <li><a class="menu" href="#service">Student's leave</a></li>
					        <li><a class="menu" href=""> Admin info</a></li>
					        
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
        <br>
        <br>
        <br>
        <br>
		
			<section class="service text-center" id="service">
				<div class="container">
                                    <div class="row">
                                    <h2>this is leave section</h2>
                                    <center>  <table style="font-size: 30px;text-align: center; color: white;  " border="1">
                                    <tr>
                                        <td>name</td>
                                        <td>id</td>
                                        <td>leave_from</td>
                                        <td>leave_till</td>
                                        <td>Action</td>
                                    </tr>
                                        
                                 
                                    <% try {

                String str1 = (String) session.getAttribute("uname");
                System.out.println(str1);
                Class.forName("com.mysql.cj.jdbc.Driver");

                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hello?useSSL=false&verifyServerCertificate=false&allowMultiQueries=true","root","");

                PreparedStatement st = con.prepareStatement("select * from leaveform");
              
                ResultSet rs = st.executeQuery();
                
                while (rs.next()) {
                    System.out.println("s");
                    
                    %>
                 
                      <tr><td>  <%= rs.getString(1)%></td>
               <td>   <%= rs.getString(2)%></td>
               <td>    <%= rs.getString(3)%></td>
                    <td>    <%= rs.getString(4)%></td></tr>
                      
                    
                                   
                    <%
                    }
           }
           catch(Exception e){
            System.out.println(e);
           }
        %>
                                        </table>	</center>	</div>
			</section>
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
