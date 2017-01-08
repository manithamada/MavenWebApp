package com.taran.ph.servlets;

import org.apache.commons.lang3.StringEscapeUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * FilterSpecialCharacters demonstrates that we need to replace special characters like "<" ">" amd "&" to
 * &lt &gt and so on. This also allow to prevent XCC attack (javascript code injection into html) to execute in client side
 * Originally, this issue was written in book 'Core servlets and java server pages' and replacing by switch statement,
 * but a
 */
public class CodeSampleServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html");

        String rawCode = req.getParameter("code");
        String escaped = StringEscapeUtils.escapeHtml4(rawCode);
        resp.getWriter().println("<pre style=\"background: yellow\">");
        resp.getWriter().println(escaped);
        resp.getWriter().println("</pre>");
    }
}
