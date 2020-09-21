<%-- 
    Document   : about
    Created on : Sep 17, 2020, 10:13:07 PM
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
                        <h2>About Me</h2>
                        <p>
                            ${article.content}
                        </p>
                        
                        <div class="signature" style="margin: 30px 0px;">
                            <p>King regards</p>
                            <div class="signature-sign" style="margin-top: 15px; font-family: 'Pacifico',serif; font-size: 40px;font-weight: bold;">
                                ${article.author}
                            </div>
                        </div>
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