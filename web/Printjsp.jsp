<%-- 
    Document   : Printjsp
    Created on : 16 Jan, 2020, 8:57:02 AM
    Author     : lenovo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h1>Org Type : Hotel</h1><br>
        <c:forEach var="i" begin="0" end="${hotelList.size() - 1}">
        <h1>Org Name : ${hotelList.get(i).getDbAlloted()}</h1><br>
        </c:forEach>
    </body>
</html>
