<%--
  Created by IntelliJ IDEA.
  User: ph
  Date: 10.01.2017
  Time: 20:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>StringBean</title>
</head>
<body>

<jsp:useBean id="stringBean" class="com.taran.ph.domain.StringBean"/>

<p>value message property of stringBean: <jsp:getProperty name="stringBean" property="message"/> </p>

<p>change message of stringBean</p>

<jsp:setProperty name="stringBean" property="message" value="New value!"/>

<p>value message property of stringBean: <jsp:getProperty name="stringBean" property="message"/> </p>

</body>
</html>
