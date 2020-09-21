<%-- 
    Document   : overview
    Created on : Sep 20, 2020, 12:14:52 PM
    Author     : ViruSs0209
--%>

<%@page import="util.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="ctx" value="${pageContext.servletContext.contextPath}" />
<c:set var="sdf" value="<%= new DateFormat() %>" />
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
                            <p>${sdf.getCurrentDate()}</p>
                            <p>Date</p>
                        </div>
                        <c:forEach items="${blogs}" var="blog">
                            <div class="overview-item">
                                <div class="overview-item__link">
                                    <a href="${ctx}/detail?id=${blog.getId()}">${blog.getTitle()}</a>
                                </div>
                                <div class="overview-item__published">
                                    ${sdf.getDateFormat(blog.getPublished())}
                                </div>
                            </div>
                        </c:forEach>     
                    </div>            
                    <%@include file="/common/aside.jsp" %>
                </div>
                <hr/>
                <footer>
                    <p>This website was created with SimpleSite</p>
                    <div class="pages">
                        <c:forEach begin="1" end="${totalPages}" var="page">
                            <a class="${currentPage == page ? 'active' : ''}" href="${pageContext.servletContext.contextPath}/overview?page=${page}">${page}</a>
                        </c:forEach>
                    </div>
                </footer>
            </main>          
        </div>
    </body>
</html>