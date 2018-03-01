<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


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
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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


<script language="javascript">
function onLoadSubmit() {
	document.login.submit();
}
</script>


</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50" onload="onLoadSubmit()">

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
					<li><a href="index.jsp"><span
							class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
					<!-- <li><a href="Admin/admin.jsp"><span
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
 
	<p>
	<h1 align="center">
		<b><i>Order List</i></b>
	</h1>
	<br>
	<br>
<h4 Style="text-align:right;color:black">Welcome   <%=session.getAttribute("Id")%>!</h4>
	 
		<div class="container-fluid">

		

			<br>
			<div class="row">

				<c:forEach var="OrderBean" items="${view}">
		<!-- 	 <form action="find.do" method="get" name="login"> -->
			<form action="order.do" method="get" name="login">
					<div class="col-sm-6 col-md-4 col-lg-3 mt-4">
						<div class="w3-card-4 w3-dark-grey"
							style="width: 250px; margin-bottom: 20px;">

							<div class="w3-container w3-center">

							 <img src="${OrderBean.image}" name="image" alt="Avatar" style="width: 80%;height: 150px"><br>
							 <input type="text" value="${OrderBean.image}" name="image" style="display: none">
							 <br>
							 
							<%-- <input type="text" style="color: black" name="userId" value="<%=session.getAttribute("Id")%>"> --%>
							
								<label> Product Id :</label> <input style="color: black"
									type="text" name="productId" value="${OrderBean.productId}"
									readonly="readonly" /> <br>
							
									
									 <label> Product Name : </label>									
								<input style="color: black" type="text" name="productName"
									value="${OrderBean.productName}" readonly="readonly" /> <br>
									
								<label> Product Price : <img
									src="images/Title/Indian_Rupee_symbol.png" width="10px"
									height="10px"></label> <input style="color: black" type="text"
									name="price" value="${OrderBean.price}" readonly="readonly" />
									
								<!-- <label> Quantity :</label> <input style="color: black"
									type="number" name="quantity" min="1"/> <br> -->
									
					 	<label> Quantity : </label> <input style="color: black" type="number" min=1
									name="quantity"  /> 

								<br>
								<div class="w3-section">
									<button  type="submit" style="background-color: black">Order Now</button>
								</div>

								<!-- <div>

									<button formaction="viewCartList.do" style="width: 50px;height: 50px"  type="submit" value="Add To Wish List" ></button>
								</div>  -->
							</div>

						</div>

					</div>
					</form>
				</c:forEach>

			</div>

		
	</div>


</body>
</html>


				