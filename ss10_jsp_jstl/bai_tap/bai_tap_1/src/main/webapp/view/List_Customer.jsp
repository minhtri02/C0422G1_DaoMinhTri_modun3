<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 28/7/2022
  Time: 1:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <th><h1>Danh sách khách hàng</h1></th>
    </tr>
    <tr>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    <c:forEach var="customemr" items="${list}" varStatus="status">
        <tr>
            <td>${customemr.name}</td>
            <td>${customemr.birtDay}</td>
            <td>${customemr.address}</td>
            <td>${customemr.img}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
