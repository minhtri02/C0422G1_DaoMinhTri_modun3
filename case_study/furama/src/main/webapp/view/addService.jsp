<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 4/8/2022
  Time: 11:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">

</head>
<body background="https://img.meta.com.vn/Data/image/2021/09/30/background-la-gi-anh-background-dep-9.png">
<div class="container-fluid">
    <nav class="row" id="thanh_headder">
        <dev class="col-lg-3 position-relative d-flex justify-content-center">
            <img src="https://furamavietnam.com/wp-content/uploads/2018/08/logo.png">
        </dev>
        <dev class="col-lg-6"></dev>
        <dev class="col-lg-3 position-relative">
            <p class="position-absolute top-50 start-50  translate-middle" style="float: right">Đào Minh Trí</p>
        </dev>
    </nav>
    <nav class="row sticky-top " name="thanh_navbar" style="background-color: #046056">
        <nav class="col-lg-3"></nav>
        <nav class="col-lg-6 d-flex justify-content-center">

            <nav class="navbar navbar-expand-lg navbar-light ">
                <div class="container-fluid">
                    <a class="navbar-brand text-light" href="/Furama">Home</a>
                    <%--                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">--%>
                    <%--                            <span class="navbar-toggler-icon"></span>--%>
                    <%--                        </button>--%>
                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link active text-light" aria-current="page" href="#">Employee</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-light" href="#">Customer</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdownMenuLink2"
                                   role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Service
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink2">
                                    <li><a class="dropdown-item" href="/Furama?action=list">List Service</a></li>
                                    <li><a class="dropdown-item" href="#">Add Service</a></li>
                                    <li><a class="dropdown-item" href="#">Edit Service</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdownMenuLink"
                                   role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    ConTract
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <li><a class="dropdown-item" href="#">Action</a></li>
                                    <li><a class="dropdown-item" href="#">Another action</a></li>
                                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </nav>
        <nav class="col-lg-3 d-flex justify-content-center">
            <form class="d-flex justify-content-center mt-2 mb-2">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-success" type="submit">Search</button>
            </form>
        </nav>
    </nav>
    <nav class="row mt-4">
        <nav class="col-lg-2"></nav>
        <nav class="col-lg-8 d-flex justify-content-center">
            <form action="">
                <table class="table">
                    <tr>
                        <th>
                            <label for="">Tên dịch vụ</label>
                        </th>
                        <th>
                            <input type="text">
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label for="">Diện tích sử dụng</label>
                        </th>
                        <th>
                            <input type="text">
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <label for="">Chi phí thuê</label>
                        </th>
                        <th>
                            <input type="text">
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <label for="">Số người tối đa</label>
                        </th>
                        <th>
                            <input type="text">
                        </th>
                    </tr>
                    <tr>
                        <th></th>
                        <th><input class="btn btn-primary" type="submit" value="SAVE"></th>
                    </tr>
                </table>
            </form>
        </nav>
        <nav class="col-lg-2"></nav>
    </nav>
</div>
</body>
</html>
