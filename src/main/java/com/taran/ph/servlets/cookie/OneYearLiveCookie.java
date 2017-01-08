package com.taran.ph.servlets.cookie;

import javax.servlet.http.Cookie;

public class OneYearLiveCookie extends Cookie {

    private static final int ONE_YEAR = 60 * 60 * 24 * 365;

    public OneYearLiveCookie(String name, String value) {
        super(name, value);
        setMaxAge(ONE_YEAR);
    }
}
