<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<body>
<h1> Hello ji </h1>

<form action="/createUser" method="post">
 <h1> Sign in</h1>

   <label for="n">First Name</label> <br><input type="text" name="firstName"  placeholder="Enter Your First Name"><br><br>

   <label for="n">Last Name</label><br> <input type="text" name ="lastName"  placeholder="Enter Your Last Name"><br><br>

   <label for="n">E-mail Add</label> <br><input type="text" name="email" placeholder="Enter Your E-mail Add"><br><br>

   <label for="n">Mob.No.</label><br> <input type="number" name="mobile" placeholder="Enter Your Mob.No."><br><br>

<input type="submit" value="save">
<p style = "color:red">${msg}</p>


</form>
</body>
</html>