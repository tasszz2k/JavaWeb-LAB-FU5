<%-- 
    Document   : home
    Created on : Sep 17, 2020, 10:12:54 PM
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
        <link href="${ctx}/template/css/index.css" rel="stylesheet" type="text/css"/>
        <link href="${ctx}/template/css/home.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="wrap-all">
            <%@include file="/common/header.jsp" %>
            <main>
                <div class="page-content">
                    <div class="blog-display">
                        <h2>My Blog</h2>
                        <c:forEach items="${listArticles}" var="article">
                            <div class="section">
                                <div class="wrapper">
                                    <div class="icon">
                                        <img src="${ctx}/template/images/${article.category}.png" />
                                    </div>
                                    <div class="item">
                                        <div class="header">
                                            <a href="${ctx}/detail?id=${article.id}" class="title">${article.title}</a>
                                            <div class="published">${article.published}</div>
                                        </div>
                                        <div class="detail ${article.category}">
                                            <div class="image">
                                                <c:if test="${not empty article.banner}">
                                                    <img src="${ctx}/template/images/${article.banner}" />
                                                </c:if>
                                            </div>
                                            <div class="content">
                                                <c:if test="${article.category ne 'quote'}">
                                                    <p>${article.content}</p>
                                                </c:if>

                                                <c:if test="${article.category eq 'quote'}">
                                                    <blockquote>"${article.content}"</blockquote>
                                                    <div class="author">
                                                        ${article.author} -
                                                    </div>
                                                </c:if>
                                            </div>
                                            <div id="clear" style="clear: both;"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <div class="overview">
                            <a href="${ctx}/overview">Overview</a>
                        </div>           
                    </div>            
                    <%@include file="/common/aside.jsp" %>
                </div>
                <hr/>
                <footer>
                    <%@include file="/common/footer.jsp" %>
                </footer>
            </main>          
        </div>
    </body>
</html>
