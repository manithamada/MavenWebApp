<%@ page import="java.util.Random" %><%--
  Created by IntelliJ IDEA.
  User: ph
  Date: 10.01.2017
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SemiRandomNumber</title>
</head>
<body>

<%! int randomInstanceField = new Random(10).nextInt(); %>

<p>random number is the same on each request: <%= randomInstanceField%></p>

</body>
</html>
