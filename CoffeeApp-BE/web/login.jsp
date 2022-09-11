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
        <style> 
            body{
                display: flex;
                align-items: center;
                justify-content: center;
                
                
            }
            .box-center{
                margin-top: 150px;
                border-radius: 5px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
                text-align: center;
                width: 350px;
                height: 370px;     
                background-color: rgb(255, 255, 255);           
            }
            .input-login{
                padding: 0px 30px;
            }
            .inline{
                display: flex;
                justify-content: space-between
            }
            .notify{
                background-color: rgba(201, 76, 76, 0.2);
                margin: 0%;
                padding: 5px 0px;
                
            }
            body::after{
                content : "";
                display: block;
                position: absolute;
                top: 0;
                left: 0;
                background-image: url(images/mat-thang-Quang.jpg); 
                background-size: 100%;
                width: 100%;
                height: 100%;
                opacity : 0.5;
                z-index: -1;
                
            }
            body img{
                position: relative;
            }
        </style>
    </head>
    <body>
        <div class="box-center">
            <h1>Login</h1>
            <form action="LoginServlet" method="post">
                <div class="input-login"> 
                    <div class="inline">
                        Tên gian hàng: <input type="text" name="shopnametxt"/>
                    </div>
                    <br/>
                    <br>
                    <div class="inline">
                        Tên đăng nhập: <input type="text" name="usernametxt"/>
                    </div>                    
                    <br/>
                    <br>
                    <div class="inline">
                        Mật khẩu: <input type="password" name="passwordtxt"/>
                    </div>                    
                    <br/>
                    <%
                        String checkShop = (String) request.getAttribute("checkShop");
                        if (checkShop == "false") { %> 
                    <p class="notify">Không tìm thấy tên Shop</p>
                    <%
                        }
                        String checkAcc = (String) request.getAttribute("checkAcc");
                        if (checkAcc != null && checkShop == null) {
                            if (checkAcc == "false") { %> 
                    <p class="notify">Không tìm thấy nhân viên</p>
                    <%
                            }
                        }

                    %>
                    <br>
                    <div class="inline">
                        <div>
                            <input type="checkbox" name="rem" value="ON"/>
                            Duy trì đăng nhập
                        </div>
                        <a href="#"> Quên mật khẩu</a>
                    </div>                    
                    <br>
                    <input type="submit" value="Login"/>
                </div>
            </form>
        </div>
    </body>
</html>
