/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.health.vaccine;

import static com.sun.tools.javac.tree.TreeInfo.name;
import java.sql.Statement;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import static javax.ws.rs.core.Response.status;
import static javax.ws.rs.core.Response.status;

/**
 *
 * @author Mark
 */
public class Vaccine extends SimpleTagSupport {

    private String table;
    private String where;
    private String displayformat;

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        
        try{
           Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
           out.println(ex);
        }
        
        try{
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/vaccine_tracker",
                    "root",
                    ""
                );
            
            Statement st = con.createStatement();
            ResultSet results = st.executeQuery("SELECT * FROM " + table);
            out.print("<table border=4 style=font-style");
            out.print("<tr>"
                  +"<th>Vaccine_Id</th>"
                     +"<th>Name_of_vaccine</th>"
                     +"<th>vaccine_status</th>"
                     +"<th>Vaccine_distributed</th>"
                 
                      +"</tr>"
            );
           
            while(results.next()){
                String Vaccine_Id=results.getString("Vaccine_Id");
                String Name_of_vaccine=results.getString("Name_of_vaccine");
                String vaccine_status=results.getString("vaccine_status");
                String Vaccine_distributed=results.getString("Vaccine_distributed");
               
                out.println("<tr>"
                        + "<td>" +Vaccine_Id+"</td>"
                        + "<td>" +Name_of_vaccine+"</td>"
                        + "<td>" +vaccine_status+"</td>"
                        + "<td>" +Vaccine_distributed+"</td>"
                        + "<td>" +"<a href=update.jsp?id="+"</td>");
  
                
                out.println("<a href='update.jsp?id="+

                        results.getString("Vaccine_Id")+"&name="+
                        results.getString("Name_of_vaccine")+"&status="+
                        results.getString("vaccine_status")+"&status="+
                        results.getString("Vaccine_distributed")+"'>edit</a>");
            }
            
        } catch (SQLException ex) {
            out.println(ex);
        }
        
       
    }

    public void setTable(String table) {
        this.table = table;
    } 

    public void setWhere(String where) {
        this.where = where;
    }

    public void setDisplayformat(String displayformat) {
        this.displayformat = displayformat;
    }
    
}
