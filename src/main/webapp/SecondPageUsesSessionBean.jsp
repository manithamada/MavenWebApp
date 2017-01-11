<%--
  Created by IntelliJ IDEA.
  User: ph
  Date: 11.01.2017
  Time: 12:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SessionBakedBean</title>
</head>
<body>

<H1>Baked Bean Values: session-based Sharing</H1>
<jsp:useBean id="sessionBean" class="com.taran.ph.domain.BakedBean" scope="session"/>

<H2>Bean level:
    <jsp:getProperty name="sessionBean" property="level" /></H2>
<H2>Dish bean goes with:
    <jsp:getProperty name="sessionBean" property="goesWith" /></H2>

</body>
</html>
