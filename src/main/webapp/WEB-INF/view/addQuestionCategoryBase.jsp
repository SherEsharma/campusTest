<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
	<title>Admin Online Test | Xenture</title>
	<link rel="shortcut icon" type="image/png" href="admin-assets/img/favicon.png" />
	<!--==================================
			Meta tags start 
	==================================-->
	<meta charset="UTF-8">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="author" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!--==================================
			Meta tags end 
	==================================-->

	<!--==================================
			Css file links start 
	==================================-->
	<!-- Reset core CSS -->
	<link rel="stylesheet" type="text/css" href="admin-assets/css/generic.css">
	<!-- Bootstrap core CSS -->
	<!-- <link rel="stylesheet" type="text/css" href="admin-assets/css/bootstrap.min.css">	 -->
	<!-- materialize CSS -->
	<link rel="stylesheet" type="text/css" href="admin-assets/css/materialize.min.css">
	 <!-- Custom styles for this admin panel -->
	<link rel="stylesheet" type="text/css" href="admin-assets/css/bootstrap-custom.css">
	 <!-- Responsive css  -->
	<link rel="stylesheet" type="text/css" href="admin-assets/css/media.css">
	<!-- Material-icon css -->
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<!--==================================
			Css file links end
	==================================-->
</head>
<%
Object value = session.getAttribute("adminEmail");
if (value == null) {
	response.sendRedirect("adminlogin.jsp");
} else {

	response.setHeader("Pragma", "no-cache"); // HTTP 1.0
	response.setHeader("Cache-Control", "no-store"); // HTTP 1.1
	response.setDateHeader("Expires", 0);

	String message = (String) session.getAttribute("addQuestionMessage");											   
	if (message != null) {
%>

<div class="col-lg-12 col-md-12 col-sm-12 center-block">
	<div id="change-pwd" style="color: #ac2925; text-align: center;"><%=message%></div>
</div>
<%
	}
		request.getSession().removeAttribute("addQuestionMessage");
%>

<body>
	<!--==================================
			.main-wrapper start 
	==================================-->
	<div class="main-wrapper">
		<!--============================= nav start =============================-->
		<nav class="row custom-header">
			<!--==================== .container-fluid start ======================-->
		    <div class="col l12 m12 s12">
		    	<!--==================== .nav-wrapper start ======================-->
		    	<div class="nav-wrapper">
		    		<!--==================== .brand-logo start ====================-->
		    		<a href="dashboard.jsp" title="" data-activates="slide-out" class="sidebar-menu dib">
		    			<i class="material-icons">menu</i>
		    		</a>
			      	<a href="dashboard.jsp" title="" class="brand-logo">
			      		Admin Panel
			      	</a>
			      	<!--==================== .brand-logo end ======================-->

			      	<!--============ .button-collapse for mobile start =============-->
			      	<a href="dashboard.jsp" title="" data-activates="mobile-demo" class="button-collapse">
			      		<i class="material-icons">more_vert</i>
			      	</a>
			      	<!--============== .button-collapse for mobile end ==============-->

			      	<!--=============== .right menu for desktop start ===============-->
				    <ul class="right hide-on-med-and-down">
				        <li><a href="adminlogout.jsp" title="Sign out">Sign Out</a></li>
				    </ul>
				    <!--=============== .right menu for desktop end ===============-->

				    <!--=============== .side-nav for mobile start ===============-->
				    <ul class="side-nav" id="mobile-demo">
				        <li><a href="adminlogout.jsp" title="Sign out">Sign Out</a></li>
				    </ul>
				    <!--================ .side-nav for mobile end ================-->
		    	</div>
		    	<!--==================== .nav-wrapper end ========================-->
		    </div>
		    <!--======================== .container-fluid end ====================-->
		</nav>
		<!--============================= nav end ================================-->

		<!--========================== .row start ================================-->
		<div class="row">
			<!--========================== sidebar start===========================-->
			<div class="sidebar-wrapper">
				<ul id="slide-out" class="side-nav">
					<li>
				    	<a href="dashboard.jsp" title="Xenture Inc." class="center-align logo-box">
				    		<img src="admin-assets/img/logo.png" alt="xenture inc.">
				    	</a>
				    </li>
				    <li>
				    	<a href="dashboard.jsp" class="waves-effect" title="Add Categories">
				    		<i class="material-icons">apps</i>
				    		Dashboard
				    	</a>
				    </li>
				    <li><div class="divider"></div></li>
				    <li>
				    	<a href="AddCategory" class="waves-effect" title="Add Categories">
				    		<i class="material-icons">library_add</i>
				    		Add Categories
				    	</a>
				    </li>
				    <li><div class="divider"></div></li>
					<li>
				    	<a class="dropdown-button waves-effect" href="#!" data-activates="dropdown1" title="Add Questions">
				    		<i class="material-icons">help</i>
				    		Add Questions
				    		<i class="material-icons right">arrow_drop_down</i>
				    	</a>
				    </li>
				    <ul id='dropdown1' class='dropdown-content'>
			 <li><a href="AddQuestionController?categoryId=0">Add Objective Questions</a></li>
				        <li><a href="AddQuestionController?categoryId=1">Add Subjective Questions</a></li>
				    </ul>
				    <li><div class="divider"></div></li>
				    <li>
				    	<a href="ViewQuestionCategoryController" class="waves-effect" title="View All Questions">
				    		<i class="material-icons">remove_red_eye</i>
				    		View All Questions
				    	</a>
				    </li>
				    <li><div class="divider"></div></li>
				    <li>
				    	<a href="ViewCandidateController" class="waves-effect" title="View Candidates">
				    		<i class="material-icons">streetview</i>
				    		View Candidates
				    	</a>
				    </li>
				  <!--   <li><div class="divider"></div></li>
				    <li>
				    	<a href="#!" class="waves-effect" title="View Colleges / Univercities">
				    		<i class="material-icons">business</i>
				    		View Colleges / Univercities
				    	</a>
				    </li>
 -->				    <li><div class="divider"></div></li>
				    <li>
				    	<a href="view-notification.jsp" class="waves-effect" title="View Notifications">
				    		<i class="material-icons">notifications</i>
				    		View Notifications
				    	</a>
				    </li>
				</ul>
  			</div>
  			<!--========================== sidebar end ================================-->

  			<!--==================== form add category start ==========================-->
			<div class="container mrg-box card">
				<h5 class="center-align form-title card-header card-header-icon z-depth-3">
					<i class="material-icons">help</i>
				</h5>
				<div class="row card-content">
					<h4 class="card-title">Add Subjective Questions</h4>
					<form name="" action="AddQuestionController" method="post" class="custom-form col l12 m12 s12">
						<!--=========== Select Category start ================-->
						<div class="row">
					        <div class="input-field col l10 push-l1 m11 push-m1 s12">
					          	<select>
							      	<option value="" disabled selected>Choose Category</option>
							       	<c:forEach items="${categorylistOnQuestion}" var="categorylistOnQuestion">
							      	<option value="${categorylistOnQuestion.questionCategoryId}">${categorylistOnQuestion.questionCategory}</option>
							      	
							      	</c:forEach>
							    </select>
							    <label for="category">Choose Category</label>
					        </div>
					    </div>
					    <!--=========== Select Category end ================-->
						<!--======================== Question start here =========================-->
						<div class="row">
						    <div class="input-field col l10 push-l1 m11 push-m1 s12">
					          	<textarea id="add_sub_question" class="materialize-textarea" placeholder="Enter Question" ></textarea>
					          	<label for="add_sub_question" class="active">Question</label>
							</div>
						</div>
						<!--======================== Question End here =========================-->

						<div class="row center-align">
						    <button class="btn waves-effect waves-light red darken-4" type="submit" name="action">Submit<i class="material-icons right">send</i>
							</button>
						</div>
					</form>
				</div>
			</div>
			<!--==================== form add category end ==========================-->
		</div>
		<!--========================== .row end   ================================-->

		<footer>
			<div class="copyright center-align">
	            &copy; 
	           	<script>document.write(new Date().getFullYear())</script>,copyright 
	            <a href="http://www.xenture.co/" title="Xenture Inc." target="_blank" class="red-text text-darken-4">Xenture Inc.</a>
	        </div>
		</footer>
	</div>
	<!--==================================
			.main-wrapper end 
	==================================-->
	

	<!--==================================
			Script js start 
	==================================-->
	<script type="text/javascript" src="admin-assets/js/jquery.min.js"></script>
	<!-- <script type="text/javascript" src="admin-assets/js/bootstrap.min.js"></script> -->
	<script type="text/javascript" src="admin-assets/js/materialize.min.js"></script>
	<script type="text/javascript" src="admin-assets/js/custom.js"></script>
	<!--==================================
			Script js end
	==================================-->
</body>
</html>
<% }%>   