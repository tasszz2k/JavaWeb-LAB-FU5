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
                            <div class="wrapper shop product-details">
                                <div class="heading">
                                    <h1 class="page-title">${product.name}</h1>
                                </div>

                                <div class="content">
                                    <div class="section">
                                        <div class="content">
                                            <div class="row-fluid">
                                                <div class="span6 product-image">
                                                    <div class="img-simple  ">
                                                        <div class="image">
                                                            <a data-ss="imagemodal" data-href="${ctx}/template/${product.image}" has-arrows="True">
                                                                <img src="${ctx}/template/${product.image}"></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="span6">
                                                    <dl class="dl-horizontal product-overview">
                                                        <dt class="product-price">Price</dt>
                                                        <dd class="product-price product-price-medium-large">${product.price} USD</dd>

                                                        <dt class="product-quantity">Quantity</dt>
                                                        <dd class="product-quantity product-quantity-medium-large"><input class="product-quantity-input" type="number" value="1" max="${product.quantity}"></dd>

                                                    </dl>
                                                    <div class="product-details-buttons">
                                                        <button name="product" data-product_id="1799399" data-hassizes="False" class="btn " type="button">
                                                            <a href="basket?productId=${product.id}">Add to basket</a>
                                                        </button>

                                                    </div>
                                                    <div class="product-description">
                                                        <h5>Description</h5>
                                                        <p>${product.description}</p>
                                                    </div>
<!--                                                    <div class="product-delivery-info">
                                                        <h5>Delivery: 1-2 business days</h5>
                                                    </div>-->
                                                </div>
                                            </div>
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