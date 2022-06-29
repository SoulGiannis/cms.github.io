<%-- 
    Document   : addstaff
    Created on : Apr 10, 2022, 11:24:43 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add staff Page</title>
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
            
            /*form*/
            .container_main{
                display:flex;
                align-items:center;
                justify-content: center;
                width:90em;
                height:80vh;
            }
            .container_form{                
                display:flex;
                align-items:center;
                justify-content: center;
                width:50em;
                height:70vh;
                background-color:whitesmoke;
            }
            table{
                display:flex;
                align-items:center;
                justify-content: center;
                margin:50px;
            }
            td,th{
                width:200px;
                height:70px;
                font-size:26px;
            }
            #input{
                width:200px;
                height:40px;
            }
            .viewstaff{
                background-color: black;
                color:white;
                border:1px solid black;
                cursor:pointer;
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
        
        <div class="container_main">
        <div class="container_form">
            <form action="addstaff" method="post">
            <table>
                <tr>
                    <th>First name</th>
                    <td><input id="input" type="text" name="first_name"></td>
                </tr>
                <tr>
                    <th>Last name</th>
                    <td><input id="input" type="text" name="last_name"></td>
                </tr>
                <tr>
                    <th>Designation</th>
                    <td><input id="input" type="text" name="designation"></td>
                </tr>
                <tr>
                    <th>Gender</th>
                    <td><input type="radio" value="male" name="gender">Male</td>
                    <td><input type="radio" value="female" name="gender">Female</td>
                </tr>
                <tr>
                    <th>Staff number</th>
                    <td><input id="input" type="number" name="staff_number"></td>                    
                </tr>
                <tr>
                    <th><input id="input" type="submit" value="Add"></th>                                       
                </tr>                
            </table>
        </form>
        </div>
        </div>
    </body>
</html>
