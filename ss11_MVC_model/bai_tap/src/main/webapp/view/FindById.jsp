<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 30/7/2022
  Time: 11:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<fieldset style="width: 350px">
    <legend>Chi tiết sản phẩm</legend>
    <table>
        <tr>
            <th>Mã sản phẩm: </th>
            <td><p>${product.id}</p></td>

        </tr>
        <tr>
            <th>Tên sản phẩm: </th>
            <td><p>${product.name}</p></td>
        </tr>
        <tr>
            <th>Giá sản phẩm: </th>
            <td><p>${product.price}</p></td>

        </tr>
        <tr>
            <th>Mô tả sản phẩm: </th>
            <td><p>${product.describe}</p></td>
        </tr>
        <tr>
            <th>Nơi sản xuất sản phẩm: </th>
            <td>
                <p>${product.producer}</p>
            </td>
        </tr>
        <tr>
            <td colspan="2"><a href="/Product">Quay về danh sách sản phẩm</a></td>
        </tr>
    </table>
</fieldset>
</body>
</html>
