<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page isELIgnored="false"%>
<html>
<head>
	<title>Select Category | Xenture</title>
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
<%
Object candidateID=session.getAttribute("candidateEmailId"); 
if(candidateID==null){
	response.sendRedirect("candidateLogin.jsp");
} else {

	response.setHeader("Pragma", "no-cache"); // HTTP 1.0
	response.setHeader("Cache-Control", "no-store"); // HTTP 1.1
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
						<img src="assets/img/logo.png" alt="logo">
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
							 <h4 class="card-title">Select Your Stream of job</h4> 
						</div>
						<!-- =============== card-header End ================= -->
						<!-- =============== card-content start ================= -->	
						<form class="form" method="post" action="SelectQuestionCategoryController">
						<div class="card-content exam-box">
							<!-- =============== Instruction Start ================= -->
							<div class="instruction-blk">
								<!-- <h4 class="text-center">Select your category for test</h4> -->
								
									<div class="form-group">
									    <label for="exampleFormControlSelect1">Select Category</label>
									    <select class="form-control" id="exampleFormControlSelect1" name="Category">
									   <!--  <option  disabled selected >Choose Category</option> -->
									    	<c:forEach items="${selectQuestionCategory}" var="selectQuestionCategory">
							      		<option  value="${selectQuestionCategory.questionCategoryId}">${selectQuestionCategory.questionCategory}</option>
							      	
							      	</c:forEach>
									    </select>
									</div>
							
							</div>
							<!-- =============== Instruction End =================== -->
							<!-- =============== Start Test Start ================= -->
							<div class="footer text-center">
								<button type="submit" class="btn btn-primary btn-round btn-wd btn-lg next">	
									Start Test
								</button>
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
	</form> 
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

	<script type="text/javascript" src="assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/custom.js"></script>
	<script type="text/javascript" src="assets/js/material.min.js"></script>
	<script type="text/javascript" src="assets/js/material-kit.js"></script>
	<script type="text/javascript" src="assets/js/nouislider.min.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-datepicker.js"></script>
</body>
</html>
<% } %>