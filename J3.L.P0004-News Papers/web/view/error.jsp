<%-- 
    Document   : error
    Created on : Sep 16, 2020, 4:07:14 AM
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

                        <p class="news-title" style="color: red; padding: 1rem; height: 100%;">Sorry! Error occurred</p>


                    </div>

                </div>
                <!--Footer-->
                <footer class="footer">
                </footer>
            </div>
        </div>
    </body>
</html>

