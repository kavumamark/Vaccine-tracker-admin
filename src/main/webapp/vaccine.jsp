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
  
    </head>
   
    <body>
         <style>
        h3{
            font-color:blue;
           
        }
    </style>
        <h3>VACCINES AVAILABLE </h3>
        <vaccination:select table="vaccine_store" 
                            where="" 
                            displayformat="table" />
    
    </body>
</html>
