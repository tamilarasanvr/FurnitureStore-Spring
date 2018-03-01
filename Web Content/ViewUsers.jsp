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
							<h2 Style="text-align: left">User List</h2>
							<hr>
						</div>
						<br>
						<form action="search.do" method="get">
							<div class="col-sm-6">
								<span class="glyphicon glyphicon-search"></span> <input
									type="text" name="userName" placeholder="Enter The User Name" /> <input
									type="submit" value="search">

							</div>
						</form>
						<div align="center">
							<table border="1" cellpadding="5">
								<tr>
									<th>User Id</th>
									<th>Name</th>
									<th>Door No</th>
									<th>Street Name</th>
									<th>State</th>
									<th>City</th>
									<th>Pin Code</th>
									<th>Phone No</th>
									<th>E-Mail Id</th>
									<th>Password</th>
								</tr>
								<c:forEach var="UserBean" items="${list}">
									<tr>
										<td><c:out value="${UserBean.userId}" /></td>
										<td><c:out value="${UserBean.userName}" /></td>
										<td><c:out value="${UserBean.doorNo}" /></td>
										<td><c:out value="${UserBean.street}" /></td>
										<td><c:out value="${UserBean.state}" /></td>
										<td><c:out value="${UserBean.city}" /></td>
										<td><c:out value="${UserBean.pinCode}" /></td>
										<td><c:out value="${UserBean.phone}" /></td>
										<td><c:out value="${UserBean.emailId}" /></td>
										<td><c:out value="${UserBean.password}" /></td>

									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
				<div class="col-xs-1"></div>
			</div>
		</div>
	</div><br><br>
					<div class="col-md-12" align="center">
							<a href="admin.jsp" type="submit" id="singlebutton" name="singlebutton"
								class="btn btn-primary">Back</a>
						</div>
</body>
</html>