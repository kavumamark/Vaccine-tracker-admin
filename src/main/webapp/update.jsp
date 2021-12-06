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
    </head>
    <body>
         <div class="page-wrapper">
       
        
         
        <div class="container-fluid">
         <div class="bg-color-red"> 
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-body">
                    <h2 class="card-title mb-1">
                        <font color="red"><align-center>UPDATING TABLE</font></left-align></h2>
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
