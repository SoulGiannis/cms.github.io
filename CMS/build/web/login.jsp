<%-- 
    Document   : login
    Created on : Apr 11, 2022, 1:42:34 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <style>
            .container{
                width:90em;
                height:80vh;                    
                display: flex;
                align-items: center;
                justify-content: center;
            }
            #input{
                width:200px;
                height:40px;
            }
            h1{
                text-align: center;
            }
        </style>
    </head>
    <body>
        <h1> Crime Management System</h1>
        <div class="container">            
            <form action="login">
                Username<input id="input" type="text" name="username"><br><br>
                Password<input id="input" type="password" name="password"><br>
                <input type="submit" value="login">
            </form>
        </div>
    </body>
</html>
