<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #343a40;
            color: #ffffff;
            padding: 10px 20px;
            border-bottom: 1px solid #dee2e6;
         
        }

        .navbar a {
            color: #ffffff;
            text-decoration: none;
            font-size: 18px;
            margin-right: 20px;
        }

        .container {
            max-width: 400px;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #ffffff;
            }

        .design {
            margin-bottom: 15px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .button {
            text-align: center;
        }

        .btn {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #0056b3;
        }
    </style>
<body>
<nav class="navbar bg-dark border-bottom border-body"
		data-bs-theme="dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Aadhar</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="index.jsp">Home</a></li>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<form action="AttachAddress" method="post" class="container" name ="myForm" onsubmit="return validateForm()">
    <h2>Register Form</h2>

    <div class="design">
        <label for="siNo">SiNo:</label><br>
        <span id="siNoError" style='color: red;'></span>
        <input type="number" name="siNo" id="siNo" placeholder="Enter SiNo" onblur="siNoValidation()">
    </div><br>

    <div class="design">
        <label for="firstName">First Name:</label><br>
        <span id="firstNameError" style='color: red;'></span>
        <input type="text" name="firstName" id="firstName" placeholder="Enter First Name" onblur="firstNameValidation()">
    </div><br>

    <div class="design">
        <label for="lastName">Last Name:</label><br>
        <span id="lastNameError" style='color: red;'></span>
        <input type="text" name="lastName" id="lastName" placeholder="Enter Last Name" onblur="lastNameValidation()">
    </div><br>

    <div class="design">
        <label for="middleName">Middle Name:</label><br>
        <span id="middleNameError" style='color: red;'></span>
        <input type="text" name="middleName" id="middleName" placeholder="Enter Middle Name" onblur="middleNameValidation()">
    </div><br>

    <div class="design">
        <label for="email">Email:</label><br>
        <span id="emailError" style='color: red;'></span>
        <input type="text" name="email" id="email" placeholder="Enter Email" onblur="emailValidation()">
    </div><br>

    <div class="design">
        <label for="gender">Gender:</label><br>
        <span id="genderError" style='color: red;'></span>
        <input type="text" name="gender" id="gender" placeholder="Enter Gender" onblur="genderValidation()">
    </div><br>

    <div class="design">
        <label for="contactNo">Contact No:</label><br>
        <span id="contactNoError" style='color: red;'></span>
        <input type="text" name="contactNo" id="contactNo" placeholder="Enter Contact No" onblur="contactNoValidation()">
    </div><br>

    <div class="design">
        <label for="area">Area:</label><br>
        <span id="areaError" style='color: red;'></span>
        <input type="text" name="area" id="area" placeholder="Enter Area" onblur="areaValidation()">
    </div><br>

    <div class="design">
        <label for="district">District:</label><br>
        <span id="districtError" style='color: red;'></span>
        <select name="district" id="district" onchange="districtValidation()" onkeypress="districtValidation()">
            <option value="Choose...">Choose...</option>
            <option value="Udupi">Udupi</option>
            <option value="Kodagu">Kodagu</option>
            <option value="Dakshina kannada">Dakshina kannada</option>
            <option value="Uttar Kannada">Uttar Kannada</option>
            <option value="Gadag">Gadag</option>
            <option value="Tumkur">Tumkur</option>
        </select>
    </div><br>

    <div class="design">
        <label for="state">State:</label><br>
        <span id="stateError" style='color: red;'></span>
        <select name="state" id="state" onchange="stateValidation()" onkeypress="stateValidation()">
            <option value="Choose...">Choose...</option>
            <option value="Karnataka">Karnataka</option>
            <option value="Kerala">Kerala</option>
            <option value="Andra pradesh">Andra pradesh</option>
            <option value="Utthar pradesh">Utthar pradesh</option>
            <option value="New delhi">New delhi</option>
            <option value="Tamilnadu">Tamilnadu</option>
        </select>
    </div><br>

    <div class="design">
        <label for="pincode">Pincode:</label><br>
        <span id="pincodeError" style='color: red;'></span>
        <input type="number" name="pincode" id="pincode" placeholder="Enter Pincode" onblur="pincodeValidation()">
    </div><br>

    <div class="button">
        <button type="submit" class="btn btn-primary" id="submitButton">Register</button>
    </div>
</form>

<script>
function siNoValidaiton()
{
	var submitButton = document.getElementById("submitButton");

	var siNo = document.getElementById('siNo').value;
console.log(siNo)
	if (siNo>1001 || siNo < 5001) {
		document.getElementById('siNoError').innerHTML='siNo must be between 3 and 20 characters';
		submitButton.setAttribute("disabled" ,"")

	}
	else{
					submitButton.removeAttribute("disabled")

		document.getElementById('siNoError').innerHTML='';

	}
	
}
function firstNameValidaiton()
{
	var submitButton = document.getElementById("submitButton");

	var firstName = document.getElementById('firstName').value;
console.log(firstName)
	if (firstName.length < 3 || firstName.length > 20) {
		document.getElementById('firstNameError').innerHTML='firstName must be between 3 and 20 characters';
		submitButton.setAttribute("disabled" ,"")

	}
	else{
					submitButton.removeAttribute("disabled")

		document.getElementById('firstNameError').innerHTML='';

	}
	
}
function lastNameValidaiton()
{
	var submitButton = document.getElementById("submitButton");

	var lastName = document.getElementById('lastName').value;
console.log(lastName)
	if (lastName.length < 3 || lastName.length > 20) {
		document.getElementById('lastNameError').innerHTML='lastName must be between 3 and 20 characters';
		submitButton.setAttribute("disabled" ,"")

	}
	else{
					submitButton.removeAttribute("disabled")

		document.getElementById('lastNameError').innerHTML='';

	}
	
}
function middleNameValidaiton()
{
	var submitButton = document.getElementById("submitButton");

	var middleName = document.getElementById('middleName').value;
console.log(middleName)
	if (middleName.length < 3 || middleName.length > 20) {
		document.getElementById('middleNameError').innerHTML='middleName must be between 3 and 20 characters';
		submitButton.setAttribute("disabled" ,"")

	}
	else{
					submitButton.removeAttribute("disabled")

		document.getElementById('middleNameError').innerHTML='';

	}
	
}
function emailValidation() {
    var submitButton = document.getElementById("submitButton");

    var email = document.getElementById('email').value;
    console.log(email);

    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    if (!emailRegex.test(email)) {
        document.getElementById('emailError').innerHTML = 'Enter a valid email address';
        submitButton.setAttribute("disabled", "");
    } else {
        submitButton.removeAttribute("disabled");
        document.getElementById('emailError').innerHTML = '';
    }
}
function genderValidation() {
    var submitButton = document.getElementById("submitButton");
    var gender = document.getElementById("gender").value;

    if (gender.length === 0) {
        document.getElementById("genderError").innerHTML = "Gender is required";
        submitButton.setAttribute("disabled", "");
    } else {
        document.getElementById("genderError").innerHTML = "";
        submitButton.removeAttribute("disabled");
    }
}
function contactNoValidation() {
    var submitButton = document.getElementById("submitButton");

    var contactNo = document.getElementById('contactNo').value;
    console.log(contactNo);

    if (!/^\d{10}$/.test(contactNo)) {
        document.getElementById('contactNoError').innerHTML = 'Contact No must be a 10-digit number';
        submitButton.setAttribute("disabled", "");
    } else {
        submitButton.removeAttribute("disabled");
        document.getElementById('contactNoError').innerHTML = '';
    }
}

    function areaValidation() {
        var submitButton = document.getElementById("submitButton");
        var area = document.getElementById('area').value;

        if (area.length < 3 || area.length > 20) {
            document.getElementById('areaError').innerHTML = 'Area must be between 3 and 20 characters';
            submitButton.setAttribute("disabled", "");
        } else {
            submitButton.removeAttribute("disabled");
            document.getElementById('areaError').innerHTML = '';
        }
    }
    <script>
    function districtValidation() {
        var submitButton = document.getElementById("submitButton");

        var district = document.getElementById('district').value;
        console.log(district);

        if (district === 'Choose...') {
            document.getElementById('districtError').innerHTML = 'Please select a district';
            submitButton.setAttribute("disabled", "");
        } else {
            submitButton.removeAttribute("disabled");
            document.getElementById('districtError').innerHTML = '';
        }
    }
    function stateValidation() {
        var submitButton = document.getElementById("submitButton");
        var state = document.getElementById('state').value;

        if (state === "Choose...") {
            document.getElementById('stateError').innerHTML = 'Please select a state';
            submitButton.setAttribute("disabled", "");
        } else {
            submitButton.removeAttribute("disabled");
            document.getElementById('stateError').innerHTML = '';
        }
    }

    function pincodeValidation() {
        var submitButton = document.getElementById("submitButton");
        var pincode = document.getElementById('pincode').value;

        if (pincode.length !== 6 || isNaN(pincode)) {
            document.getElementById('pincodeError').innerHTML = 'Pincode must be a 6-digit number';
            submitButton.setAttribute("disabled", "");
        } else {
            submitButton.removeAttribute("disabled");
            document.getElementById('pincodeError').innerHTML = '';
        }
    }

    function validateForm() {
		var siNo = document.getElementById('siNo').value;
		var firstName = document.getElementById('firstName').value;
		var lastName = document.getElementById('lastName').value;
		var middleName = document.getElementById('middleName').value;
		var email = document.getElementById('email').value;
		var gender = document.getElementById('gender').value;
		var contactNo = document.getElementById('contactNo').value;
		var area = document.getElementById('area').value;
		var district = document.getElementById('district').value;
		var state = document.getElementById('state').value;
		var pincode = document.getElementById('pincode').value;
		var submitButton = document.getElementById("submitButton");

		
		if (siNo<10 || siNo>5) {
			document.getElementById('siNoError').innerHTML='SINo must be greater than 5 and less than 10';
			return false;
		}
		else{
			document.getElementById('siNoError').innerHTML='';

		}
		
		if (firstName.length < 3 || firstName.length > 20) {
			document.getElementById('firstNameError').innerHTML='First Name must be between 3 and 20 characters';
			return false;
		}
		else{
			document.getElementById('firstNameError').innerHTML='';

		}
		if (lastName.length < 3 || lastName.length > 20) {
			document.getElementById('lastNameError').innerHTML='lastName  must be between 3 and 20 characters';
			return false;
		}
		else{
			document.getElementById('lastNameError').innerHTML='';

		}
		if (middleName.length < 3 || middleName.length > 20) {
			document.getElementById('middleNameError').innerHTML='middleName  must be between 3 and 20 characters';
			return false;
		}
		else{
			document.getElementById('middleNameError').innerHTML='';

		}
		if (email.length < 3 || email.length > 20) {
			document.getElementById('emailError').innerHTML='email  must be between 3 and 20 characters';
			return false;
		}
		else{
			document.getElementById('emailError').innerHTML='';

		}
		if (gender.length < 3 || gender.length > 20) {
			document.getElementById('genderError').innerHTML='gender  must be between 3 and 20 characters';
			return false;
		}
		else{
			document.getElementById('genderError').innerHTML='';

		}
		if (!/^\d{10}$/.test(contactNo)) {
			document.getElementById('contactNoError').innerHTML='contactNoError  must be between 9 and less thhan 10 characters';
			return false;
		}
		else{
			document.getElementById('contactNoError').innerHTML='';

		}
		if (area.length < 3 || area.length > 20) {
			document.getElementById('areaError').innerHTML='area  must be between 3 and 20 characters';
			return false;
		}
		else{
			document.getElementById('areaError').innerHTML='';

		}
		if (district === 'Choose...') {
		      districtError.innerHTML = 'Please select a district .';
		      return false;
		    } else {
		    	districtError.innerHTML = '';
		    }
		if (state === 'Choose...') {
		      stateError.innerHTML = 'Please select a state .';
		      return false;
		    } else {
		      stateError.innerHTML = '';
		    }
		
		
		if (pincode>500000 || pincode > 900000) {
			document.getElementById('pincodeError').innerHTML='pincode  must be between 500000 and 900000 characters';
			return false;
		}
		else{
			document.getElementById('pincodeError').innerHTML='';

		}
		   submitButton.removeAttribute('submitButton');
			return true;
		} 
</script>
</body>
</html>