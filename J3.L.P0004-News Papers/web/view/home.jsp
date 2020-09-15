<%-- 
    Document   : homePage
    Created on : Sep 14, 2020, 11:28:46 AM
    Author     : TASS
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/css/style.css" />
    </head>
    <body>
        <div>
            <div class="font-sans text-blue">
                <%@include file="/common/header.jsp" %>
                <!--Content-->
                <div class="wrap-content">
                    <div class="container flex">
                        <div class="news">
                            <p class="news-title">${currentNews.title}</p>
                            <p>${currentNews.content}</p>
                            <hr/>
                            <p class="writer-date">
                                <img src="${pageContext.request.contextPath}/template/images/comment.gif"/>
                                <img src="${pageContext.request.contextPath}/template/images/timeicon.gif"/>
                                By Writer ${currentNews.writer} | Date 
                            <fmt:formatDate pattern="MMMM dd yyy '-' HH:mmaaa" value = "${currentNews.date}" />
                            </p>
                        </div>
                        <%@include file="/common/aside.jsp" %>
                    </div>
                </div>
                <!--Footer-->
                <footer class="footer">
                </footer>
            </div>
        </div>
    </body>
</html>
