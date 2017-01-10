<%--
  Created by IntelliJ IDEA.
  User: ph
  Date: 10.01.2017
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ApplesAndOranges</title>
</head>
<body>

<%
    String excelParam = request.getParameter("excel");
    if (excelParam != null && excelParam.equals("yes")) {
        response.setContentType("application/vnd.ms-excel");
        response.setHeader("Content-Disposition", "inline; filename=excel.xls");
    }
%>

<TABLE BORDER=1>
    <TR><TH></TH>         <TH>Apples<TH>Oranges
    <TR><TH>First Quarter <TD>2307  <TD>4706
    <TR><TH>Second Quarter<TD>2982  <TD>5104
    <TR><TH>Third Quarter <TD>3011  <TD>5220
    <TR><TH>Fourth Quarter<TD>3055  <TD>5287
</TABLE>


</body>
</html>
