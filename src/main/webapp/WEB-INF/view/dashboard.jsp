<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page isELIgnored="false"%>
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

		