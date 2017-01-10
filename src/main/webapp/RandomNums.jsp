<%@ page import="com.taran.ph.utils.RanUtilities" %><%--
  Created by IntelliJ IDEA.
  User: ph
  Date: 10.01.2017
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.taran.ph.utils.RanUtilities" %>
<html>
<head>
    <title>RandomNums</title>
</head>
<body>

<H1>Random Numbers</H1>
<p> random number : <%= RanUtilities.randomInt(30)%> </p>

</body>
</html>
