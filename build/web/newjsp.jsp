<%-- 
    Document   : newjsp
    Created on : 16 Jan, 2020, 8:31:22 PM
    Author     : lenovo
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #filter{
                border-color :#c40000;
            }
        </style>
    </head>
    <script type="text/javascript">
        function change(arr){
            var el = document.getElementById('sel');
            el.options.length = 0;
            for(var i = 0; i < arr.length; i++){
                el.options[el.options.length] = new Option(arr[i], arr[i]);
            }
        }
    </script>
    <body>
        <form action="dbServlet" method="post" style="text-align: center">
        <div><h1>Zero Hunger</h1></div>
        <b>Delivery Boy Name:</b>
        <input type="text" name="d_name" style="margin-left: 60px;" <c:if test="${(\"\").equals(dbName)}">id="filter"</c:if> <c:if test="${!(\"\").equals(dbName)}">value="${dbName}"</c:if>>
        <br><br>
        <b>Age:</b>
        <input type="text" name="age" style="margin-left: 60px" <c:if test="${(\"\").equals(age)}">id="filter"</c:if> <c:if test="${!(\"\").equals(age)}">value="${age}"</c:if>>
        <br><br>
        <b>Adhar Number:</b>
        <input type="text" name="adhar" style="margin-left: 60px" <c:if test="${(\"\").equals(adhar)}">id="filter"</c:if> <c:if test="${!(\"\").equals(adhar)}">value="${adhar}"</c:if>>
        <br><br>
        <b>Phone:</b>
        <input type="text" name="phone" style="margin-left: 60px" <c:if test="${(\"\").equals(phone)}">id="filter"</c:if> <c:if test="${!(\"\").equals(phone)}">value="${phone}"</c:if>><br><br>
        <b>Email</b>
            <input type="text" name="email" style="margin-left: 60px" <c:if test="${!(\"\").equals(email)}">value="${email}"</c:if>><br><br>
        <b>Shift: </b>
        <input type="radio" name="shift" onclick='change(["r1", "r2", "r3"])' value="Morning">Morning<br>
        <input type="radio" name="shift" onclick='change(["h1", "h2", "h3"])' value="Night">Night<br><br>
        <b>Hotel:</b>
        <select name="hotel">
            <c:if test="${hotelList.size() != 0}">
                <c:forEach var="i" begin="0" end="${hotelList.size() - 1}">
                    <option value="${hotelList.get(i).getOrgName()}" <c:if test="${hotelList.get(i).getDbAlloted() > 1}">disabled</c:if>>${hotelList.get(i).getOrgName()}</option>
                </c:forEach>
            </c:if>
        </select><br><br>
        <b>Rain Basera:</b>
        <select id="sel" name="orgName">
        </select><br><br>
        <c:if test="${errorMessage != null}">
            <div style="color:#c40000">${errorMessage}</div>
        </c:if>
        <br>
        <input type="submit" value="Submit">
        </form>
    </body>
</html>
