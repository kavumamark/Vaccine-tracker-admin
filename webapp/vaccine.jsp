<%-- 
    Document   : vaccine
    Created on : Dec 4, 2021, 1:34:43 PM
    Author     : Mark
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="WEB-INF/vaccine.tld" prefix="vaccination" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>vaccine</title>
            <style>
                h3{
                    margin-left: 30%;
                }
        h2{
            text-decoration: darkblue;
           text-align: center;
        }
        body{
            background-size: cover;
            background-color: linen;
            background-image: url("assets/images/img1.jpg");
        }
    </style>
  
    </head>
   
    <body>
     
        <h2>VACCINES AVAILABLE </h2>
        <h3>
        <vaccination:select table="vaccine_store" 
                            where="" 
                            displayformat="table" />
        </h3>    
    </body>
</html>
