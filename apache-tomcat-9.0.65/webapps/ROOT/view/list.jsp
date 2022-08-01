<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/8/2022
  Time: 3:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<center>
    <a href="/users" style="text-decoration: none ; color: black"><h1>User Management</h1></a>

    <h2>
        <a href="/users?action=create">Add New User</a><br>
    </h2>
    <form action="/users?action=findByCountry" method="post">
        <input type="text" name="country">
        <button type="submit">Search</button>
    </form>
</center>
<div align="center">
    <button type="button" onclick="location.href='/users?action=soft'">SORT</button>
    <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>

        <c:forEach var="user" items="${listUser}">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.country}</td>
                <td>
                    <a href="/users?action=edit&id=${user.id}">Edit</a>
                    <a href="/users?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <p style="color: red">${error}</p>
</div>
</body>
</html>
