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

        <form class="justify-content-center d-flex" method="post" action="/facility?action=editFacility" style="border: 1px solid #A9A9A9; border-radius: 20px; width: 80%">
            <fieldset>
                <legend>Edit Service</legend>
                <table style="width: 100%" class="table">
                    <tr>
                        <th><label>mã dịch vụ</label></th>
                        <th><input readonly name="idFacility" type="text" value="${facility.idFacility}"></th>
                    </tr>
                    <tr>
                        <th><label>Tên dịch vụ</label></th>
                        <th><input readonly name="nameFacility" type="text" value="${facility.nameFacility}"></th>
                    </tr>
                    <tr>
                        <th scope="col">
                            <label >loại dịch vụ</label>
                        </th >
                        <th scope="col" colspan="2">
                            <select onchange=changeService(this.value) name="renTypeId">
                                <c:forEach items="${listRentType}" var="rentType">
                                    <c:choose>
                                        <c:when test="${rentType.renTypeId == facility.idFacility}">
                                            <option value="${rentType.renTypeId}" selected>${rentType.nameRenType}</option>
                                        </c:when>
                                        <c:otherwise>
                                            <option value="${rentType.renTypeId}">${rentType.nameRenType}</option>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                            </select>
                        </th>
                    </tr>

                    <tr>
                        <th scope="col">
                            <label >Diện tích sử dụng</label>
                        </th>
                        <th scope="col">
                            <input type="text" name="area" value="${facility.area}">
                        </th>

                    </tr>
                    <tr>
                        <th scope="col">
                            <label >Chi phí thuê</label>
                        </th>
                        <th scope="col">
                            <input type="text" name="cost" value="${facility.cost}">
                        </th>
                    </tr>
                    <tr>
                        <th scope="col">
                            <label>Số người tối đa</label>
                        </th>
                        <th scope="col">
                            <input type="text" name="maxPeoble" value="${facility.maxPeoble}">
                        </th>
                    </tr>
                    <div>

                    </div>
                    <tr id="s1" >
                        <th scope="col">
                            <label>Tiêu chuẩn phòng</label>
                        </th>
                        <th scope="col">
                            <input type="text" name="standardRoom" value="${facility.standardRoom}">
                        </th>
                    </tr>
                    <tr id="s2" >
                        <th scope="col">
                            <label >Mô tả tiện nghi khác</label>
                        </th>
                        <th scope="col">
                            <input type="text" name="descriptionOtherConvenience" value="${facility.descriptionOtherConvenience}">
                        </th>
                    </tr>
                    <tr id="s3" >
                        <th scope="col">
                            <label >Diện tích hồ bơi</label>
                        </th>
                        <th scope="col">
                            <input type="text" name="poolArea" value="${facility.poolArea}">
                        </th>
                    </tr>
                    <tr id="s4" >
                        <th scope="col">
                            <label>Số tầng</label>
                        </th>
                        <th scope="col">
                            <input type="text" name="numberOfFloors" value="${facility.numberOfFloors}">
                        </th>
                    </tr>
                    <tr id="s5" >
                        <th scope="col">
                            <label >Dịch vụ đi kèm miễn phí</label>
                        </th>
                        <th scope="col">
                            <input type="text" name="facilityFree" value="${facility.facilityFree}">
                        </th>
                    </tr>
                    <tr >
                        <th scope="col">
                            <label >Loại dịch vụ</label>
                        </th>
                        <th scope="col">
                            <input type="text" name="facilityTypeId" value="${facility.facilityTypeId}">
                        </th>
                    </tr>
                    <tr>
                        <th>${error}</th>
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
<script>
    // function changeService(value) {
    //     switch (value) {
    //         case "none":
    //             document.getElementById("s1").style.display="none";
    //             document.getElementById("s2").style.display="none";
    //             document.getElementById("s3").style.display="none";
    //             document.getElementById("s4").style.display="none";
    //             document.getElementById("s5").style.display="none";
    //             break;
    //         case "1":
    //             document.getElementById("s1").style.display="table-row";
    //             document.getElementById("s2").style.display="table-row";
    //             document.getElementById("s3").style.display="table-row";
    //             document.getElementById("s4").style.display="table-row";
    //             document.getElementById("s5").style.display="none";
    //             break;
    //         case "2":
    //             document.getElementById("s1").style.display="table-row";
    //             document.getElementById("s2").style.display="table-row";
    //             document.getElementById("s3").style.display="none";
    //             document.getElementById("s4").style.display="table-row";
    //             document.getElementById("s5").style.display="none";
    //             break;
    //         case "3":
    //             document.getElementById("s1").style.display="table-row";
    //             document.getElementById("s2").style.display="table-row";
    //             document.getElementById("s3").style.display="none";
    //             document.getElementById("s4").style.display="none";
    //             document.getElementById("s5").style.display="table-row";
    //             break;
    //     }
    // }

</script>
<script src="bootstrap/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>

</html>
