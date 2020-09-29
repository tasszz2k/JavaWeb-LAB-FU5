<%-- 
    Document   : gallery
    Created on : Sep 27, 2020, 2:27:13 PM
    Author     : TASS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.servletContext.contextPath}" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${galleryModel.title} - TASS</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="${ctx}/template/8596505.design.v26374.css">
        <script type="text/javascript" async="" src="${ctx}/template/analytics.js"></script>
        <script async="" src="${ctx}/template/gtm.js"></script>
        <script type="text/javascript" src="${ctx}/template/FrontendAppLocalePage.aspx"></script>
        <script type="text/javascript" src="${ctx}/template/frontendApp.min.js"></script>


        <!--slide CSS-->
        <style type="text/css">
            /*
essential styles:
these make the slideshow work
            */

            #slides {
                position: relative;
                height: 300px;
                padding: 0px;
                margin: 0px;
                list-style-type: none;
            }

            .slide {
                position: absolute;
                left: 0px;
                top: 0px;
                width: 100%;
                height: 100%;
                opacity: 0;
                z-index: 1;

                -webkit-transition: opacity 0.75s;
                -moz-transition: opacity 0.75s;
                -o-transition: opacity 0.75s;
                transition: opacity 0.75s;
            }

            .showing {
                opacity: 1;
                z-index: 2;
            }
            /*
            non-essential styles:
            just for appearance; change whatever you want
            */

            /*            .slide {
                            font-size: 40px;
                            padding: 40px;
                            box-sizing: border-box;
                            background: #333;
                            color: #fff;
                        }*/
        </style>
        <!--End slide CSS-->




    </head>

    <body data-pid="410915248" data-iid="">


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
                            <div class="wrapper photo-album photo-album-exhibition">
                                <div class="heading">
                                    <h1 class="page-title">${galleryModel.title}</h1>
                                </div>

                                <div class="content">
                                    <!-- Slideshow -->
                                    <div class="section">
                                        <div class="content">
                                            <div class="slideshow" data-ss="albumslideshow" style="width:100%; height:425px;">
                                                <c:set var="index" value="1"/>
                                                <ul id="slides">
                                                    <c:forEach var="photo" items="${galleryModel.photos}">
                                                        <c:if test="${index eq 1}">
                                                            <li class="slide showing">
                                                            </c:if>
                                                            <c:if test="${index ne 1}">
                                                            <li class="slide">
                                                            </c:if>
                                                            <img style="width:100%; height:425px;" src="${ctx}/template/${photo.image}">
                                                        </li>
                                                        <c:set var="index" value="${index + 1}"/>
                                                    </c:forEach>     
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!--end slideshow-->
                                    <div class="section">
                                        <div class="content">

                                            <c:set var="index" value="1"/>
                                            <c:forEach var="photo" items="${galleryModel.photos}">
                                                <c:if test="${index%4 eq 1}">
                                                    <ul class="thumbnails" data-ss="">
                                                    </c:if>

                                                    <li class="span3">
                                                        <div>
                                                            <!--<div class="thumbnail">&nbsp;-->
                                                                <!--<a rel="nofollow" href=""><img src="${ctx}/template/${photo.image}"></a>-->
                                                            <div class="image">
                                                                <a rel="nofollow" data-ss="imagemodal" data-href="${ctx}/template/${photo.image}">
                                                                    <img src="${ctx}/template/${photo.image}"></a>
                                                            </div>
                                                            <!--</div>-->
                                                        </div>
                                                    </li>
                                                    <c:if test="${index%4 eq 0 || index eq galleryModel.photos.size()}">
                                                    </ul>
                                                </c:if>

                                                <c:set var="index" value="${index + 1}"/>
                                            </c:forEach>
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
                                                <li><a id="share-facebook" href="#"><i class="icon-facebook-sign"></i><span>Share on Facebook</span></a>
                                                </li>
                                                <li><a id="share-twitter" href="#"><i class="icon-twitter-sign"></i><span>Share on Twitter</span></a></li>
                                                <li><a id="share-google-plus" href="#"><i class="icon-google-plus-sign"></i><span>Share on Google+</span></a></li>
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


        <!--Slide JS-->
        <script type="text/javascript">
            console.log("loaded");
            var slides = document.querySelectorAll('#slides .slide');
            var currentSlide = 0;
            var slideInterval = setInterval(nextSlide, 1000);

            function nextSlide() {
                console.log("next");
                slides[currentSlide].className = 'slide';
                currentSlide = (currentSlide + 1) % slides.length;
                slides[currentSlide].className = 'slide showing';
            }
        </script>
        <!--End Slide JS-->

    </body>

</html>
