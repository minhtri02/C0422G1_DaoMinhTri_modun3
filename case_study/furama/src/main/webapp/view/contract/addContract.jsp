<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/8/2022
  Time: 1:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">

</head>
<body>
<%@include file="../include/header.jsp"%>

<dev class="row">

    <nav class="row mt-4">
        <nav class="col-lg-2"></nav>
        <nav class="col-lg-8 d-flex justify-content-center">

            <form class="justify-content-center d-flex" action=""
                  style="border: 1px solid #A9A9A9; border-radius: 20px; width: 100%">
                <fieldset>
                    <legend>Add Contract</legend>
                    <table style="width: 100%" class="table">

                        <tr>
                            <th scope="col">
                                <label>Ngày bắt đầu</label>
                            </th>
                            <th scope="col">
                                <input type="date">
                            </th>
                        </tr>
                        <tr>
                            <th scope="col">
                                <label>Ngày kết thúc</label>
                            </th>
                            <th scope="col">
                                <input type="date">
                            </th>

                        </tr>
                        <tr>
                            <th scope="col">
                                <label>Tiền gởi</label>
                            </th>
                            <th scope="col">
                                <input type="text">
                            </th>
                        </tr>
                        <tr>
                            <th scope="col">
                                <label>Tổng tiền</label>
                            </th>
                            <th scope="col">
                                <p id="tongTien">0đ</p>
                            </th>
                        </tr>
                        <div>

                        </div>
                        <tr >
                            <th scope="col">
                                <label>Khách hàng thuê dịch vụ</label>
                            </th>
                            <th scope="col">
                                <input type="text">
                            </th>
                        </tr>
                        <tr >
                            <th scope="col">
                                <label>Dịch vụ</label>
                            </th>
                            <th scope="col">
                                <input type="text">
                            </th>
                        </tr>
                        <tr >
                            <th scope="col">
                                <label>dịch vụ đi kèm</label>
                            </th>
                            <th scope="col">
                            <button onclick="chooesDVDK()" type="button" class="btn btn-primary">+</button>
                            </th>
                        </tr>
                        <tr id="s4" style="display: none">
                            <th><button onclick="closeDVDK()"  type="button" class="btn btn-primary">-</button></th>
                        </tr>
                        <tr id="s1" style="display: none">
                            <th scope="col">
                                <input type="checkbox">Ăn sáng
                            </th>
                        </tr>
                        <tr id="s2" style="display: none">
                            <th scope="col">
                                <input type="checkbox">Ăn Trưa
                            </th>
                        </tr>
                        <tr id="s3" style="display: none">
                            <th scope="col">
                                <input type="checkbox">Ăn Tối
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

</dev>

<%@include file="../include/footer.jsp"%>
</body>
<script>
    function chooesDVDK(){
        document.getElementById("s1").style.display="table-row";
        document.getElementById("s2").style.display="table-row";
        document.getElementById("s3").style.display="table-row";
        document.getElementById("s4").style.display="table-row";
    }
    function closeDVDK(){
        document.getElementById("s1").style.display="none";
        document.getElementById("s2").style.display="none";
        document.getElementById("s3").style.display="none";
        document.getElementById("s4").style.display="none";
    }
</script>
<script src="bootstrap/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>

</html>
