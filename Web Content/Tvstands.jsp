<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	width: 30%;
	margin: auto;
}

body {
	position: relative;
	background-color: #ffd480;
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
					<li><a href="login.jsp"><span
							class="glyphicon glyphicon-log-in"></span>  Log In</a></li>
				
					<!-- <li><a href="admin.jsp"><span
							class="glyphicon glyphicon-user"></span> Admin</a></li> -->

				</ul>


			</div>
		</div>
	</div>
	</nav>
</head>

<br>
<br>
<br>
<body>
	<p>
	<h1 align="center">
		<b><i>TV Stands List</i></b>
	</h1>
	</p>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4">
				<img src="images/Tvstands/tv 3-tier in espresso.jpg" height="250px"
					width="250px"><br>
				<br>
				<p>
					Product Id : 4001<br>
				</p>
				<p>
					Table Name : 3-Tier In Espresso TV Stand<br>
				</p>
				<p>
					Product Price : <img src="images/Title/Indian_Rupee_symbol.png"
						width="10px" height="10px"> 6000.00
				</p>
				<form action="addcart.jsp">
					<input type="submit" value="Add To Cart" />
				</form>
				<form action="wishlist.jsp">
					<input type="submit" value="Add To Wish List" />
				</form>
			</div>
			<div class="col-sm-4">
				<img src="images/Tvstands/tv angelo.jpg" height="250px"
					width="250px"><br>
				<br>
				<p>
					Product Id : 4002<br>
				</p>
				<p>
					Table Name : Angelo TV Stand<br>
				</p>
				<p>
					Product Price : <img src="images/Title/Indian_Rupee_symbol.png"
						width="10px" height="10px"> 5000.00
				</p>
				<form action="addcart.jsp">
					<input type="submit" value="Add To Cart" />
				</form>
				<form action="wishlist.jsp">
					<input type="submit" value="Add To Wish List" />
				</form>
			</div>
			<div class="col-sm-4">
				<img
					src="images/Tvstands/tv Antebellum Electric Fireplace TV Stand in Black.jpg"
					height="250px" width="250px"><br>
				<br>
				<p>
					Product Id : 4003<br>
				</p>
				<p>
					Table Name : Antebellum Electric Fireplace TV Stand<br>
				</p>
				<p>
					Product Price : <img src="images/Title/Indian_Rupee_symbol.png"
						width="10px" height="10px"> 8000.00
				</p>
				<form action="addcart.jsp">
					<input type="submit" value="Add To Cart" />
				</form>
				<form action="wishlist.jsp">
					<input type="submit" value="Add To Wish List" />
				</form>
			</div>
		</div>
		<br>
		<br>
		<div class="row">
			<div class="col-sm-4">
				<img src="images/Tvstands/tv bush myspace vision.jpg"
					height="250px" width="250px"><br>
				<br>
				<p>
					Product Id : 4004<br>
				</p>
				<p>
					Table Name : Bush Myspace Vision TV Stand<br>
				</p>
				<p>
					Product Price : <img src="images/Title/Indian_Rupee_symbol.png"
						width="10px" height="10px"> 4000.00
				</p>
				<form action="addcart.jsp">
					<input type="submit" value="Add To Cart" />
				</form>
				<form action="wishlist.jsp">
					<input type="submit" value="Add To Wish List" />
				</form>
			</div>

			<div class="col-sm-4">
				<img src="images/Tvstands/tv crosley campbell.jpg" height="250px"
					width="250px"><br>
				<br>
				<p>
					Product Id : 4005<br>
				</p>
				<p>
					Table Name : Crosley Campbell TV Stand<br>
				</p>
				<p>
					Product Price : <img src="images/Title/Indian_Rupee_symbol.png"
						width="10px" height="10px"> 5000.00
				</p>
				<form action="addcart.jsp">
					<input type="submit" value="Add To Cart" />
				</form>
				<form action="wishlist.jsp">
					<input type="submit" value="Add To Wish List" />
				</form>
			</div>
			<div class="col-sm-4">
				<img src="images/Tvstands/tv hellow-core.jpg" height="250px"
					width="250px"><br>
				<br>
				<p>
					Product Id : 4006<br>
				</p>
				<p>
					Table Name : Hellow-Core TV Stand<br>
				</p>
				<p>
					Product Price : <img src="images/Title/Indian_Rupee_symbol.png"
						width="10px" height="10px"> 6000.00
				</p>
				<form action="addcart.jsp">
					<input type="submit" value="Add To Cart" />
				</form>
				<form action="wishlist.jsp">
					<input type="submit" value="Add To Wish List" />
				</form>
			</div>
		</div>
		<br>
		<br>
		<div class="row">
			<div class="col-sm-3">
				<img src="images/Tvstands/tv linon perry.jpg" height="250px"
					width="250px"><br>
				<br>
				<p>
					Product Id : 4007<br>
				</p>
				<p>
					Table Name : Linon Perry TV Stand<br>
				</p>
				<p>
					Product Price : <img src="images/Title/Indian_Rupee_symbol.png"
						width="10px" height="10px"> 4000.00
				</p>
				<form action="addcart.jsp">
					<input type="submit" value="Add To Cart" />
				</form>
				<form action="wishlist.jsp">
					<input type="submit" value="Add To Wish List" />
				</form>
			</div>
			<div class="col-sm-3">
				<img src="images/Tvstands/tv sauder panel.jpg" height="250px"
					width="250px"><br>
				<br>
				<p>
					Product Id : 4008<br>
				</p>
				<p>
					Table Name : Sauder Panel TV Stand<br>
				</p>
				<p>
					Product Price : <img src="images/Title/Indian_Rupee_symbol.png"
						width="10px" height="10px"> 8000.00
				</p>
				<form action="addcart.jsp">
					<input type="submit" value="Add To Cart" />
				</form>
				<form action="wishlist.jsp">
					<input type="submit" value="Add To Wish List" />
				</form>
			</div>
			<div class="col-sm-3">
				<img src="images/Tvstands/tv solid wood in espresso.jpg"
					height="250px" width="250px"><br>
				<br>
				<p>
					Product Id : 4009<br>
				</p>
				<p>
					Table Name : Solid Wood In Espresso TV Stand<br>
				</p>
				<p>
					Product Price : <img src="images/Title/Indian_Rupee_symbol.png"
						width="10px" height="10px"> 7000.00
				</p>
				<form action="addcart.jsp">
					<input type="submit" value="Add To Cart" />
				</form>
				<form action="wishlist.jsp">
					<input type="submit" value="Add To Wish List" />
				</form>
			</div>
			<div class="col-sm-3">
				<img src="images/Tvstands/tv xavier.jpg" height="250px"
					width="250px"><br>
				<br>
				<p>
					Product Id : 4010<br>
				</p>
				<p>
					Table Name : Xavier TV Stand<br>
				</p>
				<p>
					Product Price : <img src="images/Title/Indian_Rupee_symbol.png"
						width="10px" height="10px"> 6000.00
				</p>
				<form action="addcart.jsp">
					<input type="submit" value="Add To Cart" />
				</form>
				<form action="wishlist.jsp">
					<input type="submit" value="Add To Wish List" />
				</form>
			</div>
		</div>
		<br>
		<br>
</body>
</html>