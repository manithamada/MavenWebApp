package com.taran.ph.servlets.cookie;

import com.taran.ph.utils.CookieUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AccessCounterServlet extends HttpServlet {

    private static final String VISITED_COOKIE = "visited";

    enum VisitedMarker {
        NO,
        YES
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html");
        String cookieValue = CookieUtils.getCookieValue(req, VISITED_COOKIE, VisitedMarker.NO.toString());
        VisitedMarker visitedCookie = VisitedMarker.valueOf(cookieValue);

        if (visitedCookie.equals(VisitedMarker.YES)) {
            resp.getWriter().println("Welcome back");
        } else {
            OneYearLiveCookie accessCookie = new OneYearLiveCookie(VISITED_COOKIE, VisitedMarker.YES.toString());
            resp.addCookie(accessCookie);
            resp.getWriter().println("Welcome aboard");
        }
    }
}
