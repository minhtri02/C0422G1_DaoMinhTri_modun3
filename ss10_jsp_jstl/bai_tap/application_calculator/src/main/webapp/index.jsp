<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 28/7/2022
  Time: 3:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <link rel="stylesheet"
          href="ss8_bootstrap/bai_tap/bootstrap/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
</head>
<body>
<form action="CalculatorServlet" method="post">
    <fieldset style="width: 400px">
        <legend>Calculator</legend>
        <table>
            <tr>
                <td><label for="disabledTextInput" class="form-label">First operand:</label></td>
                <td><input type="text" id="disabledTextInput" class="form-control" placeholder="Disabled input"
                           name="firstOperand"></td>
            </tr>
            <tr>
                <td> <label for="disabledSelect" class="form-label">Operator: </label></td>
                <td><select id="disabledSelect" class="form-select" name="selectOperator">
                    <option value="+">cộng</option>
                    <option value="-">trừ</option>
                    <option value="*">Nhân</option>
                    <option value="/">Chia</option>
                </select></td>
            </tr>
            <tr>
                <td><label for="disabledTextInput" class="form-label">Second operand:</label></td>
                <td> <input type="text" class="form-control" placeholder="Disabled input" name="secondOperand"></td>
            </tr>
            <tr>
                <td colspan="2"><button type="submit" class="btn btn-primary">Submit</button></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
