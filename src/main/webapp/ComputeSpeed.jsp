<%--
  Created by IntelliJ IDEA.
  User: ph
  Date: 10.01.2017
  Time: 17:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ComputeSpeed</title>
</head>
<body>

<%!
    // Note lack of try/catch for NumberFormatException if
// value is null or malformed.

    private double toDouble(String value) {
        return(Double.parseDouble(value));
    }
%>

<%
    double furlongs = toDouble(request.getParameter("furlongs"));
    double fortnights = toDouble(request.getParameter("fortnights"));
    double speed = furlongs/fortnights;
%>
<UL>
    <LI>Distance: <%= furlongs %> furlongs.
    <LI>Time: <%= fortnights %> fortnights.
    <LI>Speed: <%= speed %> furlongs per fortnight.
</UL>


</body>
</html>
