package com.taran.ph.eventlisteners;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class SessionLifeCycleEventExample implements ServletContextListener, HttpSessionListener {
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {

    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }

    @Override
    public void sessionCreated(HttpSessionEvent httpSessionEvent) {

    }

    @Override
    public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {

    }
}
