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
<title>List-View | Xenture</title>
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
<link rel='stylesheet prefetch'
	href='https://cdn.datatables.net/plug-ins/f2c75b7247b/integration/bootstrap/3/dataTables.bootstrap.css'>
<link rel='stylesheet prefetch'
	href='https://cdn.datatables.net/responsive/1.0.4/css/dataTables.responsive.css'>


<link rel="stylesheet" type="text/css"
	href="assets/css/material-kit.css">
<link rel="stylesheet" type="text/css"
	href="assets/css/bootstrap-custom.css">
<link rel="stylesheet" type="text/css" href="assets/css/media.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css"
	rel="stylesheet">
<%
	List list = (List) session.getAttribute("list");
	if (list == null) {
		list = null;
	}
%>
<%
	if (list != null) {
	}
%>

<%
	Object value = session.getAttribute("adminEmail");
	if (value == null) {
		response.sendRedirect("adminlogin.jsp");
	} else {
		response.setHeader("Pragma","no-cache"); // HTTP 1.0
		response.setHeader("Cache-Control","no-store"); // HTTP 1.1
		response.setDateHeader("Expires", 0);
%>
</head>




<body class="list-page login-page">
	<div class="container-fluid clearfix">
		<!-- ============== header admin panel and sign out start ============== -->
		<div class="col-md-12 clearfix">
			<div class="col-md-6 col-sm-6 col-xs-12 no-pad">
				<h2 class="dash-title">
					Admin Panel
					<button class="dash-title pull-right visible-xs">
						<a href="adminlogout.jsp">sign out</a>
					</button>
					<!-- <a href="adminlogin.jsp" class="btn pull-right hidden-xs">Sign out</a> -->
				</h2>
			</div>
			<div class="col-md-6 col-sm-6 col-xs-12 no-pad hidden-xs">
				<!-- <h2 class="dash-title text-right">Sign out</h2> -->

				<h2 class="dash-title">
					<!--  <button class="btn pull-right hidden-xs">Sign out</button> -->
					<a href="adminlogout.jsp" class="btn pull-right hidden-xs">Sign
						out</a>

				</h2>


			</div>
		</div>
		<!-- ============== header admin panel and sign out end ============== -->
		<h2 class="text-center dash-title">List of candidates</h2>
		<div class="table-box">
			<div class="row">
				<div class="col-md-12 table-responsive">
					<table id="table" class="table" cellspacing="0" width="100%">
						<thead>
							<tr>
								<th>ID</th>
								<th>CandidateName</th>
								<th>CandidateEmail</th>
								<th>ContactNo</th>
								<!-- <th>CollegeId</th>
								<th>CandidatePassOutYear</th> -->
								<th>CandidateFresherExp</th>
								<th>TestScore</th>
								 <th>Status</th>


							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list}" var="registration">
								<tr>

									<td>Xen-${registration.candidateId}</td>
									<td>${registration.candidateFullName}</td>
									<td>${registration.candidateEmail}</td>
									<td>${registration.candidateContactNo}</td>
									<%-- <td>${registration.collegeId}</td>
									<td>${registration.candidatePassoutYear}</td> --%>
									<td>${registration.candidateFresherExp}</td>
									<%-- 	<td>${registration.candidateAddress}</td> --%>
									 <td>${registration.stutas}</td> 
									
								 	<c:set var="cardname" value="${registration.stutas}" scope="page"></c:set>
									
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
									
									
									%> 
									<td>${finalStatus}</td>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
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


	<script type="text/javascript" src="assets/js/jquery.min.js"></script>
	<script
		src='https://cdn.datatables.net/1.10.5/js/jquery.dataTables.min.js'></script>
	<script
		src='https://cdn.datatables.net/plug-ins/f2c75b7247b/integration/bootstrap/3/dataTables.bootstrap.js'></script>
	<script
		src='https://cdn.datatables.net/responsive/1.0.4/js/dataTables.responsive.js'></script>
	<script type="text/javascript">
		$('table').DataTable({
			responsive : true
		});
	</script>
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/custom.js"></script>
	<script type="text/javascript" src="assets/js/material.min.js"></script>
	<script type="text/javascript" src="assets/js/material-kit.js"></script>
	<script type="text/javascript" src="assets/js/nouislider.min.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-datepicker.js"></script>
</body>
</html>
<%
	}
%>