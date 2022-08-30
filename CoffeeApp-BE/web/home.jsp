<%-- 
    Document   : home
    Created on : Aug 30, 2022, 9:14:57 AM
    Author     : tklin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Home ${sessionScope.account.empLName}</h1>
        <jsp:useBean id="db" class="dal.TypeDAO"/>
        <c:forEach items="${db.getAll()}" var="t">
            <a href="?typeid=${t.typeID}">${t.typeName}</a>
        </c:forEach>
        <c:forEach items="${requestScope.item}" var="i">
                <p>${i.itemName}</p>
        </c:forEach>

    </body>

</html>


