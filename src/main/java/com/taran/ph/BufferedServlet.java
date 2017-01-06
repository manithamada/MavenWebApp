package com.taran.ph;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * BufferedServlet demonstrates capability to send data to client using buffered output
 * We can use HttpServletResponse::flushBuffer or HttpServletResponse::setBufferSize and flush data (send to client)
 * It can be used to decrease delays
 */
public class BufferedServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        PrintWriter out = resp.getWriter();
        resp.setBufferSize(100);
        out.print("<h1>Hello Servlet</h1>");
        resp.flushBuffer();
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        out.print("</br><h1>-----------------------------</h1>");
        out.print("<h1>Hello Servlet</h1>");
    }
}
