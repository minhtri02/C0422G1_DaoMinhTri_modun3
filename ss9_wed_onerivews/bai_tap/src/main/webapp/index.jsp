<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/7/2022
  Time: 9:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="/discount" method="post">
    <input type="text" name="Description">Product Description<br>
    <input type="number" name="price">List Pricebr <br>
    <input type="number" name="discount">Discount Percent <br>
    <button>Discount</button>
  </form>
  </body>
</html>
