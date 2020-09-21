<%-- 
    Document   : detail
    Created on : Sep 17, 2020, 10:13:15 PM
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
                        <div class="section">
                            <div class="wrapper">
                                <div class="icon">
                                    <img src="${ctx}/template/images/${blog.getType()}.png" />
                                </div>
                                <div class="item">
                                    <div class="header">
                                        <a href="#" class="title">${blog.getTitle()}</a>
                                        <div class="published">${blog.getPublished()}</div>
                                    </div>
                                    <div class="detail ${blog.getType().toLowerCase()}">
                                        <div class="image">
                                            <c:if test="${blog.getBanner() != null}">
                                                <img src="${ctx}/template/images/${blog.getBanner()}" />
                                            </c:if>
                                        </div>
                                        <div class="content">
                                            <c:if test="${blog.getType() != 'Quote'}">
                                                <p>${blog.getContent()}</p>
                                            </c:if>

                                            <c:if test="${blog.getType() == 'Quote'}">
                                                <blockquote>"${blog.getContent()}"</blockquote>
                                                <div class="author">
                                                    ${blog.getAuthor()} -
                                                </div>
                                            </c:if>
                                        </div>
                                        <div id="clear" style="clear: both;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="overview">
                            <a href="${ctx}/overview">Overview</a>
                        </div>           
                    </div>            
                    <%@include file="/common/aside.jsp" %>
                </div>
                <hr/>
                <footer>
                    <p>This website was created with SimpleSite</p>
                    <div class="pages">
                        <c:forEach begin="1" end="${totalPages}" var="page">
                            <a class="${currentPage == page ? 'active' : ''}" href="${pageContext.servletContext.contextPath}/home?page=${page}">${page}</a>
                        </c:forEach>
                    </div>
                </footer>
            </main>          
        </div>
    </body>
</html>
