<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<title>Register | Xenture</title>
<link rel="shortcut icon" type="image/png"
	href="resources/assets/img/favicon.png" />

<meta charset="UTF-8">
<meta name="description" content="smart recuritment,job search">
<meta name="keywords"
	content="trabaajo.com,Trabaajo,smart recuritment,job search">
<meta name="author" content="Trabaajo">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css"
	href="resources/assets/css/generic.css">
<link rel="stylesheet" type="text/css"
	href="resources/assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/assets/css/material-kit.css">
<link rel="stylesheet" type="text/css"
	href="resources/assets/css/bootstrap-custom.css">
<link rel="stylesheet" type="text/css"
	href="resources/assets/css/media.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">


</head>
<body class="login-page" onload="category()">

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
						src="resources/assets/img/logo.png" alt="logo">
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
				<div class="col-md-6 col-sm-6 col-xs-12 about-blk">
					<h1>Welcome To Xenture Inc.</h1>
					<p>Xenture as a company aims to redefine the terms of
						technology with its innovation.We self-importantly aim to be the
						trendsetters in the market.Xenture is a one-stop solution to all
						your business queries.We are happy to assist you!</p>
					<p>Our unique and ground-breaking products is the reason behind
						our confidence.As egoless individuals, the confidence and support
						shared among the team members is the root cause of our existence
						now and forever.</p>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="card card-signup">
						<form:form class="form" action="RegistrationProcess" method="POST"
							id="register" modelAttribute="candidate">
							<div
								class="header header-primary header-primary-custom text-center">
								<h4 class="card-title">Let's start to being part of Xenture
									!</h4>
							</div>

							<div class="card-content">

								<!-- <div class="row">
									<div class="alert alert-danger">
										<div class="alert-icon">
											<i class="material-icons">check</i>
										</div>
										<button type="button" class="close" data-dismiss="alert"
											aria-label="Close">
											<span aria-hidden="true"> <i class="material-icons">clear</i>
											</span>
										</button>
										<p>
											</p>
									</div>
								</div> -->

								<div class="row">
									<div class="col-md-6 col-sm-6 col-xs-12">
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="material-icons">person</i>
											</span>
											<div class="form-group is-empty">
												<form:input path="candidateName" class="form-control"
													name="candidateName" placeholder="Enter Your Full Name"
													data-validation="required" />
												<span class="material-input"></span>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-sm-6 col-xs-12">
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="material-icons">phone</i>
											</span>
											<div class="form-group is-empty">
												<form:input path="candidateContactNo" class="form-control"
													name="candidatePhone" placeholder="Enter Contact Number"
													pattern="[789][0-9]{9}" data-validation="number" />
												<span class="material-input"> <font color="red"><div id="mydiv"></div></font>
											</div>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-md-6 col-sm-6 col-xs-12">
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="material-icons">email</i>
											</span>
											<div class="form-group is-empty">
												<form:input path="email" class="form-control"
													name="email" placeholder="Enter Your Email Id"
													data-validation="email" onchange="check(this.value);" />
												<font color="red"><div id="mydiv"></div></font> <span
													class="material-input"></span>
											</div>

										</div>
									</div>

									<div class="col-md-6 col-sm-6 col-xs-12">
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="material-icons">lock_outline</i>
											</span>
											<div class="form-group is-empty">
												<form:password path="password"
													name="candidatePassword" placeholder="Enter Password"
													class="form-control" data-validation="strength"
													data-validation-strength="6" />
												<span class="material-input"></span>
											</div>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-md-6 col-sm-6 col-xs-12">
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="material-icons">school</i>
											</span>
											<div class="form-group is-empty">
												<select class="form-control" name="candidatestatus"
													id="fre-exp" data-validation="required">
													<option disabled selected>Fresher / Experience</option>
													<option value="0">Fresher</option>
													<option value="1">1 years</option>
													<option value="2">2 years</option>
													<option value="3">3 years</option>
													<option value="4">4 years</option>
													<option value="5">5 years</option>
												</select> <span class="material-input"></span>
											</div>
										</div>
									</div>
									
									
									<div class="col-md-6 col-sm-6 col-xs-12">
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="material-icons">account_balance</i>
											</span>
											<div class="form-group is-empty">
												<select class="form-control" data-validation="required"
													name="candidateOffcampusOncampus">
													<option disabled selected>Select Campus</option>
													<option value="On-campus">On-campus</option>
													<option value="Off-campus">Off-campus</option>
												</select> <span class="material-input"></span>
											</div>
										</div>
									</div>
								</div>

								<div class="input-group" id="test">
									<span class="input-group-addon"> <i
										class="material-icons">business</i>
									</span>
									<div class="form-group is-empty">
										<input type="text" name="candidateCompany"
											placeholder="Enter Current / Previous Company Name"
											class="form-control"> <span class="material-input"></span>
									</div>
								</div>


								<div class="input-group">
									<span class="input-group-addon"> <i
										class="material-icons">business</i>
									</span>
									<div class="form-group is-empty">
										<form:input path="candidateUnitersity"
											name="candidateCollegeName"
											placeholder="Enter College / University Name"
											class="form-control" data-validation="required" />
										<span class="material-input"></span>
									</div>
								</div>

								<div class="input-group">
									<span class="input-group-addon"> <i
										class="material-icons">home</i>
									</span>
									<div class="form-group is-empty">
										<form:input path="candidateAddress" name="candidateAddress"
											placeholder="Enter Your Address" class="form-control"
											data-validation="required" />
										<span class="material-input"></span>
									</div>
								</div>

								<div class="row">
									<div class="col-md-6 col-sm-6 col-xs-12">
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="material-icons">add_location</i>
											</span>
											<div class="form-group is-empty">
												<input type="text" name="candidateState"
													placeholder="Enter State" class="form-control"
													data-validation="required"> <span
													class="material-input"></span>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-sm-6 col-xs-12">
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="material-icons">add_location</i>
											</span>
											<div class="form-group is-empty">
												<input type="text" name="candidateCity"
													placeholder="Enter City" class="form-control"
													data-validation="required"> <span
													class="material-input"></span>
											</div>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-md-6 col-sm-6 col-xs-12">
										 <div class="input-group">
											<span class="input-group-addon"> <i
												class="material-icons">playlist_add_check</i>
											</span>

											<div class="form-group is-empty">
												<select class="form-control" name="candidateCategory"
													data-validation="required">
													<option disabled selected>Select Category</option>

													<option value="On-campus">IT</option>
													<option value="Off-campus">Marketing</option>

												</select> <span class="material-input"></span>
											</div>

										</div> 
									</div>
									<div class="col-md-6 col-sm-6 col-xs-12">
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="material-icons">date_range</i>
											</span>
											<div class="form-group is-empty">
												<form:input path="candidatePassoutYear"
													name="candidatePassYear" placeholder="Enter Passout Year"
													class="form-control" data-validation="required" />
												<span class="material-input"></span>
											</div>
										</div>
									</div>
								</div>

								<div class="footer text-center">
									<button type="submit"
										class="btn btn-primary btn-round btn-wd btn-lg">
										Register</button>
								</div>
							</div>


						</form:form>

						<div class="card-action text-center gray">
							<a href="candidateLogin.php" class="red">Login Here</a>
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
		<!-- ./footer end -->
	</div>

	<script type="text/javascript" src="resources/assets/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="resources/assets/js/jquery.form-validator.min.js"></script>
	<script type="text/javascript"
		src="resources/assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/custom.js"></script>
	<script type="text/javascript"
		src="resources/assets/js/material.min.js"></script>
	<script type="text/javascript"
		src="resources/assets/js/material-kit.js"></script>
	<script type="text/javascript"
		src="resources/assets/js/nouislider.min.js"></script>
	<script type="text/javascript"
		src="resources/assets/js/bootstrap-datepicker.js"></script>
	<script>
		$
				.validate({
					form : '#register',
					modules : 'security',
					onModulesLoaded : function() {
						var optionalConfig = {
							fontSize : '12pt',
							padding : '4px',
							bad : 'Very bad',
							weak : 'Weak',
							good : 'Good',
							strong : 'Strong'
						};
						$('input[name="pass"]').displayPasswordStrength(
								optionalConfig);
					}
				});
	</script>
</body>
</html>