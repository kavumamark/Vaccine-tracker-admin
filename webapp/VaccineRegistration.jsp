<%-- 
    Document   : VaccineRegistration
    Created on : Dec 4, 2021, 3:54:24 PM
    Author     : Mark
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="WEB-INF/vaccine.tld" prefix="vaccination" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>vaccinereg jsp</title>
    </head>
    <body>
        <vaccination:insert table="vaccine_store"
                  value1='<%= request.getParameter("Name_of_vaccine") %>'
                  value2='<%= request.getParameter("vaccine_status") %>'
                  value3='<%= request.getParameter("Vaccine_distributed") %>'
        />
                  <jsp:include page="vaccine.jsp" />
    </body>
</html>
