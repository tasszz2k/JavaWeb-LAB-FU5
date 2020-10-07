<%-- 
    Document   : home
    Created on : Oct 4, 2020, 10:51:42 PM
    Author     : TASS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.servletContext.contextPath}" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0078)http://us-123-electronic.simplesite.com/423612427/category/582778/online-store -->
<html lang="en-US" class=""><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online store - #TASS</title>

        <link rel="stylesheet" type="text/css" href="${ctx}/template/10449703.design.v27526.css">

        <script type="text/javascript" async="" src="${ctx}/template/analytics.js"></script>
        <script async="" src="${ctx}/template/gtm.js"></script>
        <script type="text/javascript" src="${ctx}/template/FrontendAppLocalePage.aspx"></script>
        <script type="text/javascript" src="${ctx}/template/frontendApp.min.js"></script>
    </head>
    <body data-pid="423612427" data-iid="">


        <div class="container-fluid site-wrapper"> <!-- this is the Sheet -->
            <%@include file="common/header.jsp" %><!-- this is the Header content -->

            <div class="container-fluid content-wrapper" id="content"> <!-- this is the Content Wrapper -->
                <div class="container">
                    <div class="row-fluid content-inner">
                        <div id="left" class="span9"> <!-- ADD "span12" if no sidebar, or "span9" with sidebar -->
                            <div class="wrapper shop products-list">
                                <div class="heading">
                                    <h1 class="page-title">Online store</h1>
                                </div>

                                <div class="content">
                                    <div class="section">
                                        <div class="content">
                                            
                                            <c:forEach var="product" items="${listProducts}">
                                                 <div class="row-fluid">
                                                <div class="span12">
                                                    <div class="product">
                                                        <div class="product-image">
                                                            <a rel="nofollow" href="detail?id=${product.id}">
                                                                <div class="images-inner">
                                                                    <img class="" src="${ctx}/template/${product.image}">
                                                                </div>
                                                            </a>
                                                            <h4 class="product-title">
                                                                <a rel="nofollow" href="detail?id=${product.id}">${product.name}</a>
                                                            </h4>


                                                            <div class="product-price">
                                                                Price: ${product.price} USD
                                                            </div>
                                                            <div class="product-button">
                                                                <button name="product" data-product_id="1799399" data-hassizes="False" class="btn " type="button"
                                                                        onclick="location.href='basket?productId=${product.id}&quantity=1&action=add'">
                                                                   Add to basket
                                                                </button>

                                                            </div>
                                                            <div class="product-description">
                                                               ${product.description}
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            </c:forEach>
                                            
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                        <%@include file="common/aside.jsp" %>
                    </div>        
                </div>
            </div>  <!-- the controller has determined which view to be shown in the content -->

            <%@include file="common/footer.jsp" %> <!-- this is the Footer content -->
        </div>
    </body></html>