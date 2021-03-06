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
							class="glyphicon glyphicon-log-in"></span> Log In</a></li>
					<!-- <li><a href="admin.jsp"><span
							class="glyphicon glyphicon-user"></span> Admin</a></li>
 -->
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
		<b><i>Door List</i></b>
	</h1>
	<br>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4">
				<img src="images/Doors/d2.jpg" height="250px" width="250px"><br>
				<br>
				<p>
					Product Id : 3001<br>
				</p>
				<p>
					Table Name : Bi fold door<br>
				</p>
				<p>
					Product Price : <img src="images/Title/Indian_Rupee_symbol.png"
						width="10px" height="10px"> 25000.00
				</p>
				<form action="addcart.jsp">
					<input type="submit" value="Add To Cart" />
				</form>
				<form action="wishlist.jsp">
					<input type="submit" value="Add To Wish List" />
				</form>
			</div>
			<div class="col-sm-4">
				<img src="images/Doors/d3.JPG" height="250px" width="250px"><br>
				<br>
				<p>
					Product Id : 3002<br>
				</p>
				<p>
					Table Name : Stacker door<br>
				</p>
				<p>
					Product Price : <img src="images/Title/Indian_Rupee_symbol.png"
						width="10px" height="10px"> 20000.00
				</p>
				<form action="addcart.jsp">
					<input type="submit" value="Add To Cart" />
				</form>
				<form action="wishlist.jsp">
					<input type="submit" value="Add To Wish List" />
				</form>
			</div>
			<div class="col-sm-4">
				<img src="images/Doors/d4.jpg" height="250px" width="250px"><br>
				<br>
				<p>
					Product Id : 3003<br>
				</p>
				<p>
					Table Name : Dutch door<br>
				</p>
				<p>
					Product Price : <img src="images/Title/Indian_Rupee_symbol.png"
						width="10px" height="10px"> 30000.00
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
				<img src="images/Doors/d5.jpg" height="250px" width="250px"><br>
				<br>
				<p>
					Product Id : 3004<br>
				</p>
				<p>
					Table Name : Tilt door<br>
				</p>
				<p>
					Product Price : <img src="images/Title/Indian_Rupee_symbol.png"
						width="10px" height="10px"> 18000.00
				</p>
				<form action="addcart.jsp">
					<input type="submit" value="Add To Cart" />
				</form>
				<form action="wishlist.jsp">
					<input type="submit" value="Add To Wish List" />
				</form>
			</div>

			<div class="col-sm-4">
				<img src="images/Doors/d6.jpg" height="250px" width="250px"><br>
				<br>
				<p>
					Product Id : 3005<br>
				</p>
				<p>
					Table Name : Security screen door<br>
				</p>
				<p>
					Product Price : <img src="images/Title/Indian_Rupee_symbol.png"
						width="10px" height="10px"> 25000.00
				</p>
				<form action="addcart.jsp">
					<input type="submit" value="Add To Cart" />
				</form>
				<form action="wishlist.jsp">
					<input type="submit" value="Add To Wish List" />
				</form>
			</div>
			<div class="col-sm-4">
				<img src="images/Doors/d7.jpg" height="250px" width="250px"><br>
				<br>
				<p>
					Product Id : 3006<br>
				</p>
				<p>
					Table Name : Roller door<br>
				</p>
				<p>
					Product Price : <img src="images/Title/Indian_Rupee_symbol.png"
						width="10px" height="10px"> 15000.00
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
				<img src="images/Doors/d8.jpg" height="250px" width="250px"><br>
				<br>
				<p>
					Product Id : 3007<br>
				</p>
				<p>
					Table Name : Hinged door<br>
				</p>
				<p>
					Product Price : <img src="images/Title/Indian_Rupee_symbol.png"
						width="10px" height="10px"> 13000.00
				</p>
				<form action="addcart.jsp">
					<input type="submit" value="Add To Cart" />
				</form>
				<form action="wishlist.jsp">
					<input type="submit" value="Add To Wish List" />
				</form>
			</div>
			<div class="col-sm-3">
				<img src="images/Doors/glassdoor.jpg" height="250px" width="250px"><br>
				<br>
				<p>
					Product Id : 3008<br>
				</p>
				<p>
					Table Name : Glass door<br>
				</p>
				<p>
					Product Price : <img src="images/Title/Indian_Rupee_symbol.png"
						width="10px" height="10px"> 18000.00
				</p>
				<form action="addcart.jsp">
					<input type="submit" value="Add To Cart" />
				</form>
				<form action="wishlist.jsp">
					<input type="submit" value="Add To Wish List" />
				</form>
			</div>
			<div class="col-sm-3">
				<img src="images/Doors/PVCdoor.jpg" height="250px" width="250px"><br>
				<br>
				<p>
					Product Id : 3009<br>
				</p>
				<p>
					Table Name : PVC door<br>
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
				<img src="images/Doors/steeldoor.jpg" height="250px" width="250px"><br>
				<br>
				<p>
					Product Id : 3010<br>
				</p>
				<p>
					Table Name : Steel door<br>
				</p>
				<p>
					Product Price : <img src="images/Title/Indian_Rupee_symbol.png"
						width="10px" height="10px"> 16000.00
				</p>
				<form action="addcart.jsp">
					<input type="submit" value="Add To Cart" />
				</form>
				<form action="wishlist.jsp">
					<input type="submit" value="Add To Wish List" />
				</form>
			</div>
		</div>
	</div>
	<br>
	<br>
</body>
</html>