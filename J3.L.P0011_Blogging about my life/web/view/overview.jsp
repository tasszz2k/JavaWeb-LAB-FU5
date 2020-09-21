<%-- 
    Document   : overview
    Created on : Sep 20, 2020, 12:14:52 PM
    Author     : ViruSs0209
--%>


<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="ctx" value="${pageContext.servletContext.contextPath}" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="${ctx}/template/css/index.css" rel="stylesheet" type="text/css"/>
        <link href="${ctx}/template/css/home.css" rel="stylesheet" type="text/css"/>
        <link href="${ctx}/template/css/overview.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="wrap-all">
            <%@include file="/common/header.jsp" %>
            <main>
                <div class="page-content">
                    <div class="blog-display">
                        <h2>Overview - My Blog</h2>
                        <div class="overview-item">
                            <c:set var = "now" value = "<% = new java.util.Date()%>" />
                            <fmt:formatDate pattern = "M yyyy" value = "${now}" />
                            <p>Date</p>
                        </div>
                        <c:forEach items="${listArticles}" var="article">
                            <div class="overview-item">
                                <div class="overview-item__link">
                                    <a href="${ctx}/detail?id=${article.id}">${article.title}</a>
                                </div>
                                <div class="overview-item__published">
                                     <fmt:formatDate pattern = "dd-mm-yyyy" value = "${article.published}" />
                                </div>
                            </div>
                        </c:forEach>     
                    </div>            
                    <%@include file="/common/aside.jsp" %>
                </div>
                <hr/>
                <footer>
                    
                </footer>
            </main>          
        </div>
    </body>
</html>