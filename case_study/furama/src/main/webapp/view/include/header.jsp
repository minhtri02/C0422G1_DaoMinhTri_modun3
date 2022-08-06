<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/8/2022
  Time: 1:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <style>
        body{
            background-position: bottom right;
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-size: 100%;
        }
    </style>
</head>
<body background="https://img.meta.com.vn/Data/image/2021/09/30/background-la-gi-anh-background-dep-9.png">
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
                <a class="navbar-brand text-light" href="/service">Home</a>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-light" href="#"
                               role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Employee
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink2">
                                <li><a class="dropdown-item" href="/employee?action=showListEmployee">List employee</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-light" href="#"
                               role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Customer
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink2">
                                <li><a class="dropdown-item" href="/customer?action=showListCustomer">List Customer</a></li>
                                <li><a class="dropdown-item" href="/customer?action=showAddCustomer">Add Customer</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdownMenuLink2"
                               role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Service
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink2">
                                <li><a class="dropdown-item" href="/service?action=showListService">List Service</a></li>
                                <li><a class="dropdown-item" href="/service?action=showAddService">Add Service</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdownMenuLink"
                               role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                ConTract
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <li><a class="dropdown-item" href="/contract?action=showListContract">List Contract</a></li>
                                <li><a class="dropdown-item" href="/contract?action=showAddContract">Add ConTract</a></li>
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
</body>
<script src="bootstrap/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>

</html>
