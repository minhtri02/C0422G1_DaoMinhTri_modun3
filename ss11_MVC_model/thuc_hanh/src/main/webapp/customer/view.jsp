<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 29/7/2022
  Time: 10:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>View customer</title>
</head>
<body>
<h1>Customer details</h1>
<p>
  <a href="/customers">Back to customer list</a>
</p>
<table>
  <tr>
    <td>Name: </td>
    <td>${Customer.name}</td>
  </tr>
  <tr>
    <td>Email: </td>
    <td>${Customer.email}</td>
  </tr>
  <tr>
    <td>Address: </td>
    <td>${Customer.address}</td>
  </tr>
</table>
</body>
</html>
