<%-- 
    Document   : header
    Created on : Sep 14, 2020, 10:47:02 PM
    Author     : TASS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--Header-->
        <div>
            <div class="pre-header">
                <img class="img-preheader" src="${pageContext.request.contextPath}/template/images/preheader.jpg">
            </div>
            <div class="banner">
                <div class="container">
                    <p class="banner-text">My Digital News</p>
                </div>
            </div>
            <nav class="navigation">
                <div class="container">
                    <ul class="menu">
                        <li class="menu-item">
                            <a href="home-page" class="menu-item-home">News</a>
                    </ul>
                </div>
            </nav>
        </div>
    </body>
</html>
