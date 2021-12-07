<%-- 
    Document   : Registration
    Created on : Dec 4, 2021, 4:48:38 PM
    Author     : Mark
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
     
    </head>
    <body>
      
           <table>
                      <form action="VaccineRegistration.jsp" method="post"> 
                         
             
              <div class ="form-group col-md-12">
                          <tr>
                              <td><center><label for="inputName">Name_of_vaccine</label></center></td>
                              <td><input name="Name_of_vaccine" type="name" class="form-control" id="inputName" placeholder="Enter name"></td>
                               
                          </tr>
              </div>
                              <div class ="form-group col-md-12">
                          <tr>
                              <td><left-align><label for="inputName">vaccine_status</label></left-align></td>
                              <td><input name="vaccine_status" type="name" class="form-control" id="inputName" placeholder="Enter status"></td>
                              
                              
                                                            
                          </tr>
                          
                            <tr>
                              <td><left-align><label for="inputName">Vaccine_distributed</label></left-align></td>
                              <td><input name="Vaccine_distributed" type="name" class="form-control" id="inputName" placeholder="Enter status"></td>
                              
                              
                                                            
                          </tr>
                          
                          
              </div>
           
            </table>
            <div class="col-3">
                            <div class="form-group">
                                <div class="pt-3 d-grid">
                                    <left-align><button
                                        class="btn btn-block btn-lg btn-info"
                                        type="submit">   Submit
                                        </button></left-align>
                                </div>
                            </div>
            </div>
          </form>
    </body>
</html>
