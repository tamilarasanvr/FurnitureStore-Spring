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
		 <div class="collapse navbar-collapse" id="myNavbar" >
        <ul class="nav navbar-nav navbar-left"  >
          <li><a href="index.jsp">Home</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right"  >
   <div class="dropdown" >
    <button class="btn btn-default dropdown-toggle"  type="button" id="menu1" data-toggle="dropdown" style="color: white;border: none; background-color: black">User Operation
    <span class="caret"></span></button>
    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
      <li role="presentation"><a role="menuitem" tabindex="-1" href="view.do">View User</a></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="addCartList.jsp">Search User</a></li>
      <li role="presentation" class="divider"></li> 
      <li role="presentation"><a role="menuitem" tabindex="-1" href="index.jsp">Log Out</a></li>
      
    </ul>
  
  </div>
  
           </ul>
           <ul class="nav navbar-nav navbar-right"  >
   <div class="dropdown" >
    <button class="btn btn-default dropdown-toggle"  type="button" id="menu1" data-toggle="dropdown" style="color: white;border: none; background-color: black">Product Operation
    <span class="caret"></span></button>
    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
      <li role="presentation"><a role="menuitem" tabindex="-1" href="addpro.jsp">Add Product</a></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="viewProduct.do">View Product</a></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Search Product</a></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Update Product</a></li>
       <li role="presentation" class="divider"></li> 
      <li role="presentation"><a role="menuitem" tabindex="-1" href="index.jsp">Log Out</a></li>
      
    </ul>
  
  </div>
  
           </ul>
            
		</div>
		
	</div>
	</nav>
	<br><br><br><br><br><br>
	



<%-- <h4 Style="text-align:right;color:black">Welcome  ${Status} !</h4>
 --%>
	
	<div class="row">
    <div class="col-sm-6">
   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="image" align="right" width="200" height="180" value="submit" src="images/Title/addproduct.jpg" onclick="document.location='addpro.jsp'">
</div>
 <form action="view.do" method="get">
<div class="col-sm-6">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="image" width="200" height="180" value="submit" src="images/Title/viewusers.jpg" onclick="document.location='ViewUsers.jsp'">
</div>
</form>
</div><br>
<div class="row">
<form action="viewProduct.do" method="get"> 
<div class="col-sm-6">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="image" align="right" width="200" height="180" value="submit" src="images/Title/viewproduct.jpg" onclick="document.location='viewproductlist.jsp'">
</div>
 </form> 
 <!-- <form action="updateProduct.do" method="get"> 
<div class="col-sm-6">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="image" align="right" width="200" height="180" value="submit" src="images/Title/updateproduct.jpg" onclick="document.location='viewproductlist.jsp'">
</div>
 </form>  -->

</div>

</body>
</html>