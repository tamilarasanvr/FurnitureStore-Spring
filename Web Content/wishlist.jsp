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
					<li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>

				</ul>


			</div>
		</div>
	</div>
	</nav>
	<br>
	<br>
	<br>
	<form class="form-horizontal" name="addproduct">
		<fieldset>

			<!-- Form Name -->
			<legend>
				<center>
					<b><i>ADD WISH LIST</i></b>
				</center>
			</legend>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="product_id">PRODUCT ID</label>
				<div class="col-md-4">
					<input id="product_id" name="product_id" placeholder="PRODUCT ID"
						class="form-control input-md" required="" type="text">

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="product_name">PRODUCT NAME</label>
				<div class="col-md-4">
					<input id="product_name" name="product_name"
						placeholder="PRODUCT NAME" class="form-control input-md"
						required="" type="text">

				</div>
			</div>
 
 			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="product_name">PRICE</label>
				<div class="col-md-4">
					<input id="price" name="price"
						placeholder="PRICE" class="form-control input-md"
						required="" type="text">

				</div>
			</div>
			
		
			
				

					<!-- Button -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="singlebutton"></label>
						<div class="col-md-4">
							<button id="singlebutton" name="singlebutton"
								class="btn btn-primary" onclick="formValidation();">Add To Wish List</button>
							
						</div>
					</div>
		</fieldset>
	</form>
	<script >
function formValidation() {
			var productid=document.addproduct.product_id;			
			var productname=document.addproduct.product_name;
	
			var availablequantity=document.addproduct.available_quantity;
			var productweight=document.addproduct.product_weight;
			//var stockdate=document.addproduct.stock_date;
					
			

			if (productid_validation(productid)) {
				if (productname_validation(productname)) {
	
						if (availablequantity_validation(availablequantity)) {
							if (productweight_validation(productweight)) {
			

			

							}
						}
					}
				}
			
			return false;

		}

		function productid_validation(productid) {
			var letters = /^[0-9]{5}$/;
			if (productid.value.match(letters)) {
				return true;

			} else {
				alert('Product Id Must Be Numberic Value');
				productid.focus();
				return false;
			}
		}
		
		function productname_validation(productname) {
			var letters = /^[a-zA-Z]{5,20}$/;
			if (productname.value.match(letters)) {
				return true;

			} else {
				alert('Product Name must have alphabets characters only');
				productname.focus();
				return false;
			}
		}
		
		function availablequantity_validation(availablequantity) {
			var letters = /^[0-9]{1,5}$/;
			if ((letters>0) && (availablequantity.value.match(letters))) {
				return true;

			} else {
				alert('Available Quantity must have numberic only');
				availablequantity.focus();
				return false;
			}
		}

		function productweight_validation(productweight) {
			var letters = /^[0-9]+[.]?kg$/;
			if (street.value.match(letters)) {
				return true;

			} else {
				alert('Street Name must have alphabets characters only');
				street.focus();
				return false;
			}
		}

	
		
		
	</script>



</body>
</html>