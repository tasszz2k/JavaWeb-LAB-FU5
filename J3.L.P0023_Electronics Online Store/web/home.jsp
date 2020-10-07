<%-- 
    Document   : home
    Created on : Oct 4, 2020, 10:51:42 PM
    Author     : TASS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.servletContext.contextPath}" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0040)http://us-123-electronic.simplesite.com/ -->
<html lang="en-US" class=""><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home - #TASS</title>

        <link rel="stylesheet" type="text/css" href="${ctx}/template/10449703.design.v27526.css">

        <script type="text/javascript" async="" src="${ctx}/template/analytics.js"></script>
        <script async="" src="${ctx}/template/gtm.js"></script>
        <script type="text/javascript" src="${ctx}/template/FrontendAppLocalePage.aspx"></script>
        <script type="text/javascript" src="${ctx}/template/frontendApp.min.js"></script>
    </head>
    <body data-pid="423612425" data-iid="">


        <div class="container-fluid site-wrapper"> 
            <!-- this is the Sheet -->
            <%@include file="common/header.jsp" %>

            <!-- this is the Header content -->

            <div class="container-fluid content-wrapper" id="content"> <!-- this is the Content Wrapper -->
                <div class="container">
                    <div class="row-fluid content-inner">
                        <div id="left" class="span9"> <!-- ADD "span12" if no sidebar, or "span9" with sidebar -->
                            <div class="wrapper ">
                                <div class="content">
                                    <c:set var="index" value="${1}"/>
                                    <c:forEach var="product" items="${listProducts}">
                                        <c:if test="${index%3 eq 1}">
                                            <div class="section">
                                                <div class="content">
                                                    <ul class="thumbnails column-article-section">
                                        </c:if>
                                        <li class="span4">
                                            <div class="img-simple span12 ">
                                                <div class="image">
                                                    <a rel="nofollow" data-ss="imagemodal" data-href="${ctx}/template/${product.image}">
                                                        <img src="${ctx}/template/${product.image}"></a>
                                                </div>
                                            </div>

                                            <h4>
                                                <a rel="nofollow" href="detail?id=${product.id}">${product.name}</a>
                                            </h4>

                                            <p>${product.description}</p>
                                        </li>
                                        <c:if test="${index%3 eq 0 or index eq listProducts.size()}">
                                                    </ul>
                                                </div>
                                            </div>
                                        </c:if>
                                        <c:set var="index" value="${index+1}"/>
                                    </c:forEach>

                                  
                                    <div class="section article">
                                        <div class="heading">
                                            <h3>Quality products at a good price</h3>
                                        </div>

                                        <div class="content">
                                            <p><span>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip
                                                    ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue
                                                    duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.&nbsp;</span></p>    </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                        <%@include file="common/aside.jsp" %>
                    </div>        
                </div>
            </div>  <!-- the controller has determined which view to be shown in the content -->

            <%@include file="common/footer.jsp" %>
            <!-- this is the Footer content -->
        </div>
    </body>
</html>

