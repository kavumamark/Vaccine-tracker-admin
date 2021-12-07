<%-- 
    Document   : update
    Created on : Dec 4, 2021, 6:16:46 PM
    Author     : Mark
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Updating table</title>
         <style>
             h3{
                 font-color: red;
                 text-align: center;
             }
             
        table{ 
           margin-left: 35%;
            
        }
        body{
            background-color: linen;
        }
    </style>
    </head>
    <body>
        
        <h3>UPDATING TABLE</h3>
                </div>
                  
                </div>
               
            </div>
          </div>
         </div>
           <table>
                      <form action="update.jsp" method="post"> 
                          <td><input type ="text" name="Vaccine_Id" value='<%=request.getParameter("Vaccine_Id") %>' hidden>
                         
             
                          <tr>
                              <td><left-align><label for="id">Name_of_Vaccine</label></left-align></td>
                              <td><input type ="text" name="Name_of_Vaccine" value='<%=request.getParameter("Name_of_Vaccine") %>'></td>
                               
                          </tr>       

              
                          <tr>
                              <td><center><label for="inputName">vaccine_status</label></center></td>
                              <td><input type ="text" name="vaccine_status" value='<%=request.getParameter("vaccine_status") %>'></td>
                               
                          </tr>
                                            
                          <tr>
                              <td><left-align><label for="inputName">Vaccine_distributed</label></left-align></td>
                              <td><input type ="text" name="Vaccine_distributed" value='<%=request.getParameter("Vaccine_distributed") %>'></td>
                                                      
                          </tr>
                          <tr>
                              <td><p id="submission"><input type="submit" value="submit"></p></td>
                          </tr>
             
            </table>
             
          </form>
    </body>
</html>
