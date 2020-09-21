<%-- 
    Document   : aside
    Created on : Sep 17, 2020, 10:13:36 PM
    Author     : ViruSs0209
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="ctx" value="${pageContext.servletContext.contextPath}" />

<!DOCTYPE html>
<aside class="page-aside">
    <div class="page-aside__social">
        <span class="page-aside__title">Share this page</span>
        <ul>
            <li>
                <a class="share-facebook" href="#">
                    <img src="${ctx}/template/images/6.jpg" />
                    <span>Share on Facebook</span>
                </a>
            </li>
            <li>
                <a class="share-twitter" href="#">
                    <img src="${ctx}/template/images/7.jpg" />
                    <span>Share on Twitter</span>
                </a>
            </li>
            <li>
                <a class="share-twitter" href="#">
                    <img src="${ctx}/template/images/8.jpg" />
                    <span>Share on Google+</span>
                </a>
            </li>
        </ul>
    </div>
</aside>