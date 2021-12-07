<%-- 
    Document   : certificateView
    Created on : Dec 5, 2021, 8:32:05 PM
    Author     : shanklin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>COVID-19 CERTIFICATE</h1>
       
        <%
            String name = request.getParameter("Name");
            String nin = request.getParameter("NIN_number");
            String healthcentre = request.getParameter("Health_centre");
            String dateofadministration = request.getParameter("Date_of_administer");
            String batchnumber = request.getParameter("Batch_number");
            String vaccineadministered = request.getParameter("Vaccine_administered");
            
//            out.println("batch number: "+Batch_number);
        
        %>
        
<!--             bean to display certificate-->
        <jsp:useBean id="v" class="org.health.administration.vaccinatedTagHandler"></jsp:useBean>
        
        
        <!--        set the value of the student-->
        <jsp:setProperty name="v" property="Name" value="${Name}"></jsp:setProperty>
        <jsp:setProperty name="v" property="NIN_number" value="${NIN_number}"></jsp:setProperty>
        <jsp:setProperty name="v" property="Health_centre" value="${Health_centre}"></jsp:setProperty>
        <jsp:setProperty name="v" property="Date_of_administer" value="${Date_of_administer}"></jsp:setProperty>
        <jsp:setProperty name="v" property="Batch_number" value="${Batch_number}"></jsp:setProperty>
        <jsp:setProperty name="v" property="Vaccine_administered" value="${Vaccine_administered}"></jsp:setProperty>
        
<!--        get the value from jbean class-->
        <table>
            <tr>
                <td>NAME:</td>
                <td><jsp:getProperty name="v" property="Name"></jsp:getProperty></td>
            </tr>
            <tr>
                <td>NIN number:</td>
                <td><jsp:getProperty name="v" property="NIN_number"></jsp:getProperty></td>
            </tr>
            <tr>
                <td>Health Centre:</td>
                <td><jsp:getProperty name="v" property="Health_center"></jsp:getProperty></td>
            </tr>
            <tr>
                <td>Date of Administer:</td>
                <td><jsp:getProperty name="v" property="Date_of_administer"></jsp:getProperty></td>
            </tr>
            <tr>
                <td>Batch Number:</td>
                <td><jsp:getProperty name="v" property="Batch_number"></jsp:getProperty></td>
            </tr>
            <tr>
                <td>Vaccine Administered:</td>
                <td><jsp:getProperty name="v" property="Vaccine_administered"></jsp:getProperty></td>
            </tr>
            
             <tr>
                    <td></td>
                    <td><button><a href="/VAC_TRACKER_G18/taking-vaccine.jsp">BACK TO VACCINATION PAGE</a></button></td>
                    <td></td>
              </tr>
        </table>
        
         <%@taglib uri="WEB-INF/vaccinated_library.tld" prefix="a" %>
         <a:vaccinatedTagHandler nin="${NIN_number}" name="${Name}" healthcentre="${Health_centre}" dateofadministration="${Date_of_administer}" 
             batchnumber="${Batch_number}" vaccineadministered="${Vaccine_administered}"></a:vaccinatedTagHandler>
             
         
    </body>
</html>
