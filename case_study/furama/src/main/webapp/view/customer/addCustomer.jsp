<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/8/2022
  Time: 3:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">

</head>
<body background="https://img.meta.com.vn/Data/image/2021/09/30/background-la-gi-anh-background-dep-9.png">
<nav class="container-fluid">
    <%@include file="../include/header.jsp" %>
    <nav class="row mt-4">
        <nav class="col-lg-2"></nav>
        <nav class="col-lg-8 d-flex justify-content-center">

            <form class="justify-content-center d-flex" action=""
                  style="border: 1px solid #A9A9A9; border-radius: 20px; width: 100%">
                <fieldset>
                    <legend>Add Customer</legend>
                    <table style="width: 100%" class="table">

                        <tr>
                            <th scope="col">
                                <label>Tên khách hàng</label>
                            </th>
                            <th scope="col">
                                <input type="text">
                            </th>
                        </tr>
                        <tr>
                            <th scope="col">
                                <label>Ngày sinh</label>
                            </th>
                            <th scope="col">
                                <input type="text">
                            </th>

                        </tr>
                        <tr>
                            <th scope="col">
                                <label>Giới tính</label>
                            </th>
                            <th scope="col">
                                <input type="text">
                            </th>
                        </tr>
                        <tr>
                            <th scope="col">
                                <label>Số CMND</label>
                            </th>
                            <th scope="col">
                                <input type="text">
                            </th>
                        </tr>
                        <div>

                        </div>
                        <tr >
                            <th scope="col">
                                <label>Số điện thoại</label>
                            </th>
                            <th scope="col">
                                <input type="text">
                            </th>
                        </tr>
                        <tr >
                            <th scope="col">
                                <label>Email</label>
                            </th>
                            <th scope="col">
                                <input type="text">
                            </th>
                        </tr>
                        <tr >
                            <th scope="col">
                                <label>Loại khách</label>
                            </th>
                            <th scope="col">
                                <input type="text">
                            </th>
                        </tr>
                        <tr >
                            <th scope="col">
                                <label>Địa chỉ</label>
                            </th>
                            <th scope="col">
                                <input type="text">
                            </th>
                        </tr>

                        <tr>
                            <th></th>
                            <th><input class="btn btn-primary" type="submit" value="SAVE"></th>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </nav>
        <nav class="col-lg-2"></nav>
    </nav>
    <%@include file="../include/footer.jsp" %>
</nav>
</body>
<script src="bootstrap/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>

</html>