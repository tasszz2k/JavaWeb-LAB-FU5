<%-- 
    Document   : home
    Created on : Oct 4, 2020, 10:51:42 PM
    Author     : TASS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.servletContext.contextPath}" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0049)http://us-123-electronic.simplesite.com/423612434 -->
<html lang="en-US" class=""><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact -#TASS</title>

        <link rel="stylesheet" type="text/css" href="${ctx}/template/10449703.design.v27526.css">

        <script type="text/javascript" async="" src="${ctx}/template/analytics.js"></script>
        <script async="" src="${ctx}/template/gtm.js"></script>
        <script type="text/javascript" src="${ctx}/template/FrontendAppLocalePage.aspx"></script>
        <script type="text/javascript" src="${ctx}/template/frontendApp.min.js"></script>
    </head>
    <body data-pid="423612434" data-iid="">


        <div class="container-fluid site-wrapper"> <!-- this is the Sheet -->
            <%@include file="common/header.jsp" %><!-- this is the Header content -->

            <div class="container-fluid content-wrapper" id="content"> <!-- this is the Content Wrapper -->
                <div class="container">
                    <div class="row-fluid content-inner">
                        <div id="left" class="span9"> <!-- ADD "span12" if no sidebar, or "span9" with sidebar -->
                            <div class="wrapper contact">
                                <div class="heading">
                                    <h1 class="page-title">Contact</h1>
                                </div>

                                <div class="content">
                                    <div class="section">
                                        <div class="content">
                                            <div class="span12 contact-text">
                                                <h4>Electronics Online Store</h4>
                                                <p>Address:<br>City:<br>Country:</p> <p>Tel: 123456<br>Email: your-email@your-email.com</p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="section contact-form"><div class="content"><div class="alert alert-success hide">
                                                Thank you for your message.
                                            </div>
                                            <div class="alert alert-error hide">
                                                <button type="button" class="close">×</button>
                                            </div>
                                            <p>Write your message here. Fill out the form:</p>
                                            <form>
                                                <fieldset>
                                                    <div class="row-fluid">
                                                        <div class="span6">
                                                            <input type="text" name="author[name]" placeholder="Write your name here">
                                                            <span class="help-block"></span>
                                                        </div>
                                                        <div class="span6">
                                                            <input type="text" name="author[email]" placeholder="Write your email here">
                                                            <span class="help-block"></span>
                                                        </div>
                                                    </div>
                                                    <div class="row-fluid">
                                                        <div class="span12">
                                                            <textarea name="text" placeholder="Write your message here"></textarea>
                                                            <span class="help-block"></span>
                                                        </div>
                                                    </div>
                                                    <div id="recaptcha" class="row-fluid"></div>       
                                                    <div class="row-fluid">
                                                        <div class="span12">
                                                            <button class="btn btn-primary pull-right" type="submit" data-default="Send - Click here" data-progress="&lt;i class=&#39;icon-spin icon-spinner&#39;&gt;&lt;/i&gt; Sending" data-error="Error sending message" data-success="&lt;i class=&#39;icon-ok&#39;&gt;&lt;/i&gt; Sent">Send - Click here</button>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                            </form></div></div>
                                </div>


                            </div>
                        </div>
                        <%@include file="common/aside.jsp" %>
                    </div>        
                </div>
            </div>  <!-- the controller has determined which view to be shown in the content -->

            <%@include file="common/footer.jsp" %> <!-- this is the Footer content -->
        </div>
    </body>
</html>
