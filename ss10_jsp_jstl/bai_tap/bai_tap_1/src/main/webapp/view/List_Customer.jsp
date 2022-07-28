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
    <style>
        *{
            box-sizing: border-box;
        }
        table td{
            border-top: 1px solid lightsteelblue;
        }
        table{
            width: 100%;
            text-align: center;
        }
    </style>
</head>
<body>
<table >
    <tr>
        <th colspan="4"><h1>Danh sách khách hàng</h1></th>
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
            <td><img width="150px" height="150px" src="${customemr.img}" ></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
