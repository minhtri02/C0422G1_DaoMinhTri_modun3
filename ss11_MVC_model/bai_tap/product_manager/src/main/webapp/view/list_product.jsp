<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 29/7/2022
  Time: 3:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet"
          href="ss8_bootstrap/bai_tap/bootstrap/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
</head>
<body>
<nav>
    <a href="/Product" style="text-decoration: none"><h1>Danh sách sản phẩm</h1></a>
    <form action="/Product?action=findOfName" method="post">
        <input type="text" name="name">
        <input type="submit" value="Search">
    </form>

    <p>${error}</p>
</nav>

<%--<a href="/Product?action=add">Thêm sản phẩm</a>--%>
<button type="button" onclick="location.href='/Product?action=add';">Thêm sản phẩm</button>
<br><br>

<table border="1" class="table table-dark" style="text-align: center">

    <tr>
        <th>STT</th>
        <th>Mã sản phẩm</th>
        <th>Tên sản phẩm</th>
        <th>Giá sản phẩm</th>
        <th>Mô tả sản phẩm</th>
        <th>Nhà sản xuất</th>
    </tr>
    <c:forEach var="product" items="${productList}" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td><a href="/Product?action=findOfId&id=${product.id}">${product.id}</a></td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.describe}</td>
            <td>${product.producer}</td>
            <td>
                    <%--                <a href="/Product?action=edit&id=${product.id}">edit</a>--%>
                <button type="button" onclick="location.href='/Product?action=edit&id=${product.id}';">edit</button>
            </td>
            <td>
<%--                <a href="/Product?action=delete&id=${product.id}" id="delete">delete</a>--%>
                <button type="button" onclick="location.href='/Product?action=delete&id=${product.id}';">Delete</button>
            </td>

        </tr>
    </c:forEach>
</table>
<br>
<%--<a href="/Product?action=findOfName">Tìm sản phẩm theo tên</a>--%>
<%--<form action="/Product?action=findOfName" method="post">--%>
<%--    <fieldset style="width: 350px">--%>
<%--        <legend>Tìm kiếm sản phẩm theo tên</legend>--%>
<%--        <input type="text" name="name">--%>
<%--        <input type="submit">--%>
<%--        <table>--%>
<%--            <tr>--%>
<%--                <th>Mã sản phẩm: </th>--%>
<%--                <td><p>${product.id}</p></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <th>Tên sản phẩm: </th>--%>
<%--                <td><p>${product.name}</p></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <th>Giá sản phẩm: </th>--%>
<%--                <td><p>${product.price}</p></td>--%>

<%--            </tr>--%>
<%--            <tr>--%>
<%--                <th>Mô tả sản phẩm: </th>--%>
<%--                <td><p>${product.describe}</p></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <th>Nơi sản xuất sản phẩm: </th>--%>
<%--                <td>--%>
<%--                    <p>${product.producer}</p>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--&lt;%&ndash;            <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td colspan="2"><a href="/Product">Quay về danh sách sản phẩm</a></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </tr>&ndash;%&gt;--%>
<%--        </table>--%>
<%--    </fieldset>--%>
<%--    <p style="color: red">${error}</p>--%>
<%--</form>--%>

</body>
</html>
