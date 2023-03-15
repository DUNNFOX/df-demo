<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>



    </head>
    <style>
        .tbl{
            margin-left: 150px;
            border: 3px dashed gray;
            overflow-x: scroll;
            width: auto;
            height: 300px;
        }
    </style>

<body>
    <h1> Hello ji </h1>
    <div style="border:2px solid blue; padding: 2px;display: flex;">
        <div style="border:2px solid black ; padding: 2px;">
            <form action="/createUser" method="post">
                <h1> Sign in</h1>
<input type="hidden" name="id" value="${id}">
                <label >First Name</label> <br><input type="text" name="firstName"
                    placeholder="Enter Your First Name" value="${student.firstName}"><br><br>

                <label>Last Name</label><br> <input type="text" name="lastName"
                    placeholder="Enter Your Last Name" value="${student.lastName}"><br><br>

                <label>E-mail Add</label> <br><input type="text" name="email"
                    placeholder="Enter Your E-mail Add"  value="${student.email}"><br><br>

                <label>Mob No.</label><br> <input type="number" name="mobile"
                    placeholder="Enter Your Mob.No." value="${student.mobile}"><br><br>

                <input type="submit" value="save">
                <input type="button" value="delete">
            </form>
            <p style="color:red">${msg}</p>
        </div>
        <div class="tbl">
            <table border="">
                <tr>
                    <td>id</td>
                    <td>First Name</td>
                    <td>Last Name</td>
                    <td>mobile</td>
                    <td>email</td>
                    <td>update/delete</td>
                </tr>


                 <c:forEach items="${users}" var="user">
                 <tr>
                 <td>${user.id}</td>
                 <td>${user.firstName}</td>
                   <td>${user.lastName}</td>
                     <td>${user.mobile}</td>
                     <td>${user.email}</td>
                     <td>
                     <form action="/deleteStudent" method="post">

                 <input type="hidden" name="id"value="${user.id}">
                     <input type="submit" value = "delete">
                     </form>
                     </td>

                     <td>
                         <form action="/updateStudent" method="post">

                             <input type="hidden" name="id"value="${user.id}">
                             <input type="submit" value = "edit">
                         </form>
                     </td>
                 </tr>
                    </c:forEach>
            </table>
        </div>
    </div>

</body>

</html>l>