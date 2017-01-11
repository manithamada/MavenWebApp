<%--
  Created by IntelliJ IDEA.
  User: ph
  Date: 11.01.2017
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
    <TITLE>Shared Access Counts: Page 1</TITLE>
    <LINK REL=STYLESHEET
          HREF="JSP-Styles.css"
          TYPE="text/css">
</HEAD>
<BODY>
<TABLE BORDER=5 ALIGN="CENTER">
    <TR><TH CLASS="TITLE">
        Shared Access Counts: Page 1</TABLE>
<P>
    <jsp:useBean id="counter"
                 class="com.taran.ph.domain.AccessCountBean"
                 scope="application">
        <jsp:setProperty name="counter"
                         property="firstPage"
                         value="SharedCounts1.jsp" />
    </jsp:useBean>
    Of SharedCounts1.jsp (this page),
    <A HREF="SharedCounts2.jsp">SharedCounts2.jsp</A>, and
    <A HREF="SharedCounts3.jsp">SharedCounts3.jsp</A>,
    <jsp:getProperty name="counter" property="firstPage" />
    was the first page accessed.
<P>
    Collectively, the three pages have been accessed
    <jsp:getProperty name="counter" property="accessCount" />
    times.
    <jsp:setProperty name="counter" property="accessCountIncrement"
                     value="1" />
</BODY></HTML>

