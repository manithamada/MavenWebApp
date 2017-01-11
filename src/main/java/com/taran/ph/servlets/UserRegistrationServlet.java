package com.taran.ph.servlets;

import com.taran.ph.domain.User;
import com.taran.ph.utils.ShortBeanUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UserRegistrationServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        User user = new User();
        ShortBeanUtils.populateBean(user, req);
        req.setAttribute("user", user);

        RequestDispatcher successRegistration = req.getRequestDispatcher("/SuccessRegistration.jsp");
        successRegistration.forward(req, resp);
    }

}
