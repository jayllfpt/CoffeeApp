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
        <form action="LoginServlet" method="post">
            Tên gian hàng: <input type="text" name="shopnametxt"/>
            <br/>
            Tên đăng nhập: <input type="text" name="usernametxt"/>
            <br/>
            Mật khẩu: <input type="password" name="passwordtxt"/>
            <br/>
            <input type="checkbox" name="rem" value="ON"/>Remember me<br/>
            <input type="submit" value="Login"/>
        </form>
    </body>
</html>
