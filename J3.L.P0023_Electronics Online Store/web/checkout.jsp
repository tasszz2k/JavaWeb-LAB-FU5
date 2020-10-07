<%-- 
    Document   : home
    Created on : Oct 4, 2020, 10:51:42 PM
    Author     : TASS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.servletContext.contextPath}" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0064)http://us-123farm-store.simplesite.com/424001980/basket#checkout -->
<html lang="en-US" class=""><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home - #TASS</title>

        <link rel="stylesheet" type="text/css" href="${ctx}/template/10449703.design.v27526.css">
        
        <script type="text/javascript" async="" src="${ctx}/template/analytics.js"></script>
        <script async="" src="${ctx}/template/gtm.js"></script>
        <script type="text/javascript" src="${ctx}/template/FrontendAppLocalePage.aspx"></script>
        <script type="text/javascript" src="${ctx}/template/frontendApp.min.js"></script>
    </head>
    <body data-pid="424001980" data-iid="">


        <div class="container-fluid site-wrapper"> <!-- this is the Sheet -->
            <%@include file="common/header.jsp" %> <!-- this is the Header content -->

            <div class="container-fluid content-wrapper" id="content"> <!-- this is the Content Wrapper -->
                <div class="container">
                    <div class="row-fluid content-inner">
                        <div id="left" class="span12"><div class="wrapper shop shop-basket"><div class="heading">
                                    <h1 class="page-title">Checkout</h1>
                                </div>
                                <div class="alert alert-error hide">
                                    <button type="button" class="close">×</button>
                                </div>
                                <form class="content" action="checkout" method="post">
                                    <div class="section">
                                        <div class="heading">
                                            <h4>Shipping address</h4>
                                        </div>
                                        <div class="content">

                                            <div class="row-fluid">
                                                <div class="span6">

                                                    <label>Name *</label>
                                                    <input type="text" name="name" class="input-block-level">
                                                    <span class="help-block"></span>

                                                    <label>Company</label>
                                                    <input type="text" name="company" class="input-block-level">

                                                    <label>Address line 1 *</label>
                                                    <input type="text" name="address1" class="input-block-level">
                                                    <span class="help-block"></span>

                                                    <label>Address line 2</label>
                                                    <input type="text" name="address2" class="input-block-level">
                                                    <span class="help-block"></span>

                                                    <div class="row-fluid">
                                                        <div class="span6">
                                                            <label>Zip *</label>
                                                            <input type="text" name="zip" class="input-block-level">
                                                            <span class="help-block"></span>
                                                        </div>
                                                        <div class="span6">
                                                            <label>City *</label>
                                                            <input type="text" name="city" class="input-block-level">
                                                            <span class="help-block"></span>
                                                        </div>
                                                    </div>
                                                    <div class="row-fluid">

                                                        <div class="span6">
                                                            <label>State *</label>
                                                            <select name="state" class="input-block-level">

                                                                <option value="AL">Alabama</option>

                                                                <option value="AK">Alaska</option>

                                                                <option value="AS">American Samoa</option>

                                                                <option value="AZ">Arizona</option>

                                                                <option value="AR">Arkansas</option>

                                                                <option value="CA">California</option>

                                                                <option value="CO">Colorado</option>

                                                                <option value="CT">Connecticut</option>

                                                                <option value="DE">Delaware</option>

                                                                <option value="DC">District of Columbia</option>

                                                                <option value="FM">Federated States of Micronesia</option>

                                                                <option value="FL">Florida</option>

                                                                <option value="GA">Georgia</option>

                                                                <option value="GU">Guam</option>

                                                                <option value="HI">Hawaii</option>

                                                                <option value="ID">Idaho</option>

                                                                <option value="IL">Illinois</option>

                                                                <option value="IN">Indiana</option>

                                                                <option value="IA">Iowa</option>

                                                                <option value="KS">Kansas</option>

                                                                <option value="KY">Kentucky</option>

                                                                <option value="LA">Louisiana</option>

                                                                <option value="ME">Maine</option>

                                                                <option value="MH">Marshall Islands</option>

                                                                <option value="MD">Maryland</option>

                                                                <option value="MA">Massachusetts</option>

                                                                <option value="MI">Michigan</option>

                                                                <option value="MN">Minnesota</option>

                                                                <option value="MS">Mississippi</option>

                                                                <option value="MO">Missouri</option>

                                                                <option value="MT">Montana</option>

                                                                <option value="NE">Nebraska</option>

                                                                <option value="NV">Nevada</option>

                                                                <option value="NH">New Hampshire</option>

                                                                <option value="NJ">New Jersey</option>

                                                                <option value="NM">New Mexico</option>

                                                                <option value="NY">New York</option>

                                                                <option value="NC">North Carolina</option>

                                                                <option value="ND">North Dakota</option>

                                                                <option value="MP">Northern Mariana Islands</option>

                                                                <option value="OH">Ohio</option>

                                                                <option value="OK">Oklahoma</option>

                                                                <option value="OR">Oregon</option>

                                                                <option value="PA">Pennsylvania</option>

                                                                <option value="PR">Puerto Rico</option>

                                                                <option value="RI">Rhode Island</option>

                                                                <option value="SC">South Carolina</option>

                                                                <option value="SD">South Dakota</option>

                                                                <option value="TN">Tennessee</option>

                                                                <option value="TX">Texas</option>

                                                                <option value="UM">U.S. Minor Outlying Islands</option>

                                                                <option value="UT">Utah</option>

                                                                <option value="VT">Vermont</option>

                                                                <option value="VI">Virgin Islands</option>

                                                                <option value="VA">Virginia</option>

                                                                <option value="WA">Washington</option>

                                                                <option value="WV">West Virginia</option>

                                                                <option value="WI">Wisconsin</option>

                                                                <option value="WY">Wyoming</option>

                                                            </select>
                                                            <span class="help-block"></span>
                                                        </div>

                                                        <div class="span6">
                                                            <label>Country</label> 
                                                            <p class="input-block-level">United States</p>
                                                        </div>
                                                    </div>
                                                    <div class="row-fluid">
                                                        <div class="span6">
                                                            <label>Phone</label>
                                                            <input type="text" name="phone" class="input-block-level">
                                                        </div>
                                                        <div class="span6">
                                                            <label>Email *</label>
                                                            <input type="text" name="email" class="input-block-level">
                                                            <span class="help-block"></span>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="span6">
                                                    <label>Comment</label>
                                                    <textarea name="comment" class="input-block-level order-comment"></textarea>
                                                </div>
                                            </div>

                                            <div class="text-right">* Required</div>
                                        </div>
                                    </div>

                                    <div class="section">
                                        <div class="heading">
                                            <h4>Billing address</h4>
                                        </div>
                                        <div class="content">
                                            <div class="billing-address-different">
                                                <label class="radio" name="billing_address_radios" data-click="hide">
                                                    <input type="radio" name="billing_address_empty" id="same-as-shipping" value="true" checked="">
                                                    Same as shipping address
                                                </label>
                                                <label class="radio" name="billing_address_radios" data-click="show">
                                                    <input type="radio" name="billing_address_empty" id="different" value="false">
                                                    Different
                                                </label>
                                            </div>

                                            <div id="billing-address" class="hide" style="display: none;">
                                                <fieldset>
                                                    <label>Name *</label>
                                                    <input type="text" name="billing_address[name]" class="input-block-level">

                                                    <label>Company</label>
                                                    <input type="text" name="billing_address[company]" class="input-block-level">

                                                    <label>Address line 1 *</label>
                                                    <input type="text" name="billing_address[address_line_1]" class="input-block-level">

                                                    <label>Address line 2 *</label>
                                                    <input type="text" name="billing_address[address_line_2]" class="input-block-level">

                                                    <div class="row-fluid">
                                                        <div class="span6">
                                                            <label>Zip *</label>
                                                            <input type="text" name="billing_address[zip]" class="input-block-level">
                                                        </div>
                                                        <div class="span6">
                                                            <label>City *</label>
                                                            <input type="text" name="billing_address[city]" class="input-block-level">
                                                        </div>
                                                    </div>
                                                    <div class="row-fluid">

                                                        <div class="span6">
                                                            <label>State *</label>
                                                            <select name="billing_address[state]" class="input-block-level">

                                                                <option value="AL">Alabama</option>

                                                                <option value="AK">Alaska</option>

                                                                <option value="AS">American Samoa</option>

                                                                <option value="AZ">Arizona</option>

                                                                <option value="AR">Arkansas</option>

                                                                <option value="CA">California</option>

                                                                <option value="CO">Colorado</option>

                                                                <option value="CT">Connecticut</option>

                                                                <option value="DE">Delaware</option>

                                                                <option value="DC">District of Columbia</option>

                                                                <option value="FM">Federated States of Micronesia</option>

                                                                <option value="FL">Florida</option>

                                                                <option value="GA">Georgia</option>

                                                                <option value="GU">Guam</option>

                                                                <option value="HI">Hawaii</option>

                                                                <option value="ID">Idaho</option>

                                                                <option value="IL">Illinois</option>

                                                                <option value="IN">Indiana</option>

                                                                <option value="IA">Iowa</option>

                                                                <option value="KS">Kansas</option>

                                                                <option value="KY">Kentucky</option>

                                                                <option value="LA">Louisiana</option>

                                                                <option value="ME">Maine</option>

                                                                <option value="MH">Marshall Islands</option>

                                                                <option value="MD">Maryland</option>

                                                                <option value="MA">Massachusetts</option>

                                                                <option value="MI">Michigan</option>

                                                                <option value="MN">Minnesota</option>

                                                                <option value="MS">Mississippi</option>

                                                                <option value="MO">Missouri</option>

                                                                <option value="MT">Montana</option>

                                                                <option value="NE">Nebraska</option>

                                                                <option value="NV">Nevada</option>

                                                                <option value="NH">New Hampshire</option>

                                                                <option value="NJ">New Jersey</option>

                                                                <option value="NM">New Mexico</option>

                                                                <option value="NY">New York</option>

                                                                <option value="NC">North Carolina</option>

                                                                <option value="ND">North Dakota</option>

                                                                <option value="MP">Northern Mariana Islands</option>

                                                                <option value="OH">Ohio</option>

                                                                <option value="OK">Oklahoma</option>

                                                                <option value="OR">Oregon</option>

                                                                <option value="PA">Pennsylvania</option>

                                                                <option value="PR">Puerto Rico</option>

                                                                <option value="RI">Rhode Island</option>

                                                                <option value="SC">South Carolina</option>

                                                                <option value="SD">South Dakota</option>

                                                                <option value="TN">Tennessee</option>

                                                                <option value="TX">Texas</option>

                                                                <option value="UM">U.S. Minor Outlying Islands</option>

                                                                <option value="UT">Utah</option>

                                                                <option value="VT">Vermont</option>

                                                                <option value="VI">Virgin Islands</option>

                                                                <option value="VA">Virginia</option>

                                                                <option value="WA">Washington</option>

                                                                <option value="WV">West Virginia</option>

                                                                <option value="WI">Wisconsin</option>

                                                                <option value="WY">Wyoming</option>

                                                            </select>
                                                            <span class="help-block"></span>
                                                        </div>

                                                        <div class="span6">
                                                            <label>Country</label> 
                                                            <p class="input-block-level">United States</p>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                            </div>
                                            <div class="row-fluid">
                                                <div class="span12 text-right">
                                                    <button id="back" class="btn" type="button">Go back</button>
                                                    <button class="btn btn-primary" type="submit">Continue</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div></div>
                    </div>        
                </div>
            </div>  <!-- the controller has determined which view to be shown in the content -->

            <%@include file="common/footer.jsp" %> <!-- this is the Footer content -->
        </div>
    </body>
</html>
