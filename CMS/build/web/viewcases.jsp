<%-- 
    Document   : viewcases
    Created on : Apr 11, 2022, 12:12:25 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view cases Page</title>
        <style>
            .container{
                margin:10px;
                width:90em;
                height:10vh;
                display:flex;
                align-items:center;
                justify-content: center;
                background-color: black;
                color: white;
                border-bottom: 2px solid black;
            }
            .logo{
                width:50em;                
                justify-content: flex-start;
            }           
            .container_two{
                margin:10px;
                width:90em;
                height:10vh;
                display:flex;
                align-items:center;
                justify-content: space-around;                
            }
            .header_button,.logout{
                width:120px;
                height:40px;
                cursor: pointer;
                background-color: black;
                color: white;
                border-radius: 10px;
            }
            a{
                text-decoration: none;
                color:white;
            }
            .a{
                border:5px solid black;
                text-decoration: none;
                font-size:36px;
                color:black;
            }
            .viewstaff{
                background-color: black;
                color:white;
                border:1px solid black;
                cursor:pointer;
            }
            h1{
                text-align: center;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1 class="logo">CRIME RECORDS MANAGEMENT SYSTEM</h1>            
                <button class="logout"><a href="logout">logout</a></button>
            
        </div>
        
        <div class="container_two">
            <button class="header_button"><a href="index.html">Home</a></button>   
            <button class="header_button"><a href="addstaff.jsp">Add Staff</a></button>   
            <form action="viewstaff"><button class="header_button"><input class="viewstaff" type="submit" value="View Staff"></button></form>   
            <button class="header_button"><a href="viewcases.jsp">View Cases</a></button>               
        </div>
        <h1>No case registered yet</h1>
    </body>
</html>
