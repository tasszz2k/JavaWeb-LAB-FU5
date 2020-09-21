<%-- 
    Document   : error
    Created on : Sep 15, 2020, 11:11:04 PM
    Author     : ViruSs0209
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="ctx" value="${pageContext.servletContext.contextPath}" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="${ctx}/template/css/index.css" type="text/css" rel="stylesheet"/>
        <link href="${ctx}/template/css/home.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <div id="wrap-all">
            <%@include file="/common/header.jsp" %>
            <main>
                <div class="page-content">
                    <div class="content-wrapper">
                        <div class="article-display">
                            <c:if test="${error != null}">
                                <h1 style="margin-bottom: 20px;">${error}</h1>
                            </c:if>
                            <c:if test="${error == null}">
                                <h1 style="margin-bottom: 20px;">Not Found</h1>
                            </c:if>
                            <a href="${ctx}/home">Back to home</a>
                        </div>
                    </div>
                </div>
                <footer></footer>
            </main>         
        </div>
    </body>
</html>
