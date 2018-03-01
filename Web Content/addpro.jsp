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
				</ul>


			</div>
		</div>
	</div>
	</nav>
	<br>
	<br>
	<br>
	<form class="form-horizontal" name="addproduct" action="addProduct.do"
		method="get">
		<fieldset>

			<!-- Form Name -->
			<legend>
				<center>
					<b><i>ADD PRODUCTS</i></b>
				</center>
			</legend>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="product_id">PRODUCT
					CATEGORY</label>
				<div class="col-md-4">
					<input id="product_id" name="productCategory"
						placeholder="PRODUCT CATEGORY" class="form-control input-md"
						required="" type="text">

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="product_name">PRODUCT
					NAME</label>
				<div class="col-md-4">
					<input id="product_name" name="productName"
						placeholder="PRODUCT NAME" class="form-control input-md"
						required="" type="text">

				</div>
			</div>



			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="product_name">PRICE</label>
				<div class="col-md-4">
					<input id="price" name="price" placeholder="PRICE"
						class="form-control input-md" required="" type="text">

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="product_name">QUENTITY</label>
				<div class="col-md-4">
					<input id="quentity" name="quentity" placeholder="QUENTITY"
						class="form-control input-md" required="" type="text">

				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-6" align="right">
					<input type="file" name="i_file" id="i_file" tabindex="6" value=""
						required></input>
				</div>

			</div>
			<div class="form-group">
				<div class="row">
					<div class="col-sm-6">
						<img id="up" src="" width="200" style="display: none;" />
					</div>
					<div class="col-sm-6">
						<input type="hidden" id="myField" name="image"
							value="resources/images/" class="form-control" />
					</div>
				</div>
			</div>

			<!-- Button -->
			<div class="form-group" align="right">

				<div class="col-md-4">
					<button id="singlebutton" name="singlebutton"
						class="btn btn-primary">Add</button>
				</div>
				<div class="col-md-4" >
							<a href="admin.jsp" type="submit" id="singlebutton" name="singlebutton"
								class="btn btn-primary">Back</a>
						</div>
			</div>
		</fieldset>
	</form>

	<script>
		$('#i_file').change(
				function(event) {
					var tmppath = URL.createObjectURL(event.target.files[0]);
					$("#up").fadeIn("fast").attr('src',
							URL.createObjectURL(event.target.files[0]));
				});
		document.getElementById('i_file').onchange = uploadOnChange;
		function uploadOnChange() {
			var filename = this.value;
			var lastIndex = filename.lastIndexOf("\\");
			if (lastIndex >= 0) {
				filename = filename.substring(lastIndex + 1);
			}
			document.getElementById('myField').value = document
					.getElementById('myField').value
					+ filename;
		}
		$(function() {
			$('#i_file').click(function(e) {
				document.getElementById('myField').value = "resources/images/";
			});
		});

		/* function formValidation() {
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
			var letters = /^[A-Za-z]+[0-9]{2,10}$/;
			if (productid.value.match(letters)) {
				return true;

			} else {
				alert('Product Id Must Start With Alphabet And Have Numbers');
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

		 */
	</script>



</body>
</html>