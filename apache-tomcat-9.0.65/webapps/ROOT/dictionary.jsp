<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 28/7/2022
  Time: 9:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>

<%
    dic.put("hello", "Xin chào");
    dic.put("how", "Thế nào");
    dic.put("book", "Quyển vở");
    dic.put("computer", "Máy tính");

    String search = request.getParameter("search");
    PrintWriter pw = response.getWriter();
    String result = dic.get(search);
    String str = "";
    if (result != null) {
        pw.println("Word: " + search +"<br>");
        pw.println("Result: " + result);
//        str+="Word: " + search+"<br>";
//        str+="Result: " + result;
    } else {
//        str+="Not found";
        pw.println("Not found");
    }

%>
<h1><%=str%></h1>
</body>
</html>
