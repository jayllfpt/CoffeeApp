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
        <% 
            String checkShop = (String)request.getAttribute("checkShop");
            if(checkShop=="false"){ %> 
                <p>Không tìm thấy tên Shop</p>
        <%
            }
            String checkAcc = (String)request.getAttribute("checkAcc");
            if (checkAcc!=null && checkShop == null){
                if(checkAcc=="false"){ %> 
                <p>Không tìm thấy nhân viên</p>
        <%
                }
            }

        %>
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
