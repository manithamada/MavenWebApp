package com.taran.ph.servlets.cookie;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.Optional;

public class CookieUtils {

    public static Optional<Cookie> getCookie(HttpServletRequest request, String name) {
        return Arrays.stream(request.getCookies())
                .filter(cookie -> cookie.getName().equals(name)).findFirst();
    }

    public static String getCookieValue(HttpServletRequest request, String name, String defaultValue) {
        return getCookie(request, name).map(Cookie::getValue).orElse(defaultValue);
    }
}
