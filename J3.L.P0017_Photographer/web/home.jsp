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
        <meta property="og:site_name" content="PHOTOGRAPHER">
        <meta property="article:publisher" content="https://www.facebook.com/simplesite">
        <meta property="og:locale" content="en-US">
        <meta property="og:url" content="http://us-123photo.simplesite.com/">
        <meta property="og:title" content="View Gallery 1">
        <meta property="og:description" content="Lorem ipsum dolor sit amet - Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation - View Gallery 2 - Lorem ipsum dolor sit amet, consectetuer adipiscin...">
        <meta property="og:image" content="http://cdn.simplesite.com/i/52/62/284852682250740306/i284852689410739116._szw1280h1280_.jpg">
        <meta property="og:updated_time" content="2016-06-18T11:18:27.9845751+02:00">
        <meta property="og:type" content="website">
        <meta name="robots" content="nofollow">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="PHOTOGRAPHER - http://us-123photo.simplesite.com/">
        <link rel="stylesheet" type="text/css" href="${ctx}/template/8596505.design.v26374.css">
        <link rel="canonical" href="http://us-123photo.simplesite.com/">
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
                                                    <a rel="nofollow" data-ss="imagemodal" data-href="http://cdn.simplesite.com/i/52/62/284852682250740306/i284852689410739116._szw1280h1280_.jpg" title="Lorem ipsum dolor sit amet"><img src="${ctx}/template/i284852689410739343._szw360h1280_.jpg"></a>
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
                                                <li><a id="share-facebook" href="http://us-123photo.simplesite.com/#"><i class="icon-facebook-sign"></i><span>Share on Facebook</span></a>
                                                </li>
                                                <li><a id="share-twitter" href="http://us-123photo.simplesite.com/#"><i class="icon-twitter-sign"></i><span>Share on Twitter</span></a></li>
                                                <li><a id="share-google-plus" href="http://us-123photo.simplesite.com/#"><i class="icon-google-plus-sign"></i><span>Share on Google+</span></a></li>
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


        <input type="hidden" id="anti-forgery-token" value="vFZIp11QDd7w1cZjYdzwVVw3rTHgQi1lpMMqomvLq/qGfx85dADIn6rd+jb5+yvdIjnIKNejlFu6vxL7J8Np5XDrvUyMasUYb8PZlmgROpWgWhFTGjCoyYPRNAZ57HUVr4c6QnvYhoYJLJG8dWLP2NhmdVJF+RhKEwkT1Q7ogGGTSddnANm69E10QsexY3DV5L0XqDr1VHHaGc7ZSxM2ktc82EJ4KYkwEXssuv2a0gNK9Zc8XKu5Ft28qiKVqNsj3YTpteTqb5UM9+U6Dtk4R+nJWQ1rw7NgjMDh9hCABmCHxgiQJBhPooojs3CleKjorvDjhc1vLhNfhEdOaEJSAXy1zHip7yoxj/Ybn86swSis7wnW/YTVdMos5ci15FQjTeolT8Jz57u/FccnoChNvFgtsuJZQPsdqHHLuP0Uu9CxAybOYGS1zMenpGZxBp9erddUgOYnodnpaXrd0J4ZHw==">


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
