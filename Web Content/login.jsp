<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Furniture Store</title>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="tamil.css">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">

		Website CSS style
		<link rel="stylesheet" type="text/css" href="assets/css/main.css">

		Website Font style
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		 <link href="css/registration.css" rel="stylesheet" type="text/css">
		Google Fonts
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 -->
<style>
.carousel-inner>.item>img,.carousel-inner>.item>a>img {
	width: 35%;
	margin: auto;
}

body {
	position: relative;
	background-color: #ffd480;
}
</style>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">

	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Furniture Store</a>
		</div>
		<div class="nav navbar-nav navbar-right">
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="index.jsp">Home</a></li>
					<li><a href="Product.jsp">Product</a></li>


				</ul>
			</div>
		</div>
	</div>
	</nav>
	<br>
	<br>
	<br>

	<div class="container">
		<div class="row main">
			<div class="main-login main-center">
				<form class="form-horizontal" action="loginProcess.do" method="post">
					<h1 align="center">
						<i><b>Login</b></i>
					</h1>

					<div class="form-group">
						<label for="username" class="cols-sm-2 control-label">User
							Id</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-user" aria-hidden="true"></i></span> <input
									type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
									class="form-control" name="emailId" id="username"
									placeholder="Enter Your Email id" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="password" class="cols-sm-2 control-label">Password</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-eye-open" aria-hidden="true"></i></span> <input
									type="password" class="form-control" name="password"
									id="password" placeholder="Enter Your Password" />
							</div>
						</div>
					</div>
					<div class="form-group ">
						<!-- 							<button type="button" class="btn btn-primary btn-lg btn-block login-button"> onclick="return formValidation();Login</button>
 -->
						<input type="submit" value="Log In" />
						<!-- onclick="return formValidation();" -->
						<br>
						<br> <a href="register.jsp"><span
							class="glyphicon glyphicon-user"></span>Sign Up</a>
						<!--      <input type="submit" value="Register"/> -->

					</div>

				</form>
			</div>
		</div>
	</div>

	<script>
		function formValidation() {

			var passid = document.login.password;
			var uname = document.login.username;
			if (allLetter(uname)) {
				if (passid_validation(passid, 5, 12)) {

				}
			}
			return false;

		}

		function allLetter(uname) {
			var letters = /^[A-Za-z]+$/;
			if (uname.value.match(letters)) {
				return true;
			} else {
				alert('Please Enter The Valid Username !');
				uname.focus();
				return false;
			}
		}

		function passid_validation(passid, mx, my) {
			var passid_len = passid.value.length;
			if (passid_len == 0 || passid_len >= my || passid_len < mx) {
				alert("Please Enter The Valid Password !");
				passid.focus();
				return false;
			} else {
				alert('Form Succesfully Submitted');

				return true;
			}
		}
	</script>
</body>
</html>