<!DOCTYPE html>
<%@page import="java.util.List"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page isELIgnored="false"%>
<html>
<head>
  

<title>Online Test | Xenture</title>
<link rel="shortcut icon" type="image/png" href="assets/img/favicon.png" />

<meta charset="UTF-8">
<meta name="description" content="smart recuritment,job search">
<meta name="keywords"
	content="trabaajo.com,Trabaajo,smart recuritment,job search">
<meta name="author" content="Trabaajo">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="assets/css/generic.css">
<link rel="stylesheet" type="text/css"
	href="assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="assets/css/material-k	it.css">
<link rel="stylesheet" type="text/css"
	href="assets/css/bootstrap-custom.css">
<link rel="stylesheet" type="text/css" href="assets/css/media.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
</head>


<% 
List list = (List) session.getAttribute("list");
Object candidateID=session.getAttribute("candidateEmailId"); 
if(candidateID==null){
	response.sendRedirect("candidateLogin.jsp");
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
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"> <img
						src="assets/img/logo.png" alt="logo">
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
						<div
							class="header header-primary header-primary-custom text-center">
							<h4 class="card-title">
							<% Object candidateName=session.getAttribute("candidateName"); 
							 Object emptyListmsg=session.getAttribute("emptylist");%>
							
							Name Of Candidate - <%=candidateName %></h4>
							<div class="timer-div">
								Time left = <span id="timer"></span>
								
							</div>
						</div>
						<!-- =============== card-header End ================= -->
						<!-- Loop Start Here -->

						<!-- =============== card-content start ================= -->
						<div class="card-content exam-box">
							<form method="POST" action="MainExamController">
						
							<c:forEach items="${list}" var="list" varStatus="loop">	
							<!-- =============== Question wrapper start ================= -->
							<div id="q${loop.count}" class="question active">
								<!-- =============== Question box start ================= -->

								<div class="question-box">
									<fieldset id="group${loop.count}">
									<span class="sr-no"> 
										<c:out value="${loop.count}" />
									</span>
									<p class="q-txt dib">
										${list.quesQuestion}
									</p>
								</div>
								<!-- ================ Question box end ================== -->
								<!-- =============== Option box start ================= -->
								<div class="option-box">
									<ul>
										<!-- =============== Option1 start ================= -->
										<li>
											<div class="radio">
												<label> <input type="radio" name="Que${loop.count}" value="A">
													${list.questAnsOpt1}
												</label>
											</div>
										</li>
										<!-- =============== Option1 end ================= -->
										<!-- =============== Option2 start ================= -->
										<li>
											<div class="radio">
												<label> <input type="radio" name="Que${loop.count}" value="B">
													${list.questAnsOpt2}
												</label>
											</div>
										</li>
										<!-- =============== Option2 end ================= -->
										<!-- =============== Option3 start ================= -->
										<li>
											<div class="radio">
												<label> <input type="radio" name="Que${loop.count}" value="C" >
													${list.questAnsOpt3}
												</label>
											</div>
										</li>
										<!-- =============== Option3 end ================= -->
										<!-- =============== Option4 start ================= -->
										<li>
											<div class="radio">
												<label> <input type="radio" name="Que${loop.count}" value="D">
													${list.questAnsOpt4}
												</label>
											</div> 
											
										</li>
										<!-- =============== Option4 end ================= -->
									</ul>
								</div>
								<input type="hidden" name="Ans${loop.count}" value="${list.questAnswer}"> 
								
								<!-- =============== Option box end ================= -->
							</div>
							</c:forEach>
							
							<!-- =============== Question wrapper End ================= -->

							<!-- =============== Next Button Start ================= -->
							<div class="footer text-center">
							<%if(list.isEmpty()){ %>
								
								<%}else
								{ %>
								<button type="submit" 
									class="btn btn-primary btn-round btn-wd btn-lg next" >
									Submit
								</button>
								<% }%>
							</div>
							<!-- =============== Next Button End ================= -->
							</form>
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
					<script type="text/javascript" async=""
						src="http://www.google-analytics.com/ga.js"></script>
					<script>
						document.write(new Date().getFullYear())
					</script>
					, Copyright <a href="http://www.xenture.co/" target="_blank">Xenture
						Inc.</a>
						
				</div>
			</div>
		</footer>
		<!-- =============== footer end ================= -->
	</div>
	<!-- =============== page-header end ================= -->

	<script type="text/javascript" src="assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/custom.js"></script>
	<script type="text/javascript" src="assets/js/material.min.js"></script>
	<script type="text/javascript" src="assets/js/material-kit.js"></script>
	<script type="text/javascript" src="assets/js/nouislider.min.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-datepicker.js"></script>
</body>
</html>

<% }%>