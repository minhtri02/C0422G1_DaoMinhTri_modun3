<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 30/7/2022
  Time: 10:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        table tr th,td{
            color: white;
        }
        table tr td button:hover{
            background-color: aqua;
            color: white;
        }
        button{
            background-color: blue; color: white;
        }
    </style>
</head>
<body>
<center>
<form action="/Product?action=delete&id=${id}" method="post">
<fieldset style="width: 500px ; background-color: cadetblue">
    <legend><h2>Bạn có chắc là muốn xoá sản phẩm ${id} này không</h2></legend>
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
            <th><p style="color: yellow">Nhập "yes" or "no"</p></th>
            <td><input type="text" name="deleteResutl"></td>
        </tr>
        <tr>
            <td><br></td>
        </tr>
        <tr>
            <td>
                <button type="submit" >submit</button>
            </td>
            <td>
                <button type="button" onclick="location.href='/Product';" >< Back to home</button>
            </td>
        </tr>
        <tr></tr>
    </table>
</fieldset>
</form>
<p style="color: red">${resutl}</p>
</center>
</body>
</html>
