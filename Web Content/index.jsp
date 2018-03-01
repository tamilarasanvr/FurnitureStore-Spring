<!DOCTYPE html>
<html>
<head>

<title>Furniture Store</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.carousel-inner>.item>img,.carousel-inner>.item>a>img {
	width: 1000px;
	height: 500px;
	margin: auto;
}

body {
	position: relative;
}

.modal-header,h4,.close {
	background-color: #1E88E5;
	color: white !important;
	text-align: center;
	font-size: 30px;
}

.modal-footer {
	background-color: #f9f9f9;
}

.button {
	background-color: #4CAF50;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}

.loginbutton {
	background-color: #262626;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: .5px 1px;
	cursor: pointer;
}

#section1 {
	padding-top: 50px;
	height: 650px;
	color: #fff;
	background-color: #ffd480;
}

#section2 {
	padding-top: 50px;
	height: 650px;
	color: #fff;
	background-color: #ffd480;
}

#section3 {
	padding-top: 50px;
	height: 650px;
	color: #fff;
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
				<img alt="no" src="images/Title/logo.png" width="50px" height="50px" />
				<a class="navbar-brand" href="index.jsp">Furniture Store</a>
			</div>
			<div class="nav navbar-nav navbar-right">
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li><a href="#section1">Home</a></li>
						<li><a href="#section2">About us</a></li>
						<li><a href="Product.jsp">Product</a></li>
						<li><a href="#section3">Contact</a>
						<li><a href="login.jsp"><span
								class="glyphicon glyphicon-log-in"></span>Login</a></li>
						<!-- <li><a href="admin.jsp"><span
								class="glyphicon glyphicon-user"></span> Admin</a></li> -->
						<!--   <button type="button" class="loginbutton" id="myBtn" ><span class="glyphicon glyphicon-log-in">&nbsp;Login</button>-->
					</ul>


				</div>
			</div>
		</div>
	</nav>



	<div class="container">

		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header" style="padding: 35px 50px;">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4>
							<span class="glyphicon glyphicon-lock"></span> Login
						</h4>
					</div>
					<div class="modal-body" style="padding: 40px 50px;">
						<form role="form">
							<div class="form-group">
								<label for="usrname"><span
									class="glyphicon glyphicon-user"></span> Username</label> <input
									type="text" class="form-control" id="usrname" name="emailId"
									placeholder="Enter email">
							</div>
							<div class="form-group">
								<label for="psw"><span
									class="glyphicon glyphicon-eye-open"></span> Password</label> <input
									type="password" class="form-control" name="password" id="psw"
									placeholder="Enter password">

							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="" checked>Remember
									me</label>
							</div>
							<button type="submit" class="button">
								<span class="glyphicon glyphicon-off"></span> Login
							</button>
						</form>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-danger btn-default pull-left"
							data-dismiss="modal">
							<span class="glyphicon glyphicon-remove"></span> Cancel
						</button>
						<p>
							Not a member? <a href="#">Sign Up</a>
						</p>
						<p>
							Forgot <a href="#">Password?</a>
						</p>
					</div>
				</div>

			</div>
		</div>
	</div>

	<script>
		$(document).ready(function() {
			$("#myBtn").click(function() {
				$("#myModal").modal();
			});
		});
	</script>

	<div id="section1" class="container-fluid">

		<div>
			<p>
			<h1 align="center" style="color: black">Welcome To Our Store</h1>
			</p>
		</div>

		<div class="container">
			<br>
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<!-- <ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"  ></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
					<li data-target="#myCarousel" data-slide-to="4"></li>
				</ol> -->

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">

					<div class="item active">
						<img src="images/Title/titlebed.jpg" alt="Chania">
						<div class="carousel-caption"></div>
					</div>

					<div class="item">
						<img src="images/Title/titlechair.jpg" alt="Chania" width="460"
							height="345">
						<div class="carousel-caption"></div>
					</div>

					<div class="item">
						<img src="images/Title/titledoor.jpg" alt="Flower" width="460"
							height="345">
						<div class="carousel-caption"></div>
					</div>

					<div class="item">
						<img src="images/Title/titletable.jpg" alt="Flower" width="460"
							height="345">
						<div class="carousel-caption"></div>
					</div>

					<div class="item">
						<img src="images/Title/titletvstand.jpg" alt="Flower" width="460"
							height="345">
						<div class="carousel-caption"></div>
					</div>

				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>

	</div>
	<div id="section2" class="container-fluid" style="color: black">
		<h1 align="center" style="color: black">About Us</h1>
		<p align="justify">HomeTown has been bringing the latest designs & fashion to Indian homes. HomeTown offers the widest and best in class range in furniture, home furnishings & decor, modular kitchens, home improvement and more. Part of the Future Group, HomeTown brings an enjoyable and hassle-free homemaking experience to all its valuable customers with varying lifestyles and preferences.</p>

<p>We promise to facilitate our customers with a unique and personalized shopping experience. Our commitment to quality and timeless designs has helped us evolve over the years and it indeed fills us with pride to be the first choice of many.</p>

<p>With a great spread that appeals to the globe-trotting, trendy yet very much Indian homemaker, HomeTown is known to attract an array of lifestyle seeking customers. Being recognized as India’s biggest store in homemaking, renovation and decor, our products are exclusively designed while keeping durability and comfort at priority.The key differentiator between Home Town and others is the Design and Build offering of end-to-end interior decoration services, to customers who are interested in renovating & upgrading their homes.</p>

<p>From classy sofas to chic dining sets to kitchen essentials and artifacts, we offer everything to beautify your living space.
</p>
	</div>

	<div id="section3" class="container-fluid">
		<div class="container">
			<div class="col-md-5">
				<div class="form-area">
					<form role="form">
						<br style="clear: both">
						<h3 style="margin-bottom: 25px; text-align: center; color: black">Contact
							Form</h3>
						<div class="form-group">
							<input type="text" class="form-control" id="name" name="name"
								placeholder="Name" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="email" name="email"
								placeholder="Email" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="mobile" name="mobile"
								placeholder="Mobile Number" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="subject"
								name="subject" placeholder="Subject" required>
						</div>
						<div class="form-group">
							<textarea class="form-control" type="textarea" id="message"
								placeholder="Message" maxlength="140" rows="7"></textarea>

						</div>

						<button type="button" id="submit" name="submit"
							class="btn btn-primary pull-right">Submit Form</button>
					</form>
				</div>
			</div>
		</div>
		<br> <br>
		<p align="center" style="color: red">
			<b>TAMILARASAN V &#169; &nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span class="glyphicon glyphicon-phone"></span> &nbsp;+91 9715204070
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
				class="glyphicon glyphicon-envelope"></span>&nbsp;tamilarasanvr@gamil.com
			</b>
		</p>
	</div>




	<script>
		$(document).ready(function() {
			// Add scrollspy to <body>
			$('body').scrollspy({
				target : ".navbar",
				offset : 50
			});

			// Add smooth scrolling on all links inside the navbar
			$("#myNavbar a").on('click', function(event) {
				// Make sure this.hash has a value before overriding default behavior
				if (this.hash !== "") {
					// Prevent default anchor click behavior
					event.preventDefault();

					// Store hash
					var hash = this.hash;

					// Using jQuery's animate() method to add smooth page scroll
					// The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
					$('html, body').animate({
						scrollTop : $(hash).offset().top
					}, 800, function() {

						// Add hash (#) to URL when done scrolling (default click behavior)
						window.location.hash = hash;
					});
				} // End if
			});
		});
	</script>
</body>
</html>
