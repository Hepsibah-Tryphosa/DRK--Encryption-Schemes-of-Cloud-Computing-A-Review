<%@page import="utility.DBConnectionn"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
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
       
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="tabler/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tabler/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tabler/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tabler/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tabler/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tabler/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tabler/css/util.css">
	<link rel="stylesheet" type="text/css" href="tabler/css/main.css">

<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
                        <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                    </li>
                    
                  <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="OAuthentication.jsp" id="dropdownMenuButton2" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">Owner Authentication <span class="sr-only">(current)</span></a>
                       
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="UAuthentication.jsp" id="dropdownMenuButton2" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">User Authentication <span class="sr-only">(current)</span></a>
                                            </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="admin.html" id="dropdownMenuButton3" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">logout<span class="sr-only">(current)</span></a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink_1">
                            <a class="dropdown-item" href="admin.jsp">Login</a>
                                                    </div>
                    </li>
                    
                </ul>
            </div>
        </nav>
    </div>
</div>
<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg3.jpg'); ">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
					<table>
						<thead>
							<tr class="table100-head">
								<th class="column1">Oid</th>
                                                                <th class="column2">Name</th>
                                                                <th class="column2">Email</th>
								<th class="column2">phone No</th>
								<th class="column5">Status</th>
								
							</tr>
						</thead>
                                                 <%
			
			///String sharedkey=(String)session.getAttribute("sharedkey");
			String status="no",name=null,email=null,mobile=null,role=null;
                                int id=0;
ResultSet rs=null;

Connection con=null;
try
{
	 con = DBConnectionn.getConnection();
        String qry="select id,name,email,mobile,role from ureg where status='"+status+"'";
	PreparedStatement ps=con.prepareStatement(qry);

        rs =ps.executeQuery(qry);
	while(rs.next())
	{
         id=rs.getInt("id");
         name=rs.getString("name");
         email=rs.getString("email");
	 mobile=rs.getString("mobile");
	 role=rs.getString("role");
	
%>
						<tbody>
								<tr>
									<td class="column1"><%=id%></td>
                                                                        <td class="column2"><%=name%></td>
									<td class="column2"><%=email%></td>
									<td class="column2"><%=mobile%></td>
									
                                                                        <td class="column5"><a href="oup.jsp?id=<%=id%>&&name=<%=name%>&&role=<%=role%>">Accept</a></td>
									
								</tr>
							<%	  
}
	   }
	   catch(Exception e1)
	   {
	     out.println(e1.getMessage());
	   }
 %>	
								
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>	

       <div class="container-fluid fh5co_footer_right_reserved">
    <div class="container">
        <div class="row  ">
            <div class="col-12 col-md-6 py-4 Reserved"> � Copyright 2019, All rights reserved. Design Team  </div>
           
    </div>
</div>
</div>
	
</body>    

    
</html>