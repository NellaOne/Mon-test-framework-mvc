<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String redirectUrl = (String) request.getAttribute("redirectUrl");
    if (redirectUrl != null) {
        response.sendRedirect(redirectUrl);
    }
%>