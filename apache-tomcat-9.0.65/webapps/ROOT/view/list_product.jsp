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
    <%--    <link rel="stylesheet" href="bootstrap/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<dev class="container-fluid">
    <nav class="row">
        <dev class="col-lg-2"></dev>
        <dev class="col-lg-8">
            <nav>
                <a href="/Product" style="text-decoration: none"><h1>Danh sách sản phẩm</h1></a>


                <p>${error}</p>
            </nav>

            <button class="btn btn-outline-primary" type="button" onclick="location.href='/Product?action=add';">Thêm
                sản phẩm
            </button>
            <br><br>

            <table border="1" class="table " style="text-align: center">
                <tr>
                    <td colspan="7"><form action="/Product?action=findOfName" method="post">
                        <input type="text" name="name">
                        <input class="btn btn-outline-primary" type="submit" value="Search">
                    </form></td>

                </tr>
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
                            <button class="btn btn-outline-primary" type="button"
                                    onclick="location.href='/Product?action=edit&id=${product.id}';">edit
                            </button>
                        </td>
                        <td>
                                <%--                            <button class="btn btn-outline-primary" type="button" onclick="location.href='/Product?action=delete&id=${product.id}';">--%>
                                <%--                                Delete--%>
                                <%--                            </button>--%>
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                    data-bs-target="#exampleModal-${product.id}">
                                Delete
                            </button>

                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal-${product.id}" tabindex="-1"
                                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content ">
                                        <div class="modal-header">
                                            <h5 class="modal-title text-warning" id="exampleModalLabel">
                                                Notification</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            Do you want to delete name: ${product.name}?
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                                                Close
                                            </button>
                                            <button type="submit" class="btn btn-primary"><a class="text-light"
                                                                                             href="/Product?action=delete&id=${product.id}"
                                                                                             style="text-decoration: none; ">Delete</a>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>

                    </tr>
                </c:forEach>
            </table>
            <br>
        </dev>
        <dev class="col-lg-2"></dev>
    </nav>


</dev>
<%--<script src="webapp/bootstrap/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>--%>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>
</body>
</html>
