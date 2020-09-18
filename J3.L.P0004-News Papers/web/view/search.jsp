<%-- 
    Document   : search
    Created on : Sep 15, 2020, 12:01:32 AM
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
                            <c:if test="${empty listResults}">
                                <p>Not found any news contain keyword "${keyword}"</p>
                            </c:if>
                            <!------>
                            <c:forEach var="news" items="${listResults}">
                                <a class="news-search" href="view?id=${news.id}">
                                    <div>
                                        <p class="news-title">${news.title}</p>
                                        <p>${news.description}</p>

                                        <p class="writer-date">
                                            <img src="${pageContext.request.contextPath}/template/images/comment.gif"/>
                                            <img src="${pageContext.request.contextPath}/template/images/timeicon.gif"/>
                                            By Writer ${news.writer} | Date 
                                            <fmt:formatDate pattern="MMMM dd yyy '-' HH:mmaaa" value = "${news.date}" />
                                        </p>
                                        <hr/>
                                    </div>
                                </a>
                            </c:forEach>
                            <!--Paging-->
                            <div class="flex">
                                <c:forEach var="page" begin="1" end="${totalPages}">
                                    
                                    <c:if test="${currentPage == page}">
                                        <p class="page-current">${page}</p>
                                    </c:if>
                                    <c:if test="${currentPage != page}">
                                        <a href="search?currentPage=${page}&keyword=${keyword}" class="mx-2">${page}</a>
                                    </c:if>
                                </c:forEach>
                            </div>
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