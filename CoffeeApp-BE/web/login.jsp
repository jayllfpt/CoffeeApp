<%-- 
    Document   : login
    Created on : Aug 28, 2022, 7:30:34 PM
    Author     : tklin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login</h1>
        <form action="login" method="post">
            Enter username: <input type="text" name="username"/>
            <br/>
            Enter password: <input type="text" name="password"/>
            <br/>
            <input type="checkbox" name="rem" value="ON"/>Remember me<br/>
            <input type="submit" value="Login"/>
        </form>
    </body>
</html>
