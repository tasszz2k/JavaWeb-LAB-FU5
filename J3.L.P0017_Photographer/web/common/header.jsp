<%-- 
    Document   : header
    Created on : Sep 27, 2020, 2:02:45 PM
    Author     : TASS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container-fluid header-wrapper " id="header">
            <!-- this is the Header Wrapper -->
            <div class="container">
                <div class="navbar navbar-compact">
                    <div class="navbar-inner">
                        <div class="container">
                            <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
                            <a rel="nofollow" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse" title="Toggle menu">
                                <span class="menu-name">Menu</span>
                                <span class="menu-bars">
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </span>
                            </a>



                            <!-- Everything you want hidden at 940px or less, place within here -->
                            <div class="nav-collapse collapse">
                                <ul class="nav" id="topMenu" data-submenu="horizontal">
                                    <li class=" active " style="">
                                        <a rel="nofollow" href="home">My front page</a>
                                    </li>

                                    <c:forEach var="gallery" items="${listGallery}">
                                        <li class="  " style="">
                                            <a rel="nofollow" href="gallery?id=${gallery.id}">${gallery.title}</a>
                                        </li>
                                    </c:forEach>
                                    <li class="  " style="">
                                        <a rel="nofollow" href="contact">Contact</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- this is the Menu content -->
                <div class="title-wrapper">
                    <div class="title-wrapper-inner">
                        <a rel="nofollow" class="logo " href="home">

                        </a>
                        <div class="title ">
                            PHOTOGRAPHER
                        </div>
                        <div class="subtitle">
                            Welcome to this website
                        </div>
                    </div>
                </div>
                <!-- these are the titles -->
            </div>
        </div>
    </body>
</html>
