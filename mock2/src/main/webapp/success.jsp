<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style>
.container-fluid{
word-spacing:10px;
}
h3{
font-weight:bold;
color:green;
}

</style>

</body>
<h1><span style='color:red;'>Address details submitted successfully...</h1>
<h3>
SI no: ${siNo}<br>
First Name: ${firstName}<br>
Last Name: ${lastName}<br>
Midddle Name: ${middleName}<br>
Email: ${email};<br>
Gneder: ${gender}<br>
Contact No: ${contactNo}<br>
Area: ${area}<br>
Ditsrict: ${district}<br>
State: ${state}<br>
Pincode :${pincode}
</h3>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>