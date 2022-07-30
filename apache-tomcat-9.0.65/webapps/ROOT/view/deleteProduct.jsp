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
</head>
<body>
<form action="/Product?action=delete&id=${id}" method="post">
<fieldset style="width: 350px">
    <legend>Bạn có chắc là muốn xoá sản phẩm ${id} này không</legend>
    <table>
        <tr>
            <td><input type="text" name="deleteResutl"></td>
        </tr>
        <tr>
            <button type="submit" >submit</button>
        </tr>
        <tr></tr>
    </table>
</fieldset>
</form>
<p style="color: red">${resutl}</p>
</body>
</html>
