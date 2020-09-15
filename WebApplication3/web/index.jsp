<%-- 
    Document   : index
    Created on : Sep 14, 2020, 11:46:54 AM
    Author     : TASS
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html>
   <head>
      <title> <c:out> Tag Example</title>
   </head>

   <body>
      <c:out value = "${'<tag> , &'}"/>
   </body>
</html>
