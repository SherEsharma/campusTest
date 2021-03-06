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
	<!-- Datatable css -->
	<link rel='stylesheet prefetch' href='https://cdn.datatables.net/plug-ins/f2c75b7247b/integration/bootstrap/3/dataTables.bootstrap.css'>
    <link rel='stylesheet prefetch' href='https://cdn.datatables.net/responsive/1.0.4/css/dataTables.responsive.css'>
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
		    		<a href="#" title="" data-activates="slide-out" class="sidebar-menu dib">
		    			<i class="material-icons">menu</i>
		    		</a>
			      	<a href="dashboard.jsp" title="" class="brand-logo">
			      		Admin Panel
			      	</a>
			      	<!--==================== .brand-logo end ======================-->

			      	<!--============ .button-collapse for mobile start =============-->
			      	<a href="#" title="" data-activates="mobile-demo" class="button-collapse">
			      		<i class="material-icons">more_vert</i>
			      	</a>
			      	<!--============== .button-collapse for mobile end ==============-->

			      	<!--=============== .right menu for desktop start ===============-->

				      	<!--=============== .notifications start ===============-->
				      	<ul class="right">
					    	<li>
					    		<a class="dropdown-button notifications" href="#!" data-activates="dropdown2">
					    			<i class="material-icons right">notifications</i>
					    			<span class="badge notifi">100</span>
					    		</a>
					    		<div id="dropdown2" class="collection dropdown-content notifi-box">
								    <a href="#!" class="collection-item">
								    	<span>Lorem Ipsum</span> is simply dummy text of the printing and typesetting industry. </a>
								    <a href="#!" class="collection-item">
								    	<span>Lorem Ipsum</span> is simply dummy text of the printing and typesetting industry. </a>
								    <a href="#!" class="collection-item">
								    	<span>Lorem Ipsum</span> is simply dummy text of the printing and typesetting industry. </a>
								    <a href="#!" class="collection-item">
								    	<span>Lorem Ipsum</span> is simply dummy text of the printing and typesetting industry. </a>
								    <a href="#!" class="collection-item">
								    	<span>Lorem Ipsum</span> is simply dummy text of the printing and typesetting industry. </a>
								    <a href="view-notification.jsp" class="viwe-all">
								    	<span>View all</span> </a>
								</div>
					    	</li>
				      	</ul>
				      	<!--=============== .notifications end ===============-->

					    <ul class="right hide-on-med-and-down">
					        <li><a href="adminlogout.jsp" title="Sign out">Sign Out</a></li>
					    </ul>

				    <!--=============== .right menu for desktop end ===============-->

				    <!--=============== .side-nav for mobile start ===============-->
				    <ul class="side-nav" id="mobile-demo">
				        <li><a href="#" title="Sign out">Sign Out</a></li>
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
				    	<a href="dashboard.html" title="Xenture Inc." class="center-align logo-box">
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
				    	<a class="dropdown-button waves-effect" href="#" data-activates="dropdown1" title="Add Questions">
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
				    <!-- <li><div class="divider"></div></li>
				    <li>
				    	<a href="#!" class="waves-effect" title="View Colleges / Univercities">
				    		<i class="material-icons">business</i>
				    		View Colleges / Univercities
				    	</a>
				    </li> -->
				    <li><div class="divider"></div></li>
				    <li>
				    	<a href="view-notification.jsp" class="waves-effect" title="View Notifications">
				    		<i class="material-icons">notifications</i>
				    		View Notifications
				    	</a>
				    </li>
				</ul>
  			</div>
  			<!--========================== sidebar end ================================-->

  			<!--==================== Result conut box start ==========================-->
			<div class="container">
				<div class="row  mrg-box">
					<div class="col l6 m6 s12  mrg-box">
						<div class="card">
							<h5 class="center-align form-title card-header card-header-icon z-depth-3">
								<i class="material-icons">format_list_bulleted</i>
							</h5>
							<div class="card-content">
								<h4 class="card-title">Category</h4>
								<div class="card-action  center-align">
				              		<p class="total-count"><%=session.getAttribute("displaycategorycount") %></p>
				            	</div>
							</div>
						</div>
					</div>
					<!-- <div class="col l4 m4 s12 mrg-box">
						<div class="card">
							<h5 class="center-align form-title card-header card-header-icon z-depth-3">
								<i class="material-icons">business</i>
							</h5>
							<div class="card-content">
								<h4 class="card-title">College/University</h4>
								<div class="card-action center-align">
					              	<p class="total-count">78</p>
					            </div>
							</div>
						</div>
					</div> -->
					<div class="col l6 m6 s12  mrg-box">
						<div class="card">
							<h5 class="center-align form-title card-header card-header-icon z-depth-3">
								<i class="material-icons">person</i>
							</h5>
							<div class="card-content">
								<h4 class="card-title">Candidates</h4>
								<div class="card-action center-align">
					              	<p class="total-count"><%=session.getAttribute("displaycandidatecount") %></p>
					            </div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--==================== Result conut box end ==========================-->

			<!--==================== Result category start  ==========================-->
			<div class="row container">
				<h3 class="center-align text-black text-darken-4 z-in-1">
					Results
				</h3>
				<div class="row mrg-box">
					<div class="col l6 m6 s12  mrg-box">
						<div class="card">
							<h5 class="center-align form-title card-header card-header-icon z-depth-3">
								<i class="material-icons">library_add</i>
							</h5>
							<div class="card-content">
								<h4 class="card-title">On Campus</h4>
								<div class="card-action center-align">
				              		<a href="#" class="dib text-black">
				              			<h6 class="text-black pass">Pass</h6>
				              			<%=session.getAttribute("displayoncampuspasscount") %>
				              		</a>
				              		<a href="#" class="dib text-black">
				              			<h6 class="text-black fail">Fail</h6>
				              			<%=session.getAttribute("displayoncampusfailcount") %>
				              		</a>
				              	</div>
							</div>
						</div>
					</div>
					<div class="col l6 m6 s12  mrg-box">
						<div class="card">
							<h5 class="center-align form-title card-header card-header-icon z-depth-3">
								<i class="material-icons">library_add</i>
							</h5>
							<div class="card-content">
								<h4 class="card-title">Off Campus</h4>
								<div class="card-action center-align">
				              		<a href="#" class="dib text-black">
				              			<h6 class="text-black pass">Pass</h6>
				              			<%=session.getAttribute("displayoffcampuspasscount") %>
				              		</a>
				              		<a href="#" class="dib text-black">
				              			<h6 class="text-black fail">Fail</h6>
				              			<%=session.getAttribute("displayoffcampusfailcount") %>
				              		</a>
				              	</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--==================== Result category end ==========================-->
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
	<script src='https://cdn.datatables.net/1.10.5/js/jquery.dataTables.min.js'></script>
    <script src='https://cdn.datatables.net/plug-ins/f2c75b7247b/integration/bootstrap/3/dataTables.bootstrap.js'></script>
    <script src='https://cdn.datatables.net/responsive/1.0.4/js/dataTables.responsive.js'></script>
	<!-- <script type="text/javascript" src="admin-assets/js/bootstrap.min.js"></script> -->
	<script type="text/javascript" src="admin-assets/js/materialize.min.js"></script>
	<script type="text/javascript" src="admin-assets/js/custom.js"></script>
	<!--==================================
			Script js end
	==================================-->
</body>
</html>
<%}%>