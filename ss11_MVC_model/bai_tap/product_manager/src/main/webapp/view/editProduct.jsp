<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 30/7/2022
  Time: 10:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>

    </title>
    <style>
        input {
            width: 100px;
        }
    </style>
</head>
<body>
<%--<a href="/Product">Quay lại trang danh sách sản phẩm</a><br>--%>
<form action="/Product?action=edit" method="post">
    <fieldset style="width: 350px">
        <legend>CHỨC NĂNG CẬP NHẬT SẢN PHẨM</legend>
        <table>
            <tr>
                <td><label>Mã sản phẩm:</label></td>
                <td><input type="text" value="${id}" name="id"></td>
            </tr>
            <tr>
                <td><label>Tên sản phẩm: </label></td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td><label>Giá sản phẩm: </label></td>
                <td><input type="number" name="price"></td>
            </tr>
            <tr>
                <td><label>Mô tả sản phẩm: </label></td>
                <td><input type="text" name="describe"></td>
            </tr>
            <tr>
                <td><label>Nơi sản xuất: </label></td>
                <td><input type="text" name="producer"></td>
            </tr>
            <tr>
                <td><input type="submit"></td>
                <td><p>${kq}</p></td>
            </tr>
        </table>
    </fieldset>
</form>
<br>
<button type="button" onclick="location.href='/Product';">< Back to home</button>
</body>
</html>
