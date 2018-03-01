<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Furniture Store</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
 <link href="css/registration.css" rel="stylesheet" type="text/css">
<!-- Website CSS style -->
<link rel="stylesheet" type="text/css" href="assets/css/main.css">

<!-- Website Font style -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">

<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Passion+One'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen'
	rel='stylesheet' type='text/css'>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
      
            </ul>
         
        
      </div>
    </div>
  </div>
</nav>    

<br><br><br>
	<div class="container">
	<h1 align="center"><b><i>Payment</i></b></h1><br>
		<div class='row'>
			<div class='col-md-4'></div>
			<div class='col-md-4'>
				<script src='https://js.stripe.com/v2/' type='text/javascript'></script>
				<form action="payment.do" method="get">
					<div style="margin: 0; padding: 0; display: inline">
						<input name="utf8" type="hidden" value="✓" /><input
							name="_method" type="hidden" value="PUT" /><input
							name="authenticity_token" type="hidden"
							value="qLZ9cScer7ZxqulsUWazw4x3cSEzv899SP/7ThPCOV8=" />
					</div>
					
					<div class='form-row'>
						<div class='col-xs-12 form-group required'>
							<label class='control-label'>Name on Card</label> <input
								class='form-control' size='4' type='text' name="cardHolderName" placeholder="Enter The Card Holder Name">
						</div>
					</div>
					<div class='form-row'>
						<div class='col-xs-12 form-group required'>
							<label class='control-label'>Mode Of Payment</label>
							<div class="dropdown">
							
							<select class="form-control" name=modeOfPayment>
		      						<option value="">Select Any One</option>
		        					<option value="Credit Card">Credit Card</option>
		     					    <option value="Debit Card">Debit Card</option>
						    </select>
							
												
													
							</div>

						</div>
					</div>
					<div class='form-row'>
						<div class='col-xs-12 form-group required'>
							<label class='control-label'>Card Type</label> 
								<select class="form-control" name=cardType >
		      						<option value="">Select Any One</option>
		        					<option value="Rupay Platinum Card">Rupay Platinum Card</option>
		     					    <option value="VISA Card">VISA Card</option>
							        <option value="Master Card">Master Card</option>
							        
						     </select>
						</div>
					</div>
					<div class='form-row'>
					
						<div class='col-xs-12 form-group card required'>
							<label class='control-label'>Card Number</label> <input
								autocomplete='off' class='form-control card-number' size='20'
								type='text'  placeholder="Enter The Card Number" name="cardNumber">
						</div>
					</div>
					<div class='form-row'>
						<div class='col-xs-4 form-group cvc required'>
							<label class='control-label'>CVV</label> <input
								autocomplete='off' class='form-control card-cvv'
								placeholder='ex. 311' size='4' type='text' name="cvv">
						</div>
						<div class='col-xs-4 form-group expiration required'>
							<label class='control-label'>Expiration</label> <input
								class='form-control card-expiry-month' placeholder='MM' size='2'
								type='text' name="month">
						</div>
						<div class='col-xs-4 form-group expiration required'>
							<label class='control-label'>&nbsp;</label> <input
								class='form-control card-expiry-year' placeholder='YYYY'
								size='4' type='text' name="year">
						</div>
					</div>

					<div class='form-row'>
						<div class='col-md-12 form-group'>
							<button class='form-control btn btn-primary submit-button'
								type='submit'>Pay</button>
						</div>
					</div>
					</form>
					<div class='form-row'>
						<div class='col-md-12 error form-group hide'>
							<div class='alert-danger alert'>Please correct the errors
								and try again.</div>
						</div>
					</div>
				
			</div>
			<div class='col-md-4'></div>
		</div>
	</div>
</body>
</html>