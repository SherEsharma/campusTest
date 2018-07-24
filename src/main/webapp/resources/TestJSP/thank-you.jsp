<!DOCTYPE html>
<html>
<head>
	<title>Thank-You | Xenture</title>
	<link rel="shortcut icon" type="image/png" href="resources/assets/img/favicon.png" />

	<meta charset="UTF-8">
	<meta name="description" content="smart recuritment,job search">
	<meta name="keywords" content="trabaajo.com,Trabaajo,smart recuritment,job search">
	<meta name="author" content="Trabaajo">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">	

	<link rel="stylesheet" type="text/css" href="resources/assets/css/generic.css">
	<link rel="stylesheet" type="text/css" href="resources/assets/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="resources/assets/css/material-kit.css">
	<link rel="stylesheet" type="text/css" href="resources/assets/css/bootstrap-custom.css">
	<link rel="stylesheet" type="text/css" href="resources/assets/css/media.css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>

<% Object candidateID=session.getAttribute("candidateEmail"); 
if(candidateID==null){
	response.sendRedirect("candidateLogin");
}
else{
	 Object candidateName=session.getAttribute("candidateName");  
	 Object startTime=session.getAttribute("startTime");
	 Object endTime=session.getAttribute("endTime");
	 Object FirstScore=session.getAttribute("FirstScore");
	 Object SecondScore=session.getAttribute("SecondScore");
	 
	 
	 Object candidateId=session.getAttribute("candidateID");
	 
	 
	 %> 
	
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
						<img src="resources/assets/img/logo.png" alt="logo">
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
			<div class="row text-center">
				<div class="col-md-12 col-sm-12 col-xs-12 about-blk">
					<h1>Thank You !</h1>
					<div class="table-responsive text-left result-table">
						<table>
							<tbody>
								<tr>
									<td>Candidate Id :</td>
									<td><%=candidateId %></td>
								</tr>
								<tr>
									<td>Candidate Name :</td>
									<td><%=candidateName %></td>
								</tr>
								<tr>
									<td>Your Starting Time :</td>
									<td><%=startTime %></td>
								</tr>
								<tr>
									<td>Your End Time :</td>
									<td><%=endTime %></td>
								</tr>
								<tr>
									<td>Number Of Questions in 1st Test :</td>
									<td>20</td>
								</tr>
								<tr>
									<td>First test score :</td>
									<td><%=FirstScore %></td>
								</tr>
								<tr>
									<td>Number Of Questions 2nd Test :</td>
									<td>20</td>
								</tr> 
								<tr>
									<td>Second test score :</td>
									<td><%=SecondScore %></td>
								</tr>
							</tbody>
						</table>
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
	                <script type="text/javascript" async="" src="http://www.google-analytics.com/ga.js"></script>
	                <script>document.write(new Date().getFullYear())</script>, Copyright
	                	<a href="http://www.xenture.co/" target="_blank">Xenture Inc.</a>
	            </div>
	        </div>
	    </footer>
		<!-- ./footer end -->
	</div>

	<script type="text/javascript" src="resources/assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/custom.js"></script>
	<script type="text/javascript" src="resources/assets/js/material.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/material-kit.js"></script>
	<script type="text/javascript" src="resources/assets/js/nouislider.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/bootstrap-datepicker.js"></script>
</body>
</html>


<% 
session.invalidate();
/* response.sendRedirect("startpage.html"); */
} %> 