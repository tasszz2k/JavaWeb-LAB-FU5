<%-- 
    Document   : aside
    Created on : Sep 14, 2020, 10:49:44 PM
    Author     : TASS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="aside">
            <!--The most recent news-->
            <div>
                <p class="aside-banner-text">Digital News</p>
                <p>${mostRecentNews.description}</p>
            </div>
            <!--Search news by new title-->
            <div>
                <p class="aside-search">Search</p>
                <form class="flex" method="GET" action="search">
                    <input type="text" class="search-input search" name="keyword">
                    <input type="submit" class="search-btn" value="Go">
                </form>
            </div>
            <!--Top 5 most recent news-->
            <div>
                <p class="last-articles">Last Articles</p>
                <ul class="list-reset">
                    <c:forEach var="news" items="${listRecentNews}">
                        <li class="list-news-item">
                            <a href="view?id=${news.id}">${news.title}</a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </body>
</html>
