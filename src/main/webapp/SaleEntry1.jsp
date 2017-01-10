<%--
  Created by IntelliJ IDEA.
  User: ph
  Date: 10.01.2017
  Time: 21:14
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
    <TITLE>Using jsp:setProperty</TITLE>
    <LINK REL=STYLESHEET
          HREF="JSP-Styles.css"
          TYPE="text/css">
</HEAD>
<BODY>
<CENTER>
    <TABLE BORDER=5>
        <TR><TH CLASS="TITLE">
            Using jsp:setProperty</TABLE>
    <jsp:useBean id="entry" class="com.taran.ph.domain.SaleEntry" />

    <%-- LONG FORM OF USAGE!!!!--------------------------------------------------------------------- --%>

    <%--
    <jsp:setProperty--%>
            <%--name="entry"--%>
            <%--property="itemID"--%>
            <%--value='<%= request.getParameter("itemID") %>' />--%>
    <%--<%--%>
        <%--int numItemsOrdered = 1;--%>
        <%--try {--%>
            <%--numItemsOrdered =--%>
                    <%--Integer.parseInt(request.getParameter("numItems"));--%>
        <%--} catch(NumberFormatException nfe) {}--%>
    <%--%>--%>
    <%--<jsp:setProperty--%>
            <%--name="entry"--%>
            <%--property="numItems"--%>
            <%--value="<%= numItemsOrdered %>" />--%>
    <%--<%--%>
        <%--double discountCode = 1.0;--%>
        <%--try {--%>
            <%--String discountString =--%>
                    <%--request.getParameter("discountCode");--%>
            <%--discountCode =--%>
                    <%--Double.parseDouble(discountString);--%>
        <%--} catch(NumberFormatException nfe) {}--%>
    <%--%>

    --%>

    <jsp:setProperty
            name="entry"
            property="*" />
    <BR>
    <TABLE BORDER=1>
        <TR CLASS="COLORED">
            <TH>Item ID<TH>Unit Price<TH>Number Ordered<TH>Total Price
        <TR ALIGN="RIGHT">
            <TD><jsp:getProperty name="entry" property="itemID" />
            <TD>$<jsp:getProperty name="entry" property="itemCost" />
            <TD><jsp:getProperty name="entry" property="numItems" />
            <TD>$<jsp:getProperty name="entry" property="totalCost" />
    </TABLE>
</CENTER></BODY></HTML>

