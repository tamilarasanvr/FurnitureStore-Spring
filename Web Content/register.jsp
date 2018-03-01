<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Furniture Store</title>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="tamil.css">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.carousel-inner>.item>img,.carousel-inner>.item>a>img {
	width: 35%;
	margin: auto;
}

.label {
	color: #ffff66;
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
					<li><a href="login.jsp"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				
				</ul>
			</div>
		</div>
	</div>
	</nav>
	<br>
	<div class="container">

		<div class="row main">
			<div class="main-login main-center">
				<form class="form-horizontal" method="get" action="registerUser.do"
					name="register">
					<h1 align="center">
						<i><b>Registration</b></i>
					</h1>

					<div class="form-group">
						<label for="username" class="cols-sm-2 control-label">Username
						</label> <label class="label">Ex:
							Tamil</label><br>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-user" aria-hidden="true"></i></span> <input
									type="text" class="form-control" name="userName" id="userName"
									placeholder="Enter your Username" required />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="username" class="cols-sm-2 control-label">Door
							No</label> <label class="label">Ex:
							52 , Ex:52/2 , Ex: 52/2a </label><br>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-home" aria-hidden="true"></i></span> <input
									type="text" class="form-control" name="doorNo" id="doorNo"
									placeholder="Enter your Door No" required />
							</div>
						</div>
					</div>


					<div class="form-group">
						<label for="username" class="cols-sm-2 control-label">Street
							Name</label> <label class="label"><font-color =red>Ex:
							P.N.Palayam, Ex: p.n.palayam </font-color></label><br>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-road" aria-hidden="true"></i></span> <input
									type="text" class="form-control" name="street"
									id="street" placeholder="Enter your Street Name" required />
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-6">
							<label for="username" class="cols-sm-2 control-label">State</label>
							<select class="form-control form-group"
								onchange="print_state('state',this.selectedIndex);" id="country"
								name="state"></select>
						</div>

						<div class="col-sm-6">
							<label>City*</label> <select class="form-control form-group"
								name="city" id="state"></select>
							<script src="state.js">
								
							</script>
						</div>




					</div>


					<div class="form-group">
						<label for="username" class="cols-sm-2 control-label">Pin
							Code</label> <label class="label"><font-color =red>Ex:
							641037 </font-color></label><br>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-pushpin"></i></span> <input type="text"
									class="form-control" name="pinCode" id="pinCode"
									placeholder="Enter your Pin Code" required />



							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="username" class="cols-sm-2 control-label">Phone
							No</label> <label class="label"><font-color =red>Ex:
							9715000000,Ex: 7373123456,Ex: 8811223300 </font-color></label><br>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-phone"></i></span> <input type="tel"
									class="form-control" name="phone" id="phone"
									pattern="^[987]{1}[0-9]{9}$" placeholder="Enter your Phone No"
									required />



							</div>
						</div>
					</div>


					<div class="form-group">
						<label for="username" class="cols-sm-2 control-label">Email
							Id</label> <label class="label"><font-color =red>Ex:
							tamil@gmail.com,Ex: tamil@yahoo.com </font-color></label><br>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-envelope" aria-hidden="true"></i></span> <input
									type="email" class="form-control"
									pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
									name="emailId" id="emailId" placeholder="Enter your Email Id"
									required />
							</div>
						</div>
					</div>





					<div class="form-group">
						<label for="password" class="cols-sm-2 control-label">Password</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-eye-open" aria-hidden="true"></i></span> <input
									type="password" class="form-control" name="password" 
									id="password" placeholder="Enter your Password" required>
							</div>
						</div>
					</div>

					<div class="form-group ">
						<input type="submit" class="btn btn-info" value="Register"
							onclick="formValidation();" />

					</div>

				</form>
			</div>
		</div>
	</div>

	<script>
		function formValidation() {
			var uname = document.register.userName;
			var door = document.register.doorNo;
			var street = document.register.street;
			var pin = document.register.pinCode;
			var passid = document.register.password;

			if (allLetter(uname)) {
				if (door_validation(door)) {
					if (street_validation(street)) {
						if (pin_validation(pin)) {
							/* if (passid_validation(passid, 7, 12)) {
								
							}
 */
						}
					}
				}
			}
			return false;
		}

		function allLetter(uname) {
			var letters = /^^[A-Z][a-zA-Z]{4,20}$/;
			if (uname.value.match(letters)) {
				return true;

			} else {
				alert('Username must 5 to 20 have alphabet characters only');
				uname.focus();
				return false;
			}
		}

		function door_validation(door) {
			var letters = /^[0-9a-zA-Z/,]{1,10}$/;
			if (door.value.match(letters)) {
				return true;

			} else {
				alert('Door no must have alphanumeric characters only');
				door.focus();
				return false;
			}
		}

		function street_validation(street) {
			var letters = /^[a-zA-Z., ]{5,20}$/;
			if (street.value.match(letters)) {
				return true;

			} else {
				alert('Street Name must have alphabets characters only');
				street.focus();
				return false;
			}
		}

		function pin_validation(pin) {
			var pincode = /^\(?([0-9]{6})$/;
			if ((pin.value.match(pincode))) {
				return true;

			} else {
				alert('Pin code must have numberic only');
				pin.focus();
				return false;

			}

			function passid_validation(passid, mx, my) {
				var passid_len = passid.value.length;
				if (passid_len == 0 || passid_len >= my || passid_len < mx) {
					alert("Password should not be empty / length be between "
							+ mx + " to " + my);
					passid.focus();
					return false;
				} else {
					alert('Form Succesfully Submitted');
					return true;
				}
			}
		}
	</script>
</body>
</html>