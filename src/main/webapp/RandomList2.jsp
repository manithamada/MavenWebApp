<%@ page import="java.util.stream.IntStream" %><%--
  Created by IntelliJ IDEA.
  User: ph
  Date: 10.01.2017
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.taran.ph.utils.RanUtilities" %>
<html>
<head>
    <title>RandomLists2</title>
</head>
<body>

<%
    for (int i = 0; i < 10; i++) {
%>
<p>number: <%= RanUtilities.randomInt(50) %> </p>
<%
    }
%>

</body>
</html>
