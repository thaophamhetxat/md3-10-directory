<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Scanner" %><%--
  Created by IntelliJ IDEA.
  User: ThaoLan
  Date: 07/28/2021
  Time: 9:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    Map<String, String>dictory = new HashMap<>();

%>
<%
    dictory.put("hello", "Xin chào");
    dictory.put("how", "Thế nào");
    dictory.put("book", "Quyển vở");
    dictory.put("computer", "Máy tính");

    String search = request.getParameter("search");
    String result  = dictory.get(search);
    if(result != null){
        out.println("Word: " + search);
        out.println("Result: " + result);
    }else {
        out.println("Not found");
    }
%>
</body>
</html>
