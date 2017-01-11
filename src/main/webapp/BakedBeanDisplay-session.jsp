<%--
  Created by IntelliJ IDEA.
  User: ph
  Date: 11.01.2017
  Time: 12:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
    <TITLE>Baked Bean Values: session-based Sharing</TITLE>
    <LINK REL=STYLESHEET
          HREF="JSP-Styles.css"
          TYPE="text/css">
</HEAD>
<BODY>
<H1>Baked Bean Values: session-based Sharing</H1>
<jsp:useBean id="sessionBean" class="com.taran.ph.domain.BakedBean"
             scope="session" />

<jsp:setProperty name="sessionBean" property="*" />
<H2>Bean level:
    <jsp:getProperty name="sessionBean" property="level" /></H2>
<H2>Dish bean goes with:
    <jsp:getProperty name="sessionBean" property="goesWith" /></H2>
</BODY></HTML>

