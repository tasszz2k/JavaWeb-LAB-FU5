<%-- 
    Document   : header
    Created on : Sep 17, 2020, 10:13:26 PM
    Author     : ViruSs0209
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.servletContext.contextPath}" />
<!DOCTYPE html>
<header>
    <h1>Blogging About My Life</h1>
    <p>Welcome to my blog</p>
    <nav class="navbar">
        <ul class="navbar__items">
            <li class="navbar__item">
                <a class="navbar__link ${currentMenu == 'blog' ? 'navbar__link--active' : ''}" href="${ctx}/home">My Blog</a>
            </li>
            <li class="navbar__item">
                <a class="navbar__link ${currentMenu == 'about' ? 'navbar__link--active' : ''}" href="${ctx}/about">About Me</a>
            </li>
        </ul>
    </nav>
</header>
