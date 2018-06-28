<!DOCTYPE html>
<html>
<head>

	<title>Instruction | Xenture</title>
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
	response.setHeader("Pragma","no-cache"); // HTTP 1.0
	response.setHeader("Cache-Control","no-store"); // HTTP 1.1
	response.setDateHeader("Expires", 0);
	%>


<body class="login-page">
	<!-- =============== header start ================= -->
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
	<!-- =============== header end ================= -->

	<!-- =============== page-header start ================= -->
	<div class="body-bg page-header header-filter">
		<!-- =============== section start ================= -->
		<section class="container">
			<!-- =============== row start ================= -->
			<div class="row">
				<!-- =============== col-md-12 Start ================= -->
				<div class="col-md-12">
					<!-- =============== card start ================= -->
					<div class="card card-signup">
						<!-- =============== card-header start ================= -->
						<div class="header header-primary header-primary-custom text-center">
							<h4 class="card-title">Instructions For Exams</h4>
						</div>
						<!-- =============== card-header End ================= -->
						<!-- =============== card-content start ================= -->	
						<div class="card-content exam-box">
						 <%Object candidateName=session.getAttribute("candidateName");  %>
						Welcome  <B><%=candidateName %></B> 
					
						<!-- =============== Instruction Start ================= -->
							<div class="instruction-blk">
								<ul>
									<li>This is a 15 minute test comprising of 20 questions.</li>
									<li>Each question carries 1 mark.There is no negative marking.</li>
									<li>Do not press <strong>BACK</strong> or <strong>REFRESH</strong>.If logged out, your test would end immediately and you will be dismissed.</li>
									<li>Do not use any kind of reference. The shortest time taken can also help you fetch a job.</li>
								</ul>
								<h4 class="text-center text-uppercase mrg5">All the best !!</h4> 
							</div>
							<!-- =============== Instruction End =================== -->
							<!-- =============== Start Test Start ================= -->
							<div class="footer text-center">
								<a href="ViewAllQuestion" class="btn btn-primary btn-round btn-wd btn-lg next">	
									Start Test
								</a>
							</div>
							<!-- =============== Start Test End ================= -->
						</div>
						<!-- =============== card-content End ================= -->
					</div>
					<!-- =============== card End ================= -->
				</div>
				<!-- =============== col-md-12 End ================= -->
			</div>
			<!-- =============== row End ================= -->
		</section>
		<!-- =============== section end ================= -->

		<!-- =============== footer start ================= -->
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
		<!-- =============== footer end ================= -->
	</div>
	<!-- =============== page-header end ================= -->

	<script type="text/javascript" src="resources/assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/custom.js"></script>
	<script type="text/javascript" src="resources/assets/js/material.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/material-kit.js"></script>
	<script type="text/javascript" src="resources/assets/js/nouislider.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/bootstrap-datepicker.js"></script>
</body>
</html>
<% }
%>