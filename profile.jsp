<%-- 
    Document   : profile
    Created on : 1 Apr, 2019, 6:58:15 PM
    Author     : HP
--%>
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
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
    <body>
       <% try {

                String str1 = (String) session.getAttribute("uname");
                System.out.println(str1);
                Class.forName("com.mysql.cj.jdbc.Driver");

                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/newproject?useSSL=false&verifyServerCertificate=false&allowMultiQueries=true","root","");

                PreparedStatement st = con.prepareStatement("select * from register where name=?");
                st.setString(1,str1);
                ResultSet rs = st.executeQuery();
                
                while (rs.next()) {
                    System.out.println("s");
                    
                    %>
                    <div style="height: 660px; width: 660px;  margin-right: 150px;
  margin-left: 350px;">                
    <center>        <pre>Name:    <%= rs.getString(1)%></pre>
                    <pre>Id:      <%= rs.getString(2)%></pre>
                    <pre>           Date of birth:     <%= rs.getString(3)%></pre>
                    <pre>     Gender:            <%= rs.getString(4)%></pre>
                    <pre>        Email:       <%= rs.getString(5)%></pre>
                    <pre>Password:          <%= rs.getString(6)%></pre>
                    <pre>Answer:            <%= rs.getString(7)%></pre>
                    <pre>Register:          <%= rs.getString(8)%></pre></center></div>
    </div
                    <%
                    }
           }
           catch(Exception e){
            System.out.println(e);
           }
        %>

    </body>
</html>
