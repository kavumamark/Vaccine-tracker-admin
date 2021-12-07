<%-- 
    Document   : taking-vaccine
    Created on : Dec 4, 2021, 9:51:04 AM
    Author     : Shanklin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
        
        <style>
            body,center{
                align-content: center;
                font-family:sans-serif;
               
                margin:auto;
                background-color:azure;
                
            }
            form{
                
            }
        </style>
        
        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration of those taking the vaccine</title>
        
    </head>
    <style>
        body{
            background-image: url("assets/images/img4.jpg");
                
        }
        h1{
            text-align: center;
        }
        form{
            magin-left:30%;
        }
    </style>

   
        
    
        <h1>REGISTER TO BE VACCINATED</h1>
        
        <form action="/Vaccine_Administration/saveV" method="post">
                <table>
                <tr>
                    <td>NIN number:</td>
                    <td><input type="text" name="nin"></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>Health Center:</td>

                    <td><select name="healthcentre" id="center">
                            <option value="MULAGO HOSPITAL">MULAGO HOSPITAL</option>
                            <option value="UNIVERSITY HOSPITAL">UNIVERSITY HOSPITAL</option>
                            <option value="RUBAGA HOSPITAL">RUBAGA HOSPITAL</option>
                            <option value="CASE HOSPITAL">CASE HOSPITAL</option>
                            <option value="MENGO HOSPITAL">MENGO HOSPITAL</option>
                         </select>
                    </td>
                </tr>
                <tr>
                    <td>Date of Administration:</td>
                    <td><input type="date" name="dateofadministration"></td>
                </tr>
                <tr>
                    <td>Batch Number :</td>
                    <td><input type="text" name="batchnumber"></td>
                </tr>

                <tr>
                    <td>Vaccine Administered:</td>
                    <td><input type="text" name="vaccineadministered"></td>
                </tr>
                <tr>
                    
                    <td><input type="submit" name="submit" value="Save"></td>
                    <td><button><a href="/Vaccine_Administration/allVaccinated">View Reports</a></button></td>
                </tr>
            </table>
        </form>
        
        
    </body>
</html>
