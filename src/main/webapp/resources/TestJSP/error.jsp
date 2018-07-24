<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Error | Xenture</title>
	<link rel="shortcut icon" type="image/png" href="assets/img/favicon.png" />

	<meta charset="UTF-8">
	<meta name="description" content="smart recuritment,job search">
	<meta name="keywords" content="trabaajo.com,Trabaajo,smart recuritment,job search">
	<meta name="author" content="Trabaajo">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">	

	<link rel="stylesheet" type="text/css" href="assets/css/generic.css">
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="assets/css/material-kit.css">
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap-custom.css">
	<link rel="stylesheet" type="text/css" href="assets/css/media.css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body class="login-page">
	<header>
		<nav class="navbar navbar-primary navbar-transparent navbar-absolute">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>                        
					</button>
					<a class="navbar-brand" href="#">
						<img src="assets/img/logo.png" alt="logo">
					</a>
				</div>
			</div>
		</nav>
	</header> 
	<!-- ./header end -->

	<!-- ./header start -->
	<div class="body-bg page-header header-filter">
		<!-- ./section start -->
		<section class="container">
			<div class="row">
				<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
					<div class="card card-signup">
						<div class="header header-primary header-primary-custom text-center">
							<h4 class="card-title">"Oops! <%=response.getStatus()%> Error."</h4>
						</div>
							
						<div class="card-content text-center">
						<% if (response.getStatus()==400) {
	                   	%>
						<!-- Bad request -->         
    					<%-- <h1 class="error-no">"Oops! <%=response.getStatus()%> Error."</h1> --%>
						<p class="error-txt">Sorry!!! But We Couldn't Find This Page <img src="assets/img/Sad_Smiley.png" alt="" class="sad_smiley" ></p>
   						<%
						 } else if(response.getStatus()==401) {
						%>
   						<!-- Missing login -->
						<p class="error-txt">Unauthorized Access <img src="assets/img/Sad_Smiley.png" alt="" class="sad_smiley" ></p>
    					<%
						 } else if(response.getStatus()==403) {
						%>
    					<!-- Forbidden directory listing -->
						<p class="error-txt">Sorry!!! Access denied <img src="assets/img/Sad_Smiley.png" alt="" class="sad_smiley" ></p>
   					 	<%
	 					} else if(response.getStatus()==404) {
						%>
	 					<!-- Missing resource -->
						<p class="error-txt">Sorry, The Page You Are Looking For Cannot Be Found <img src="assets/img/Sad_Smiley.png" alt="" class="sad_smiley" ></p>
     					<%
	 					} else if(response.getStatus()==408) {
						%>
	 					<!-- Missing resource -->
						<p class="error-txt">Request Timeout<img src="assets/img/Sad_Smiley.png" alt="" class="sad_smiley" ></p>
       					<%
	 					} else if(response.getStatus()==500) {
						%>
						<!-- Uncaught exception -->
						<p class="error-txt">Internal Server Error <img src="assets/img/Sad_Smiley.png" alt="" class="sad_smiley" ></p>
     					<%
	 					} else if(response.getStatus()==502) {
						%>
						<!-- Uncaught exception -->
						<p class="error-txt">Bad Gateway <img src="assets/img/Sad_Smiley.png" alt="" class="sad_smiley" ></p>
     					<%
	 					} else if(response.getStatus()==503) {
						%>
	 					<!-- Unsupported servlet method -->
						<p class="error-txt">Service Temporarily Unavailable <img src="assets/img/Sad_Smiley.png" alt="" class="sad_smiley" ></p>
    					<%
	 					} else if(response.getStatus()==504) {
						%>
						<!-- Uncaught exception -->     					
						<p class="error-txt">Gateway Timeout <img src="assets/img/Sad_Smiley.png" alt="" class="sad_smiley" ></p>
     					<%
	 					} else if(response.getStatus()==511) {
						%>
						<!-- Uncaught exception -->     					
						<p class="error-txt">Network Authentication Required<img src="assets/img/Sad_Smiley.png" alt="" class="sad_smiley" ></p>
     					
     					<%
	 					} else if(response.getStatus()==599) {
						%>
						<!-- Uncaught exception -->     					
						<p class="error-txt">Network Connect Timeout Error <img src="assets/img/Sad_Smiley.png" alt="" class="sad_smiley" ></p>
     					<%}else{ 
    					%>    					
						<p class="error-txt">Sorry, Something Went Wrong <img src="assets/img/Sad_Smiley.png" alt="" class="sad_smiley" ></p>
						<%
	 					}
	 					%>							
						</div>
						
						<div class="card-action text-center gray">
						   	<a href="candidateLogin.jsp" class="red">Back To Home</a>
			            </div>
					</div>
				</div>
			</div>
		</section>
		<!-- ./section body end -->

		<!-- ./footer start -->
		<footer class="footer">
	        <div class="container">
	            <div class="copyright">
	                &copy; 
	                <script>document.write(new Date().getFullYear())</script>, Copyright
	                	<a href="http://www.xenture.co/" target="_blank">Xenture Inc.</a>
	            </div>
	        </div>
	    </footer>
		<!-- ./footer end -->
	</div>

	<script type="text/javascript" src="assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/custom.js"></script>
	<script type="text/javascript" src="assets/js/material.min.js"></script>
	<script type="text/javascript" src="assets/js/material-kit.js"></script>
	<script type="text/javascript" src="assets/js/nouislider.min.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-datepicker.js"></script>
</body>
</html>