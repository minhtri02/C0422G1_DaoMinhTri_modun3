<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/8/2022
  Time: 9:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
</head>
<body >
<%@include file="../include/header.jsp" %>
<nav class="row container-fluid">
    <nav class="row" id="thanh_body">
        <nav class="col-lg-12 d-flex justify-content-center pt-4">
            <form class="justify-content-center d-flex " action=""
                  style="border: 1px solid #A9A9A9; border-radius: 20px; width: 100%">

                <fieldset>
                    <legend>List Customer</legend>
<%--                    <nav class="col-lg-3 d-flex justify-content-center">--%>
<%--                        <form class="d-flex justify-content-center mt-2 mb-2">--%>
<%--                            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">--%>
<%--                            <button class="btn btn-success" type="button">Search</button>--%>
<%--                        </form>--%>
<%--                    </nav>--%>
                    <p style="color: red">${error}</p>
                    <table class="table" style="width: 100%">
                        <thead>
                        <tr>
                            <th scope="col">STT</th>
                            <th scope="col">Tên khách hàng</th>
                            <th scope="col">Ngày sinh</th>
                            <th scope="col">Giới tính</th>
                            <th scope="col">Số CMND</th>
                            <th scope="col">Số điện thoại</th>
                            <th scope="col">Email</th>
                            <th scope="col">Địa chỉ</th>
                            <th scope="col">Loại khách</th>
                            <th scope="col">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="customer" items="${listCustomer}">
                            <tr>
                                <td>${customer.idCustomer}</td>
                                <td>${customer.name}</td>
                                <td>${customer.dayOfBirt}</td>
                                <td>
                                        <c:if test="${customer.gender==1}">
                                            <span value="1">Nam</span>
                                        </c:if>
                                        <c:if test="${customer.gender==0}">
                                            <span value="0">Nữ</span>
                                        </c:if>
                                </td>
                                <td>${customer.idCard}</td>
                                <td>${customer.phone}</td>
                                <td>${customer.email}</td>
                                <td>${customer.address}</td>
                                <td><c:forEach var="CustomerTypeList" items="${listCustomerType}">
                                    <c:if test="${customer.idFacility==CustomerTypeList.customerTypeId}">
                                        ${CustomerTypeList.nameCustomerType}
                                    </c:if>
                                </c:forEach>
                                </td>
                                <td>
                                    <button class="btn " type="button" onclick="location.href='/customer?action=showEditCustomer&idCustomer=${customer.idCustomer}'">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                             class="bi bi-pencil-fill" viewBox="0 0 16 16">
                                            <path d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z"/>
                                        </svg>
                                    </button>
                                    <button onclick="deleteCustomer('${customer.idCustomer}','${customer.name}')" type="button" class="btn " data-bs-toggle="modal"
                                            data-bs-target="#exampleModal">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                             class="bi bi-trash3-fill" viewBox="0 0 16 16">
                                            <path d="M11 1.5v1h3.5a.5.5 0 0 1 0 1h-.538l-.853 10.66A2 2 0 0 1 11.115 16h-6.23a2 2 0 0 1-1.994-1.84L2.038 3.5H1.5a.5.5 0 0 1 0-1H5v-1A1.5 1.5 0 0 1 6.5 0h3A1.5 1.5 0 0 1 11 1.5Zm-5 0v1h4v-1a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5ZM4.5 5.029l.5 8.5a.5.5 0 1 0 .998-.06l-.5-8.5a.5.5 0 1 0-.998.06Zm6.53-.528a.5.5 0 0 0-.528.47l-.5 8.5a.5.5 0 0 0 .998.058l.5-8.5a.5.5 0 0 0-.47-.528ZM8 4.5a.5.5 0 0 0-.5.5v8.5a.5.5 0 0 0 1 0V5a.5.5 0 0 0-.5-.5Z"/>
                                        </svg>
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>

                        </tbody>

                    </table>
                </fieldset>
            </form>
        </nav>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Delete Customer</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="/customer?action=deleteCustomer" method="post">
                    <div class="modal-body">
                        <h2>Do you want to delete :</h2>
                        <h3 id="nameCustomer"> ?</h3>
                        <input name="idCustomer" id="idCustomer" type="text" hidden >
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </nav>

</nav>
<%@include file="../include/footer.jsp" %>
<script>
    function deleteCustomer(idCustomer, name){
        document.getElementById("idCustomer").value=idCustomer;
        document.getElementById("nameCustomer").innerText=name;
    }
</script>
</body>
<script src="bootstrap/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</html>
