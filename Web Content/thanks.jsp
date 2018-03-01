<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Furniture Store</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 30%;
      margin: auto;
  }
  body {
      position: relative; 
      background-color: #ffd480;
   
  }
  #section1 {padding-top:50px;height:650px;color: #fff; background-color: #1E88E5;}
  #section2 {padding-top:50px;height:650px;color: #fff; background-color: #1E88E5;}
  #section3 {padding-top:50px;height:650px;color: #fff; background-color: #1E88E5;}
 
  </style>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50"> 

<nav class="navbar navbar-inverse navbar-fixed-top"  >
  <div class="container-fluid">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar" >
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Furniture Store</a>
    </div>
    <div class="nav navbar-nav navbar-right">
      <div class="collapse navbar-collapse" id="myNavbar" >
        <ul class="nav navbar-nav" >
          <li><a href="index.jsp">Home</a></li>
          <li><a href="Product.jsp">Product</a></li>
          <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
          <li><a href="addcart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> AddCart</a></li>
            </ul>
         
        
      </div>
    </div>
  </div>
</nav>    

<br><br><br>
<h1 align="center"><b><i>Thank You For Visiting ! </i></b></h1>
</body>
</html>