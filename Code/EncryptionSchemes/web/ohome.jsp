<%@page import="action.ologin"%>
<%@page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
 <!-- Required meta tags -->
    <title>Encrypt Cloud</title>
    <link href="css/media_query.css" rel="stylesheet" type="text/css"/>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
          integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link href="css/animate.css" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet" type="text/css"/>
    <link href="css/owl.theme.default.css" rel="stylesheet" type="text/css"/>
    <!-- Bootstrap CSS -->
    <link href="css/style_1.css" rel="stylesheet" type="text/css"/>
    <!-- Modernizr JS -->
    <script src="js/modernizr-3.5.0.min.js"></script>

    </head>
    <body>
        <div class="container-fluid" style="background: #581845">
    <div class="container">
        <div class="row" >
            <div style="padding-top: 20px; padding-bottom: 20px">
  <h4 style="color: whitesmoke"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp;Encryption Schemes Of Cloud Computing: A Review</h4>                    
                    
                </div>
                    </div>
    </div>
</div>
        <div class="container-fluid bg-faded fh5co_padd_mediya padding_786">
    <div class="container padding_786">
        <nav class="navbar navbar-toggleable-md navbar-light ">
            <button class="navbar-toggler navbar-toggler-right mt-3" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation"><span class="fa fa-bars"></span></button>
            <a class="navbar-brand" href="#"><img src="images/logo.png" alt="img" class="mobile_logo_width"/></a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="ohome.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    
                  <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="CloudSpaceReq.jsp" id="dropdownMenuButton2" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">CloudSpaceReq <span class="sr-only">(current)</span></a>
                                            </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="FileUplload.jsp" id="dropdownMenuButton2" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">File Upload <span class="sr-only">(current)</span></a>
                
                    </li>
                 <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="uploadedfile.jsp" id="dropdownMenuButton2" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">cloud files<span class="sr-only">(current)</span></a>
                
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="ologin.jsp" id="dropdownMenuButton3" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">Logout<span class="sr-only">(current)</span></a>
                      
                    </li>
                    
                </ul>
            </div>
        </nav>
    </div>
</div>
        <div class="limiter">
            <div class="container-login100" style="background-image: url('images/admin.jpg'); ">
                <div class="wrap-login100">
                    <span class="login100-form-title p-b-41">
			<%
                            String name=(String)session.getAttribute("name");
                               %>
                               Welcome <%=name%>
                        				</span>
                </div>
            </div>
        </div>
           <div class="container-fluid fh5co_footer_right_reserved">
    <div class="container">
        <div class="row  ">
            <div class="col-12 col-md-6 py-4 Reserved"> © Copyright 2019, All rights reserved. Design Team  </div>
            <div class="col-12 col-md-6 spdp_right py-4">
                <a href="index.html" class="footer_last_part_menu">Home</a>
                <a href="admin.jsp" class="footer_last_part_menu">Admin</a>
                <a href="cloud.jsp" class="footer_last_part_menu">Cloud</a>
               
        </div>
    </div>
</div>
</div>                                                   
    </body>
</html>