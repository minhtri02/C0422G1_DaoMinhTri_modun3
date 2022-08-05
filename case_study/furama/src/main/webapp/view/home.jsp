<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 4/8/2022
  Time: 9:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <%--    <style>--%>
    <%--        *{--%>
    <%--            border:  1px solid black;--%>
    <%--        }--%>
    <%--    </style>--%>
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
                    <a class="navbar-brand text-light" href="#">Home</a>
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
                                    <li><a class="dropdown-item" href="/Furama?action=addService">Add Service</a></li>
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
    <nav class="row">
        <nav class="col-lg-12 d-flex justify-content-center">
            <%--                <img width="100%" src="https://furamavietnam.com/wp-content/uploads/2018/11/Vietnam_Danang_Furama_Resort_Exterior_Courtyard-Night.jpg"--%>
            <%--                     alt="home">--%>
            <video autoplay muted width="70%">
                <source src="https://assets.mixkit.co/videos/preview/mixkit-bright-orange-sunset-on-beach-2168-large.mp4">
            </video>
        </nav>
    </nav>
    <nav class="row mt-3 mb-3">
        <nav class="col-lg-3">
            <img height="auto" width="90%"
                 src="https://furamavietnam.com/wp-content/uploads/2018/11/Vietnam_Danang_Furama_Ocean-Studio-Suite.jpg"
                 alt="">
        </nav>
        <nav class="col-lg-3">
            <img height="auto" width="90%"
                 src="https://furamavietnam.com/wp-content/uploads/2018/11/Vietnam_Danang_Furama_Resort_Exterior-Lagoon-Pool.jpg"
                 alt="">
        </nav>
        <nav class="col-lg-3">
            <img height="auto" width="90%"
                 src="https://furamavietnam.com/wp-content/uploads/2018/11/Vietnam_Danang_Furama_Resort_Exterior_Courtyard.jpg"
                 alt="">
        </nav>
        <nav class="col-lg-3">
            <img height="auto" width="90%"
                 src="https://furamavietnam.com/wp-content/uploads/2018/11/Vietnam_Danang_Furama_Ocean-Deluxe-double-bed.jpg"
                 alt="">
        </nav>
    </nav>
    <nav class="row">
        <nav class="col-lg-1"></nav>
        <nav class="col-lg-10">
            <nav class="row mb-4">
                <nav class="col-lg-6">
                    <img width="90%" src="https://furamavietnam.com/wp-content/uploads/2018/07/CULIRARY.jpg" alt="">
                </nav>
                <nav class="col-lg-6 d-flex justify-content-center">
                    <p>CULINARY <br>
                        The resort’s culinary experience features a mixture of the authentic and locally inspired Vietnamese, Asian, Italian and other European cuisines plus the best imported steaks. The resort presents guests with varied gastronomic venues – the hip and breezy bar overlooking the beach, the exclusive Lagoon pool surrounded by a tropical garden, the true Italian flare offered at the Don Cipriani’s, the refined Asian touch at Café Indochine or the authentic central Vietnam cuisine at the Danaksara.</p>
                </nav>
            </nav>
            <nav class="row mb-4">
                <nav class="col-lg-6 d-flex justify-content-center">
                    <p>MEETING & EVENT <br>
                        A well-appointed International Convention Palace with ballrooms can accommodate up to 1,000 people in style, with another ten function rooms for 50 to 300 people each. A variety of cultural-themed parties on the beach or around the lagoon, in the ballrooms or outside the resort, with the surprising arrivals of VIPs from Helicopter landing on the resort’s own Helipad…</p>
                </nav>
                <nav class="col-lg-6">
                    <img width="90%" src="https://furamavietnam.com/wp-content/uploads/2018/10/02.-ICP-ICP_Furama_Danang_-Ball-Room-4.jpg" alt="">
                </nav>
            </nav>
            <nav class="row mb-4">
                <nav class="col-lg-6">
                    <img width="90%" src="https://furamavietnam.com/wp-content/uploads/2018/07/RECREATION.jpg" alt="">
                </nav>
                <nav class="col-lg-6 d-flex justify-content-center">
                    <p>RECREATION <br>
                        A full range of Water Sports will keep you busy. Stop by the Water Sport House where our experienced staff are waiting to assist or train you in the use of any of our equipment.</p>
                </nav>
            </nav>
        </nav>
        <nav class="col-lg-1"></nav>
    </nav>
    <nav class="row " id="thanh_footer" style="background-color: #addccf ">
        <nav class="col-lg-1"></nav>
        <nav class="col-lg-3  justify-content-center" style="background-color: #f3f3f3">
            <h2>Hướng Dẫn Di Chuyển</h2>
            <p>Khu nghỉ dưỡng Furama là cơ sở hàng đầu để khám phá một trong những điểm đến hấp dẫn nhất Châu Á. Chỉ cách Đà Nẵng một quãng lái xe ngắn là bốn Di sản Văn hóa Thế giới được UNESCO công nhận:
            </p>
            <button class="btn btn-outline-success">Xem trên bản đồ ></button>
            <h4>Địa điểm</h4>
            <table class="table fw-light">
                <tr>
                    <th>1.</th>
                    <th>Cố đô huế</th>
                </tr>
                <tr>
                    <th>2.</th>
                    <th>Phố cổ hội an</th>
                </tr>
                <tr>
                    <th>3.</th>
                    <th>Thánh địa mỹ sơn</th>
                </tr>
                <tr>
                    <th>4.</th>
                    <th>Động phong nha</th>
                </tr>
            </table>
        </nav>
        <nav class="col-lg-7 justify-content-center">
            <h2 style="color: #fd7e14">Liên hệ</h2>
            <p><svg style="color: #0c4128" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
            </svg> 103 - 105 Vo Nguyen Giap Street, Khue My Ward, Ngu Hanh Son District, Danang City, Vietnam
                Tel.: 84-236-3847 333/888 * Fax: 84-236-3847 666
                Email: reservation@furamavietnam.com * www.furamavietnam.com GDS Codes: Amadeus-GD DADFUR, Galileo/Apollo-GD 16236, Sabre-GD 032771, Worldspan- GD DADFU</p>
        </nav>
        <nav class="col-lg-1"></nav>
    </nav>
</div>
<script src="bootstrap/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</body>
</html>
