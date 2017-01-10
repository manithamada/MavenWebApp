<%--
  Created by IntelliJ IDEA.
  User: ph
  Date: 10.01.2017
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SpeedErrors</title>
</head>
<body>
<%@ page isErrorPage="true" %>
<TABLE BORDER=5 ALIGN="CENTER">
    <TR><TH CLASS="TITLE">
        Error Computing Speed</TABLE>
<P>
    ComputeSpeed.jsp reported the following error:
    <I><%= exception %></I>. This problem occurred in the
    following place:
<PRE>
<%@ page import="java.io.*" %>
<% exception.printStackTrace(new PrintWriter(out)); %>
</PRE>


</body>
</html>
