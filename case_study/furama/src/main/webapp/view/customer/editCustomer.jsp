<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/8/2022
  Time: 9:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<body>
<%@include file="../include/header.jsp" %>

<nav class="row " id="bodyEdit">
    <nav class="col-lg-2"></nav>
    <nav class="col-lg-8 d-flex justify-content-center">

        <form class="justify-content-center " action="/customer?action=editCustomer" method="post"
              style="border: 1px solid #A9A9A9; border-radius: 20px; width: 80%">
            <fieldset>
                <legend>Edit Customer</legend>
                <h2>${error}</h2>
                <table style="width: 100%" class="table">
                    <tr>
                        <th scope="col">
                            <label>Mã khách hàng</label>
                        </th>
                        <th scope="col">
                            <input readonly class="form-control" name="idCustomer" type="text" value="${customer.idCustomer}">
                        </th>
                    </tr>
                    <tr>
                        <th scope="col">
                            <label>Mã loại khách</label>
                        </th>
                        <th scope="col" >
                            <select name="idFacility" class="form-control">
                                <c:forEach items="${listCustomerType}" var="customerType">
                                    <c:choose>
                                        <c:when test="${customerType.customerTypeId==customer.idFacility}">
                                            <option value="${customerType.customerTypeId}" selected>${customerType.nameCustomerType}</option>
                                        </c:when>
                                        <c:otherwise>
                                            <option value="${customerType.customerTypeId}">${customerType.nameCustomerType}</option>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                            </select>
                        </th>
                    </tr>
                    <tr>
                        <th scope="col">
                            <label>Tên Khách hàng</label>
                        </th>
                        <th scope="col">
                            <input class="form-control" type="text" name="name" value="${customer.name}">
                        </th>
                    </tr>
                    <tr>
                        <th scope="col">
                            <label>Ngày sinh</label>
                        </th>
                        <th scope="col">
                            <input class="form-control" type="text" name="dayOfBirt" value="${customer.dayOfBirt}">
                        </th>
                    </tr>
                    <tr>
                        <th scope="col">
                            <label>Giới tính</label>
                        </th>
                        <th scope="col">
                            <select name="gender" class="form-control">
                                <c:if test="${customer.gender==0}">
                                    <option value="0">nữ</option>
                                    <option value="1">nam</option>
                                </c:if>
                                <c:if test="${customer.gender==1}">
                                    <option value="1">nam</option>
                                    <option value="0">nữ</option>
                                </c:if>
                            </select>

                        </th>
                    </tr>
                    <tr>
                        <th scope="col">
                            <label>Số CMND</label>
                        </th>
                        <th scope="col">
                            <input class="form-control" type="text" name="idCard" value="${customer.idCard}">
                        </th>
                    </tr>
                    <tr>
                        <th scope="col">
                            <label>Số điện thoại</label>
                        </th>
                        <th scope="col">
                            <input class="form-control" type="text" name="phone" value="${customer.phone}">
                        </th>
                    </tr>
                    <tr>
                        <th scope="col">
                            <label>Email</label>
                        </th>
                        <th scope="col">
                            <input class="form-control" type="text" name="email" value="${customer.email}">
                        </th>
                    </tr>
                    <tr>
                        <th scope="col">
                            <label>Địa chỉ</label>
                        </th>
                        <th scope="col">
                            <input class="form-control" type="text" name="address" value="${customer.address}">
                        </th>
                    </tr>
                    <tr>
                        <th></th>
                        <th><button  class=" btn btn-primary "  type="submit" value="SAVE">SAVE</button></th>
                    </tr>
                </table>
            </fieldset>
        </form>
    </nav>
    <nav class="col-lg-2"></nav>
</nav>
<%@include file="../include/footer.jsp" %>
</body>
<script src="bootstrap/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>

</html>
