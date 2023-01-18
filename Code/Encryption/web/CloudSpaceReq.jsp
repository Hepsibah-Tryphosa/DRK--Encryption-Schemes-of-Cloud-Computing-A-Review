<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="utility.DBConnectionn"%>
<%@page import="java.sql.Connection"%>
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
<!-- Main CSS-->
    <link href="css/main2.css" rel="stylesheet" media="all">
<!--===============================================================================================-->
<script type="text/javascript" src="js/formcalculations.js"></script>
 	
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
<script>
function myfunction() {
  var first = document.getElementById("textbox1").value;

  var answer = parseFloat(first)*4.5;

  var textbox3 = document.getElementById('textbox3');
  textbox3.value = answer;

}
</Script>
     
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
        <%
        
        %>
    <div class="page-wrapper  p-t-180 p-b-100 font-robo" style="background-image: url('images/bg3.jpg');">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">Cloud Space Request</h2>
                    <form action="osreg.jsp" method="post" >
                          <%
                    int sessionid=(int)session.getAttribute("id");
Connection con= DBConnectionn.getConnection();
 Statement st=con.createStatement();

 ResultSet rt=st.executeQuery("select * from oreg where id='"+sessionid+"'");
          
          if(rt.next()){
             String name=rt.getString("name");
                String cstatus=rt.getString("cstatus");                
                int cspase=rt.getInt("space");
              
              if(cstatus.equalsIgnoreCase("no") && cspase==0){
                
                  
                 %>
                        <div class="input-group">
                            <input class="input--style-2" type="text" name="iden" value="<%=sessionid%>">
                        </div>
                       <div class="input-group">
                            <input class="input--style-2" type="text" name="name" value="<%=name%>">
                        </div>
                        <div class="input-group">
                            <input class="input--style-2"  placeholder="enter space in Mb" type="text" id="textbox1" name="space">
                        </div>
                        <div class="p-t-30">
                            <button class="btn btn--radius btn--green" type="button" name="button" id="button1" onclick="myfunction()" value="caluclate">caluculate</button>
                        </div>
                        <div class="input-group">
                            <input class="input--style-2" id="textbox3" type="text" name="cost"  placeholder="Cost Genterates" readonly="true"/>
                        </div>
                        
                        <div class="p-t-30">
                            <button class="btn btn--radius btn--green" type="submit">submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
                           
<%}else{

%>
<p style="font-size: 50px;color: black">you have  allocated space<%=cspase%></p>

<%}}%>
<script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body>


</html> 