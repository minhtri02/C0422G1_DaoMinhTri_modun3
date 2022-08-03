<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 30/7/2022
  Time: 11:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/Product?action=findOfName" method="post">
    <fieldset style="width: 350px">
    <legend>Tìm kiếm sản phẩm theo tên</legend>
    <input type="text" name="name">
        <input type="submit">
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
    <p style="color: red">${error}</p>
</form>
</body>
</html>
