<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/8/2022
  Time: 11:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">

</head>
<body>
<%@include file="../include/header.jsp"%>>
<nav class="row" id="bodyEditService">
    <nav class="col-lg-2"></nav>
    <nav class="col-lg-8 d-flex justify-content-center">

        <form class="justify-content-center d-flex" action="" style="border: 1px solid #A9A9A9; border-radius: 20px; width: 80%">
            <fieldset>
                <legend>Edit Service</legend>
                <table style="width: 100%" class="table">
                    <tr>
                        <th scope="col" colspan="2">
                            <select onchange=changeService(this.value) >
                                <option value="none">chọn loại dịch vụ</option>
                                <option value="villa">Villa</option>
                                <option value="home">Home</option>
                                <option value="room">Room</option>
                            </select>
                        </th>
                    </tr>
                    <tr>
                        <th scope="col">
                            <label >Tên dịch vụ</label>
                        </th >
                        <th scope="col">
                            <input type="text">
                        </th>
                    </tr>
                    <tr>
                        <th scope="col">
                            <label >Diện tích sử dụng</label>
                        </th>
                        <th scope="col">
                            <input type="text">
                        </th>

                    </tr>
                    <tr>
                        <th scope="col">
                            <label >Chi phí thuê</label>
                        </th>
                        <th scope="col">
                            <input type="text">
                        </th>
                    </tr>
                    <tr>
                        <th scope="col">
                            <label>Số người tối đa</label>
                        </th>
                        <th scope="col">
                            <input type="text">
                        </th>
                    </tr>
                    <div>

                    </div>
                    <tr id="s1" style="display: none">
                        <th scope="col">
                            <label>Tiêu chuẩn phòng</label>
                        </th>
                        <th scope="col">
                            <input type="text">
                        </th>
                    </tr>
                    <tr id="s2" style="display: none">
                        <th scope="col">
                            <label >Mô tả tiện nghi khác</label>
                        </th>
                        <th scope="col">
                            <input type="text">
                        </th>
                    </tr>
                    <tr id="s3" style="display: none">
                        <th scope="col">
                            <label >Diện tích hồ bơi</label>
                        </th>
                        <th scope="col">
                            <input type="text">
                        </th>
                    </tr>
                    <tr id="s4" style="display: none">
                        <th scope="col">
                            <label>Số tầng</label>
                        </th>
                        <th scope="col">
                            <input type="text">
                        </th>
                    </tr>
                    <tr id="s5" style="display: none">
                        <th scope="col">
                            <label >Dịch vụ đi kèm</label>
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
<%@include file="../include/footer.jsp"%>
</body>
<script src="bootstrap/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>

</html>
