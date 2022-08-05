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
        <style>
            body{
                background-position: bottom right;
                background-attachment: fixed;
                background-repeat: no-repeat;
            }
        </style>
</head>
<body background="https://img.meta.com.vn/Data/image/2021/09/30/background-la-gi-anh-background-dep-9.png">
<div class="container-fluid">
    <%@include file="include/header.jsp"%>
    <nav class="row">
        <nav class="col-lg-12 d-flex justify-content-center">
            <video autoplay loop muted width="70%">
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
    <%@include file="include/footer.jsp"%>

</div>
<script src="bootstrap/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</body>
</html>
