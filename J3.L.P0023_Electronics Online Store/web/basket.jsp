<%-- 
    Document   : home
    Created on : Oct 4, 2020, 10:51:42 PM
    Author     : TASS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.servletContext.contextPath}" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en-US" class=""><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home - #TASS</title>

        <link rel="stylesheet" type="text/css" href="${ctx}/template/10449703.design.v27526.css">

        <script type="text/javascript" async="" src="${ctx}/template/analytics.js"></script>
        <script async="" src="${ctx}/template/gtm.js"></script>
        <script type="text/javascript" src="${ctx}/template/FrontendAppLocalePage.aspx"></script>
        <script type="text/javascript" src="${ctx}/template/frontendApp.min.js"></script>
    </head>
    <body data-pid="423612427" data-iid="" style="line-height: normal;" class="stefan-asafti">

        <div class="container-fluid site-wrapper">
            <!-- this is the Sheet -->
            <%@include file="common/header.jsp" %> <!-- this is the Header content -->
            <div class="container-fluid content-wrapper" id="content"> <!-- this is the Content Wrapper -->
                <div class="container">
                    <div class="row-fluid content-inner">
                        <div id="left" class="span12"><div class="wrapper shop shop-basket"><div class="controls shop-basket-top-buttons">
                                    <a class="btn" href="store">Buy more</a>
                                    <button name="checkout" class="btn" type="button">Checkout</button></div>
                                <div class="shop-basket-title heading">
                                    <h2 class="page-title pull-left">Your Basket</h2>
                                </div>
                                <div class="content">
                                    <div class="section">
                                        <div class="content">
                                            <table class="shop-basket-table" cellpadding="0" cellspacing="0">
                                                <thead>
                                                    <tr>
                                                        <th class="shop-basket-product">Product</th>
                                                        <th class="shop-basket-price">Price</th>
                                                        <th class="shop-basket-quantity">Quantity</th>
                                                        <th class="shop-basket-total">Total</th>
                                                        <th class="shop-basket-actions"></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="orderProduct" items="${sessionScope.order.listOrders}">
                                                        <tr>
                                                            <td class="shop-basket-product">

                                                                <a href="${orderProduct.product.image}" class="shop-basket-product-image">
                                                                    <img src="${ctx}/template/i285978589337768905._rsw480h480_szw480h480_.jpg">
                                                                </a>

                                                                <h4 class="shop-basket-product-title"><a href="detail?id=${orderProduct.product.id}}">${orderProduct.product.name}</a></h4>
                                                                <!--<p>Delivery: 1-2 business days</p>-->


                                                            </td>
                                                            <td class="shop-basket-price">
                                                                <p class="shop-basket-product-price">${orderProduct.product.price} USD</p>
                                                            </td>
                                                            <td class="shop-basket-quantity">

                                                                <i class="icon-spinner icon-spin hide"></i>
                                                                <input type="text" class="shop-quantity" value="${orderProduct.quantity}">

                                                            </td>
                                                            <td class="shop-basket-total">
                                                                <p>${orderProduct.total} USD</p>
                                                            </td>

                                                            <td class="shop-basket-actions">
                                                                <button class="btn btn-remove" type="button">
                                                                    <i class="icon-remove"></i>
                                                                </button>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                                <tfoot>
                                                    <tr class="shop-basket-price">
                                                        <td>&nbsp;</td>
                                                        <td>
                                                            <p></p>
                                                            <p></p>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                        <td class="shop-basket-total">
                                                            <p></p>
                                                            <p></p>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr class="shop-basket-foot-total">
                                                        <td>&nbsp;</td>
                                                        <td class="shop-basket-price">
                                                            <p><strong>Total</strong></p>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                        <td class="shop-basket-total">
                                                            <p><strong>${sessionScope.order.total} USD</strong></p>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                    </div>
                                </div></div></div>
                    </div>        
                </div>
            </div>  <!-- the controller has determined which view to be shown in the content -->
            <%@include file="common/footer.jsp" %>

            <!-- this is the Footer content -->
        </div>

        <input type="hidden" id="anti-forgery-token" value="vFZIp11QDd7w1cZjYdzwVVw3rTHgQi1lpMMqomvLq/qGfx85dADIn6rd+jb5+yvdIjnIKNejlFu6vxL7J8Np5frS12kUp0fuvjhwn7Fmjz//Mfz9CakPqshScHwQrowz6oAtqIwCkd0B9vZo8QzFu08gZAEZ5jelNH06z1PTN0ebVMJc52S3SBCP/OLAD+ZCCTjA9FTexxDg97UVUgobK+ziHkBS+I+J8Py03771PlDu65b5qTKtXSaOL3knZj9V4sMtNCBcfpOI+rwrpTMFnoFCfc0PZagMUVkAL3Ky3ET4oWPmqa3KPG7OoYtsdhJor/2XO6cMRlmIo37ou8BjlOuAA8EAkIIyp2TRAJEm76csV1dWtNnb3locxL+bTgQ9v1vLPL+gOMv7cH/DowtqmxB6Tjdre5Tpw5pSbk7xy+EIFQPudnp0g1gv5N4R3c7UICaO4x+GDDSPTQLSFw8BJg==">


        <!-- Remove after blog exp concludes -->


        <script type="text/javascript" src="${ctx}/template/frontendApp.min.js.download"></script>
    </body>
</html>
