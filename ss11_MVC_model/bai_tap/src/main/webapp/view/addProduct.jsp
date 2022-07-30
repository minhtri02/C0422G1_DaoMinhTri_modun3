<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 29/7/2022
  Time: 4:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>

    </title>
</head>
<body>
<a href="/Product">Quay lại trang danh sách sản phẩm</a>
<form action="/Product?action=add" method="post">
    <fieldset style="width: 350px">
        <table>

            <Legend>CHỨC NĂNG THÊM MỚI</Legend>
            <tr>
                <td><label>Nhập ID sản phẩm:</label></td>
                <td><input type="text" name="id" dataformatas="Nhập Id của bạn"></td>
            </tr>
            <tr>
                <td><label>Nhập Tên sản phẩm:</label></td>
                <td><input type="text" name="name" dataformatas="Nhập tên của sản phẩm"></td>
            </tr>
            <tr>
                <td><label>Nhập Giá sản phẩm:</label></td>
                <td><input type="number" name="price" dataformatas="Nhập giá của sản phẩm"></td>
            </tr>
            <tr>
                <td><label>Nhập mô tả sản phẩm:</label></td>
                <td><input type="text" name="describe" dataformatas="Mô tả về sản phẩm"></td>
            </tr>
            <tr>
                <td><label>Nhập nơi sản xuất:</label></td>
                <td><input type="text" name="producer" dataformatas="Nhập nơi sản xuất"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Add Product"></td>
            </tr>
        </table>
    </fieldset>
</form>
<p style="color: red">${resutl}</p>
</body>
</html>
