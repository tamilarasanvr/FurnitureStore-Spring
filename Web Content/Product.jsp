<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Furniture Store</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

  table{
   border: 1px solid black;
    border-collapse: collapse;
	 padding: 100px;  
}
th {
    border: 1px solid black ;
    border-collapse: collapse;
    
	
}
td {
    border: 1px solid black;
    border-collapse: collapse;
        text-align: center;
	color:blue;
	

	
}
.navbar-inverse{
background-color: black;

}
</style>

</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50" bgcolor="#1E88E5">
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
  
      <div class="collapse navbar-collapse" id="myNavbar" >
        <ul class="nav navbar-nav navbar-left"  >
          <li><a href="index.jsp">Home</a></li>
          </ul>
           <ul class="nav navbar-nav navbar-right"  >
           
       
        
    <div class="dropdown" >
    <button class="btn btn-default dropdown-toggle"  type="button" id="menu1" data-toggle="dropdown" style="color: white;border: none; background-color: black">My Account
    <span class="caret"></span></button>
    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
  
    <!--  <form action="viewInfo.do" method="get"> -->
<%-- <input type="text" name="userId" value="${Id}" style="display:none">
<input type="submit" style="align:right" value="MY Account" onclick="document.location='MyAccount.jsp'">
</form> --%>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="viewInfo.do?userId=<%=session.getAttribute("Id")%>">My Profile</a></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="viewCartList.do?userId=<%=session.getAttribute("Id")%>">My CartList</a></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="orderHistory.do?userId=<%=session.getAttribute("Id")%>">My Order History</a></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">My WishList</a></li>
      <li role="presentation" class="divider"></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="index.jsp">Log Out</a></li>
      
    </ul>
  
  </div>
                 
      </ul>  
      </div>
    </div>
 
</nav>    

<br><br><br>
 <%--  <div>
 <form method="get">
<input type="text" name="userId" value="${Id}" style="display:none">
<input type="submit" style="align:right" value="MY Account" >
</form>
</div>  --%>

<!-- <form action="find.do" method="get">
<input type="submit" value="click">
</form>  -->
<!--  
 <div>
<form action="viewCartList.do" method="get">
<input type="text" name="productId" style="display">
<input type="submit" style="align:right" value="CartList" >
</form>
</div> 
 -->
<h4 Style="text-align:right;color:black">Welcome  ${Status} !</h4>
<h4 Style="text-align:right;color:black">Welcome  ${Id }!</h4>

<!-- <a href="beds.jsp">click</a> -->

<h1 align="center"><b><i>Product Details</i></b></h1>
<br>

 

<MARQUEE hspace="10px";>
<p>News :</p>
</MARQUEE>
<br>
<br>
 <div class="row">
 <form action="findBed.do" method="get">
    <div class="col-sm-4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="image" width="200" height="180" value="submit" src="images/Title/titlebed.jpg"   onclick="document.location='beds.jsp'">
</div>
</form>
<form action="findChair.do" method="get">
 <div class="col-sm-4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="image" width="200" height="180" value="submit" src="images/Title/titlechair.jpg" onclick="document.location='Chairs.jsp'"  >
</div>
</form>
<form action="findDoor.do" method="get">
 <div class="col-sm-4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="image" width="200" height="180" value="submit" src="images/Title/titledoor.jpg" onclick="document.location='Doors.jsp'" ><br><br><br><br>
</div>
</form>
</div>
<div class="row">
<form action="findTable.do" method="get">
    <div class="col-sm-6">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="image" width="200" height="180" value="submit" src="images/Title/titletable.jpg" onclick="document.location='Tables.jsp'">
</div>
</form>
<form action="findTvstand.do" method="get">
    <div class="col-sm-6">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="image" value="submit" src="images/Title/titletvstand.jpg" width="200" height="180" onclick="document.location='Tvstands.jsp'">
</div>
</form>
</div>
</body>
</html>