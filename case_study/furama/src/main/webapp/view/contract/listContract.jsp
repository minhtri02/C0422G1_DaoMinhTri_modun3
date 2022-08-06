<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/8/2022
  Time: 12:43 PM
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

<nav class="row">
    <nav class="row">
        <nav class="col-lg-12 d-flex justify-content-center">
            <form class="justify-content-center d-flex" action=""
                  style="border: 1px solid #A9A9A9; border-radius: 20px; width: 80%">
                <fieldset>
                    <legend>List Contract</legend>

                    <table class="table table-active">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Tên Nhân viên</th>
                            <th scope="col">Ngày sinh</th>
                            <th scope="col">Số CMND</th>
                            <th scope="col">Số điện thoại</th>
                            <th scope="col">Email</th>
                            <th scope="col">Trình độ</th>
                            <th scope="col">Vị trí</th>
                            <th scope="col">Lương</th>
                            <th scope="col">Action</th>
                        </tr>
                        <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                            <td>@mdo</td>
                            <td>@mdo</td>
                            <td>@mdo</td>
                            <td>@mdo</td>
                            <td>@mdo</td>
                            <td>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                        data-bs-target="#modalAddDVDK">
                                    +
                                </button>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                        data-bs-target="#modalListDVDK">
                                    Dach sách dịch vụ đi kèm
                                </button>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </nav>
    </nav>

</nav>


<!-- Modal thêm mới dịch vụ đi kèm -->
<div class="modal fade" id="modalAddDVDK" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Thêm mới dịch vụ đi kèm</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">

                    <table class="table table-hover">
                        <tr>
                            <th><input name="1"  type="checkbox" value="Ăn sáng"> Ăn sáng</th>
                        </tr>
                        <tr>
                            <th><input name="1" type="checkbox" value="Ăn Trưa"> Ăn trưa</th>
                        </tr>
                        <tr>
                            <th><input name="1" type="checkbox" value="Ăn Tối">Ăn tối</th>
                        </tr>
                        <tr>
                            <th><input name="1" type="checkbox" value="Thuê xe">Thuê xe</th>
                        </tr>
                    </table>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save</button>
            </div>
        </div>
    </div>
</div>
<%@include file="../include/footer.jsp"%>
</body>
<script src="bootstrap/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</html>
