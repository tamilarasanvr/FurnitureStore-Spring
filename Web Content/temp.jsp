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

<style>
.carousel-inner>.item>img,.carousel-inner>.item>a>img {
	width: 30%;
	margin: auto;
}

body {
	position: relative;
	background-color: #ffd480;
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
		<div class="row">
			<div class="col-xs-1"></div>
			<div class="col-xs-10">
				<div class="box">
					<div class="row">
						<div class="col-sm-6">
							<h2 Style="text-align: left">Product List</h2>
							<hr>
						</div>
						<br>
						<div class="col-sm-6">
						<form action="searchProduct.do" method="get">
									<span class="glyphicon glyphicon-search"></span> <input
									type="text" name="productCategory" placeholder="Enter The PRODUCT CATEGORY" /> <input
									type="submit" value="search">
						
						</form>
					
						</div>
						<div class="col-sm-6" align="center">
						<form action="updateProduct.do" method="get">
						<input type="text" name="productId" placeholder="Enter The PRODUCT Id" /> 
						<input type="submit" value="Update" href="#section2">
						
						</form>
						</div>
						
						<br><br><br><br><br><br>
						<div align="center" >
							<table border="2" width="70%"  align="center"  cellpadding="50">
								<tr>
									<th>Product Id</th>
									<th>Product Category</th>
									<th>Product Name</th>
									<th>Price</th>
									<th>Quentity</th>
									
								</tr>
								<c:forEach var="ProductBean" items="${list}">
								
									<tr>
										<td><c:out value="${ProductBean.productId}" /></td>
										<td><c:out value="${ProductBean.productCategory}" /></td>
										<td><c:out value="${ProductBean.productName}" /></td>
										<td><c:out value="${ProductBean.price}" /></td>
										<td><c:out value="${ProductBean.quentity}" /></td>
										
									</tr>
								</c:forEach>
								
							</table>
						</div>
						
					<%--  <div align="center">
						
						 <c:forEach var="ProductBean" items="${updatelist}"> 
						<form action="update.do" method="post">
						Product Id <input type="text" name="productId" value="${updatelist.productId}" readonly="readonly"><br>
						Product Category <input type="text" name="productCategory" value="${updatelist.productCategory}"  readonly="readonly"><br>
						
						Product Name <input type="text" name="productName" value="${updatelist.productName} "readonly="readonly" ><br>
						Product Price <input type="text" name="price" value="${updatelist.price}"><br>
						Product Quentity <input type="text" name="quentity" value="${updatelist.quentity}" ><br><br> 
						
						<input type="submit" value="Update">
						</form> --%>
						
					<%--  	</c:forEach> --%> 
						
						
						
					</div> 
				</div>
				<div class="col-xs-1"></div>
			</div>
		</div>
	</div>
</div>

 <div id="section2" class="container-fluid">

						<div align="center">
						 <c:forEach var="ProductBean" items="${updatelist}"> 
						<form action="update.do" method="post">
						Product Id <input type="text" name="productId" value="${updatelist.productId}" readonly="readonly"><br>
						Product Category <input type="text" name="productCategory" value="${updatelist.productCategory}"  readonly="readonly"><br>
						
						Product Name <input type="text" name="productName" value="${updatelist.productName} "readonly="readonly" ><br>
						Product Price <input type="text" name="price" value="${updatelist.price}"><br>
						Product Quentity <input type="text" name="quentity" value="${updatelist.quentity}" ><br><br> 
						
						<input type="submit" value="Update">
						</form>
						
						</c:forEach> 
					</div>
</div> 
</body>
</html>