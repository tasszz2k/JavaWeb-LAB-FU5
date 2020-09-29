<%-- 
    Document   : home
    Created on : Sep 27, 2020, 1:52:13 PM
    Author     : TASS
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.servletContext.contextPath}" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My front page - TASS</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" type="text/css" href="${ctx}/template/8596505.design.v26374.css">
       
   
        <script type="text/javascript" async="" src="${ctx}/template/analytics.js"></script>
        <script async="" src="${ctx}/template/gtm.js"></script>
        <script type="text/javascript" src="${ctx}/template/FrontendAppLocalePage.aspx"></script>
        <script type="text/javascript" src="${ctx}/template/frontendApp.min.js"></script>

    </head>

    <body data-pid="410915065" data-iid="">


        <div class="container-fluid site-wrapper">
            <!-- this is the Sheet -->
            <%@include file="/common/header.jsp" %>
            <!-- this is the Header content -->

            <div class="container-fluid content-wrapper" id="content">
                <!-- this is the Content Wrapper -->
                <div class="container">
                    <div class="row-fluid content-inner">
                        <div id="left" class="span9">
                            <!-- ADD "span12" if no sidebar, or "span9" with sidebar -->
                            <div class="wrapper ">
                                <div class="content">
                                    <div class="section article">
                                        <div class="content">
                                            <div class="img-simple span12 ">
                                                <div class="image">
                                                    <a rel="nofollow" data-ss="imagemodal" data-href="${ctx}/template/i284852689410739343._szw360h1280_.jpg" title="Lorem ipsum dolor sit amet"><img src="${ctx}/template/i284852689410739343._szw360h1280_.jpg"></a>
                                                </div>
                                                <div class="image-caption">
                                                    <p class="sub2">Lorem ipsum dolor sit amet</p>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="section">
                                        <div class="content">
                                            <ul class="thumbnails column-article-section">
                                                <c:forEach var="gallery" items="${listGallery}">
                                                    <li class="span4">
                                                    <div class="img-simple span12 ">
                                                        <div class="image">
                                                            <a rel="nofollow" data-ss="imagemodal" data-href="${ctx}/template/${gallery.thumnail}">
                                                                <img src="${ctx}/template/${gallery.thumnail}"></a>
                                                        </div>
                                                    </div>

                                                    <h4>
                                                        <a rel="nofollow" href="gallery?id=${gallery.id}">View ${gallery.title}</a>
                                                    </h4>

                                                    <p>${gallery.description}</p>
                                                </li>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="section article">
                                        <div class="heading">
                                            <h3>About me</h3>
                                        </div>

                                        <div class="content">
                                            <p><span>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip
                                                    ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue
                                                    duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim</span></p>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                        <div id="right" class="span3">
                            <div class="sidebar">
                                <div class="wrapper share-box">
                                    <div class="heading">
                                        <h4>Share this page</h4>
                                    </div>

                                    <div class="content"><span><ul>
                                                <li><a id="share-facebook" href=""><i class="icon-facebook-sign"></i><span>Share on Facebook</span></a>
                                                </li>
                                                <li><a id="share-twitter" href=""><i class="icon-twitter-sign"></i><span>Share on Twitter</span></a></li>
                                                <li><a id="share-google-plus" href=""><i class="icon-google-plus-sign"></i><span>Share on Google+</span></a></li>
                                            </ul>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- the controller has determined which view to be shown in the content -->

            <%@include file="common/footer.jsp" %>
            <!-- this is the Footer content -->
        </div>
                                                                                                                                                                                                wmode="transparent" haspriority="true"></div>-->
    </body>
</html>
