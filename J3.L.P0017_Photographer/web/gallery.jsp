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
        <meta property="og:site_name" content="PHOTOGRAPHER">
        <meta property="article:publisher" content="https://www.facebook.com/simplesite">
        <meta property="og:locale" content="en-US">
        <meta property="og:url" content="http://us-123photo.simplesite.com/410915248">
        <meta property="og:title" content="Gallery 1">
        <meta property="og:image" content="http://cdn.simplesite.com/i/52/62/284852682250740306/i284852689410739443._szw360h1280_.jpg">
        <meta property="og:image" content="http://cdn.simplesite.com/i/52/62/284852682250740306/i284852689410739336._szw360h1280_.jpg">
        <meta property="og:image" content="http://cdn.simplesite.com/i/52/62/284852682250740306/i284852689410739338._szw360h1280_.jpg">
        <meta property="og:image" content="http://cdn.simplesite.com/i/52/62/284852682250740306/i284852689410739339._szw360h1280_.jpg">
        <meta property="og:image" content="http://cdn.simplesite.com/i/52/62/284852682250740306/i284852689410739343._szw360h1280_.jpg">
        <meta property="og:image" content="http://cdn.simplesite.com/i/52/62/284852682250740306/i284852689410739585._szw360h1280_.jpg">
        <meta property="og:image" content="http://cdn.simplesite.com/i/52/62/284852682250740306/i284852689425710823._szw360h1280_.jpg">
        <meta property="og:image" content="http://cdn.simplesite.com/i/52/62/284852682250740306/i284852689425710847._szw360h1280_.jpg">
        <meta property="og:updated_time" content="2016-06-18T11:18:47.4070731+02:00">
        <meta property="og:type" content="website">
        <meta name="robots" content="nofollow">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="PHOTOGRAPHER - http://us-123photo.simplesite.com/">
        <link rel="stylesheet" type="text/css" href="${ctx}/template/8596505.design.v26374.css">
        <link rel="canonical" href="http://us-123photo.simplesite.com/410915248">
        <link rel="shortcut icon" href="data:image/x-icon;,">
        <script type="text/javascript" async="" src="${ctx}/template/analytics.js"></script>
        <script async="" src="${ctx}/template/gtm.js"></script>
        <script type="text/javascript" src="${ctx}/template/FrontendAppLocalePage.aspx"></script>
        <script type="text/javascript" src="${ctx}/template/frontendApp.min.js"></script>
        <script type="text/javascript">
            if (typeof window.jQuery == "undefined") {
                (function () {
                    var a = document.createElement("script");
                    a.type = "text/javascript";
                    a.src = "/c/js/version3/frontendApp/init/frontendApp.min.js?_v=b8e7069b6e4fecc37c8394dc153e5d4f";
                    document.getElementsByTagName('head')[0].appendChild(a);
                })();
            }
        </script>

        <script type="text/javascript">
            var css_simplesite_com_fallback_element = document.getElementById('css_simplesite_com_fallback');
            if (typeof css_simplesite_com_fallback_element !== 'undefined' && css_simplesite_com_fallback_element !== null) {
                var isVisible = css_simplesite_com_fallback_element.offsetParent !== null
                if (isVisible) {
                    var head = document.head,
                            link = document.createElement('link');

                    link.type = 'text/css';
                    link.rel = 'stylesheet';
                    link.href = '{/d/designs/8596505.design.v26374.css}';

                    head.appendChild(link);
                }
            }
        </script>
        <style type="text/css">
            .fancybox-margin {
                margin-right: 17px;
            }
        </style>
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
                                            <div class="slideshow" data-ss="albumslideshow"><object width="100%" height="425px" id="flash-3872" type="application/x-shockwave-flash" data="${ctx}/template/fotoalbum20110225b.swf" style="visibility: visible;"><param name="wmode" value="transparent"><param name="allowfullscreen" value="true"><param name="quality" value="best"><param name="allowscriptaccess" value="always"><param name="flashvars" value="mode=normal&amp;xmlurl=http%3A%2F%2Fwww.simplesite.com%2Fuserpages%2Fpages%2FPhotoAlbumSlideShowXml.aspy%3Fid%3D410915248%26cid%3D10678034&amp;imageid=94653683"></object></div>
                                        </div>
                                    </div>
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
                                                <li><a id="share-facebook" href="http://us-123photo.simplesite.com/410915248#"><i class="icon-facebook-sign"></i><span>Share on Facebook</span></a>
                                                </li>
                                                <li><a id="share-twitter" href="http://us-123photo.simplesite.com/410915248#"><i class="icon-twitter-sign"></i><span>Share on Twitter</span></a></li>
                                                <li><a id="share-google-plus" href="http://us-123photo.simplesite.com/410915248#"><i class="icon-google-plus-sign"></i><span>Share on Google+</span></a></li>
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


        <input type="hidden" id="anti-forgery-token" value="vFZIp11QDd7w1cZjYdzwVVw3rTHgQi1lpMMqomvLq/qGfx85dADIn6rd+jb5+yvdIjnIKNejlFu6vxL7J8Np5XDrvUyMasUYb8PZlmgROpWgWhFTGjCoyYPRNAZ57HUVr4c6QnvYhoYJLJG8dWLP2NhmdVJF+RhKEwkT1Q7ogGGTSddnANm69E10QsexY3DV5L0XqDr1VHHaGc7ZSxM2ktc82EJ4KYkwEXssuv2a0gNK9Zc8XKu5Ft28qiKVqNsj3YTpteTqb5UM9+U6Dtk4R+nJWQ1rw7NgjMDh9hCABmCHxgiQJBhPooojs3CleKjorvDjhc1vLhNfhEdOaEJSAXy1zHip7yoxj/Ybn86swSis7wnW/YTVdMos5ci15FQjTeolT8Jz57u/FccnoChNvE6mgDNYAuAiuPkAPFrltn8Jw0BGrPWi2hzMvZ18t6D5jGd441UVkKxcackgBiYs+A==">


        <script>
            dataLayer = [{
                    "SiteVer": "US",
                    "MainOrUser": "UserPage",
                    "PreOrFre": "Free",
                    "Language": "en",
                    "Culture": "en-US",
                    "Instrumentation": "ShowPage",
                    "Market": "DK"
                }];
        </script>
        <!-- Google Tag Manager -->
        <noscript>&lt;iframe src="//www.googletagmanager.com/ns.html?id=GTM-2MMH"
        height="0" width="0" style="display:none;visibility:hidden"&gt;&lt;/iframe&gt;</noscript>
        <script>
            (function (w, d, s, l, i) {
                {
                    w[l] = w[l] || [];
                    w[l].push({
                        'gtm.start': new Date().getTime(),
                        event: 'gtm.js'
                    });
                    var f = d.getElementsByTagName(s)[0],
                            j = d.createElement(s),
                            dl = l != 'dataLayer' ? '&l=' + l : '';
                    j.async = true;
                    j.src =
                            '//www.googletagmanager.com/gtm.js?id=' + i + dl;
                    f.parentNode.insertBefore(j, f);
                }
            })(window, document, 'script', 'dataLayer', 'GTM-2MMH');
        </script>
        <!-- End Google Tag Manager -->


        <!-- Remove after blog exp concludes -->
        <!-- Remove after expeirment is done-->

        <div id="sm2-container" class="movieContainer high_performance" style="z-index: 10000; position: fixed; width: 8px; height: 8px; bottom: 0px; left: 0px; overflow: hidden; visibility: hidden;"><embed name="sm2movie" id="sm2movie" src="/Images/sm297/soundmanager2_flash9.swf" quality="high" allowscriptaccess="always" bgcolor="#ffffff" pluginspage="www.macromedia.com/go/getflashplayer" title="JS/Flash audio component (SoundManager 2)" type="application/x-shockwave-flash"
                                                                                                                                                                                                        wmode="transparent" haspriority="true"></div>
    </body>

</html>
