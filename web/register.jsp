<!DOCTYPE html>
<html lang="en">
<head>
	<title>REGISTRATION</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>


    <div class="container-contact100" style="background-color: #1994ac;">
		

        <div class="wrap-contact100" style="border: 2px solid #3300ff;">
			<div class="contact100-form-title" style="background-image: url(images/bg-01.jpg);">
				<span class="contact100-form-title-1">
					Student Registration Form
				</span>				
			</div>

			<form class="contact100-form validate-form"  action="<%=request.getContextPath()%>/RegisterServlet" method="get">
				<div class="wrap-input100 validate-input" data-validate="Name is required">
					<span class="label-input100">First_Name:</span>
					<input class="input100" type="text" name="Fname" placeholder="Enter First name">
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input" data-validate="Name is required">
					<span class="label-input100">Last_Name:</span>
					<input class="input100" type="text" name="Lname" placeholder="Enter Last name">
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<span class="label-input100">Email:</span>
					<input class="input100" type="text" name="Email" placeholder="Enter email addess">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Phone is required">
					<span class="label-input100">Phone:</span>
					<input class="input100" type="text" name="Mobile" placeholder="Enter phone number">
					<span class="focus-input100"></span>
				</div>
				
                <div class="wrap-input100 validate-input" data-validate="City is required">
					<span class="label-input100">City:</span>
					<input class="input100" type="text" name="City" placeholder="Enter City">
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input" data-validate="Deparment is required">
					<span class="label-input100">Department:</span>
					<input class="input100" type="text" name="Dept" placeholder="Enter Deparment">
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input" data-validate="Roll Number is required">
					<span class="label-input100">Roll_Number:</span>
					<input class="input100" type="text" name="Roll" placeholder="Enter Roll Number">
					<span class="focus-input100"></span>
				</div>
				
				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn">
						<span>
							Submit
							<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
						</span>
					</button>
				</div>
			</form>
		</div>
	</div>



	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
	<script src="js/map-custom.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>

</body>
</html>
