<!DOCTYPE html>
<html>
<head>
	<title>User Information Form</title>
	<style>
		form {
			width: 50%;
			margin: auto;
			padding: 20px;
			border: 1px solid #ccc;
			border-radius: 5px;
		}

		label {
			display: block;
			margin-bottom: 10px;
			font-weight: bold;
		}

		input[type="text"], input[type="email"], input[type="tel"], select {
			width: 100%;
			padding: 10px;
			border: 1px solid #ccc;
			border-radius: 5px;
			margin-bottom: 20px;
			font-size: 16px;
		}

		select {
			height: 40px;
		}

		input[type="radio"] {
			margin-right: 10px;
		}

		button[type="submit"] {
			background-color: #4CAF50;
			color: white;
			padding: 10px 20px;
			border: none;
			border-radius: 5px;
			cursor: pointer;
		}

		button[type="submit"]:hover {
			background-color: #3e8e41;
		}
	</style>
</head>
<body>
	<form action="/register" method="post">
		<label for="first-name">First Name:</label>
		<input type="text" id="first-name" name="firstName" required="8">

		<label for="last-name">Last Name:</label>
		<input type="text" id="last-name" name="lastName" required="8">

		<label for="email">Email:</label>
		<input type="email" id="email" name="email" required="20">

		<label for="mobile">Mobile:</label>
		<input type="tel" id="mobile" name="mobile" required="10">

		<label for="gender">Gender:</label>
		<input type="radio" id="male" name="gender" value="male" >

		<label for="male">Male</label>
		<input type="radio" id="female" name="gender" value="female">

		<label for="female">Female</label>
		<input type="radio" id="other" name="gender" value="other">

		<label for="other">Other</label>

		<label for="dob">Date of Birth:</label>
		<input type="date" id="dob" name="dob">

		<label for="address">Address:</label>
		<textarea id="address" name="address" required="20"></textarea>

		<label for="age">Age:</label>
		<input type="number" id="age" name="age" min="0" max="120" required>

		<button type="submit">Submit</button>
	</form>
	 <p style="color:red">${msg}</p>
</body>
</html>