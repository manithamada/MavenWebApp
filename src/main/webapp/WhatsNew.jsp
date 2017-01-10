<%--
  Created by IntelliJ IDEA.
  User: ph
  Date: 10.01.2017
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>WhatsNew</title>
</head>
<body>

<TABLE BORDER=5 ALIGN="CENTER">
    <TR><TH CLASS="TITLE">
        What's New at JspNews.com</TABLE>


<P>
    Here is a summary of our three most recent news stories:
<OL>
    <LI><jsp:include page="/WEB-INF/Item1.html" />
    <LI><jsp:include page="/WEB-INF/Item2.html" />
    <LI><jsp:include page="/WEB-INF/Item3.html" />
</OL>


</body>
</html>
