<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<%@ page isELIgnored="false"%>
<%@ page errorPage="error.jsp" %>
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
	<!-- Datatable export css -->
    <link rel='stylesheet' href='https://cdn.datatables.net/buttons/1.5.1/css/buttons.dataTables.min.css'>
	<!-- Datatable Responsive css -->
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
		response.setHeader("Pragma","no-cache"); // HTTP 1.0
		response.setHeader("Cache-Control","no-store"); // HTTP 1.1
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
		    		<a href="dashboard.jsp" title="" data-activates="slide-out" class="sidebar-menu dib">
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

  			<!--==================== form add category start ==========================-->
			<div class="container mrg-box card">
				<h5 class="center-align form-title card-header card-header-icon z-depth-3">
					<i class="material-icons">streetview</i>
				</h5>
				<div class="row card-content">
					<h4 class="card-title">Select Campus</h4>
					<form name="" action="ViewCandidateController" method="post" class="custom-form col l12 m12 s12">
						<div class="row">
					        <div class="input-field col l10 push-l1 m11 push-m1 s12">
					          	<select name="campuscategory">
							      	<option value="" disabled selected>Select Campus</option>
							      	<option value="On-campus">On-Campus</option>
							      	<option value="Off-campus">Off-Campus</option>
							    </select>
							    <label for="category">Select Campus</label>
					        </div>
					    </div>
					    <div class="row center-align">
						    <button class="btn waves-effect waves-light red darken-4" type="submit" name="action">Submit<i class="material-icons right">send</i>
							</button>
						</div>
					</form>
				</div>
			</div>
			<!--==================== form add category end ==========================-->

			<!--====================Candidate list table start  ==========================-->
			<div class="row container table-box card">
				<h5 class="center-align form-title card-header card-header-icon z-depth-3">
					<i class="material-icons">format_list_bulleted</i>
				</h5>
				<div class="row card-content">
					<h4 class="card-title">List Of Candidates</h4>
					<table id="example" class="table bordered striped" cellspacing="0" width="100%">
			        	<thead class="">
                            <tr>
                                <th>Name</th>
                                <th>Category</th>
                                <th>Passout Year</th>
                                <th>City/State</th>
                                <th>Campus</th>
                                <th>Status</th>
                                <th>Action</th>
                              
                            </tr>
                        </thead>
                        <tbody>
                              <c:forEach items="${viewAllCandidate}" var="registration">
								<tr>

								
									<td>${registration.candidateFullName}</td>
									<td>${registration.candidatePassoutYear}</td>
									<td>${registration.candidatePassoutYear}</td>
									
									<td>${registration.candidateCity}/${registration.candidateState}</td>
									
									 <td>${registration.candidateOffcampusOncampus}</td> 
									
								<%--  	<c:set var="cardname" value="${registration.stutas}" scope="page"></c:set>
									
									<% String candidateScore=(String)pageContext.getAttribute("cardname");
									if(candidateScore==null){
										candidateScore="0";
									}
									String finalStatus=null;
									int result = Integer.parseInt(candidateScore);
									
									if(result<=10){
										finalStatus="Fail";
										
									}
									else
									if(result>=11 &&result<=15)
									{
										finalStatus="Hold";
										//System.out.println(result+"hold");
									}
									else{
										finalStatus="Pass";
										System.out.println(result+"pass");
									}
									
									pageContext.setAttribute("finalStatus", finalStatus);
									
									
									%>  --%>
									<td>${registration.stutas}</td>
									   <td>
                                	<a class="tooltipped btn btn-icon edit modal-trigger" href="#view-candidate-data?${registration.candidateId}" data-position="top" data-delay="50" data-tooltip="view">
                                		<i class="material-icons">remove_red_eye</i>
                                	</a>
                                	
                                </td>
							</c:forEach>
                        </tbody>
			    	</table>
			    </div>
			</div>
			<!--==================== Candidate list table end ==========================-->
		</div>
		<!--========================== .row end   ================================-->

		<footer>
			<div class="copyright center-align">
	            &copy; 
	           	<script>document.write(new Date().getFullYear())</script>,copyright 
	            <a href="http://www.xenture.co/" title="Xenture Inc." target="_blank" class="red-text text-darken-4">Xenture Inc.</a>
	        </div>
		</footer>
      <c:forEach items="${viewAllCandidate}" var="registration">
		<!-- View Candidate Modal Structure -->
	  	<div id="view-candidate-data?${registration.candidateId}" class="modal">
		    <div class="modal-content">
		    	<div class="responsive-table center-align result-table">
		    		<h5 class="center-align">Candidate Information</h5>
		    		<table class="bordered ">
						<tbody>
							<tr>
								<td>Candidate Name :</td>
								<td>${registration.candidateFullName}</td>
								<td>Category :</td>
								<td>Sales</td>
							</tr>
							<tr>
								<td>Contact No :</td>
								<td>${registration.candidateContactNo}</td>
								<td>Email Id :</td>
								<td>${registration.candidateEmail}</td>
							</tr>
							<tr>
								<td>Passout Year :</td>
								<td>${registration.candidatePassoutYear}</td>
								<td>City/State :</td>
								<td>${registration.candidateCity}/${registration.candidateState}</td>
							</tr>
							<tr>
								<td>Campus :</td>
								<td>${registration.candidateOffcampusOncampus}</td>
								<td>Fresher/Experience :</td>
								<td>${registration.candidateFresherExp}</td>
							</tr>
							<!-- <tr>
								<td>College/University Name :</td>
								<td colspan="3">MIT</td>
							</tr> -->
							<tr>
								<td>Address :</td>
								<td colspan="3">${registration.candidateAddress}</td>
							</tr>
						</tbody>
					</table>
				</div>
		    </div>
		    <div class="modal-footer">
		      	<a href="#!" class="modal-action modal-close waves-effect btn-flat">Close</a>
		    </div>
	  	</div>
</c:forEach>
 <c:forEach items="${viewAllCandidate}" var="registration">
	  	<!-- View result Modal Structure -->
	  	<div id="view-pass-data" class="modal">
		    <div class="modal-content">
		    	<div class="responsive-table center-align result-table">
					<table class="bordered ">
						<tbody>
							<tr>
								<td>Candidate Id :</td>
								<td>XEN-001</td>
							</tr>
							<tr>
								<td>Your Starting Time :</td>
								<td>25/01/2018 10:22:55 AM</td>
							</tr>
							<tr>
								<td>Number Of Questions :</td>
								<td>10</td>
							</tr>
							<tr>
								<td>Number Of Correct Answers :</td>
								<td>05</td>
							</tr>
						</tbody>
					</table>
				</div>
				<h5 class="center-align pass">Pass</h5>
		    </div>
		    <div class="modal-footer">
		      	<a href="#!" class="modal-action modal-close waves-effect btn-flat">Close</a>
		    </div>
	  	</div>
	  	</c:forEach>
	</div>
	<!--==================================
			.main-wrapper end 
	==================================-->
	

	<!--==================================
			Script js start 
	==================================-->
	<script type="text/javascript" src="admin-assets/js/jquery.min.js"></script>
	<script src='https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js'></script>
	<!-- datatable responsive js -->
    <script src='https://cdn.datatables.net/plug-ins/f2c75b7247b/integration/bootstrap/3/dataTables.bootstrap.js'></script>
    <script src='https://cdn.datatables.net/responsive/1.0.4/js/dataTables.responsive.js'></script>
    <!-- export js start -->
    <script src="https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.flash.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js"></script>
	<!-- export js end -->
	<!-- <script type="text/javascript" src="admin-assets/js/bootstrap.min.js"></script> -->
	<script type="text/javascript" src="admin-assets/js/materialize.min.js"></script>
	<script type="text/javascript" src="admin-assets/js/custom.js"></script>
	<!--==================================
			Script js end
	==================================-->
</body>
</html>
<% } %>