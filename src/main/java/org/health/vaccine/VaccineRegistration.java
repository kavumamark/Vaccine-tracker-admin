/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.health.vaccine;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author Mark
 */
public class VaccineRegistration extends SimpleTagSupport {

    private String table;
    private String value1;
    private String value2;
    private String value3;
    

   
    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        
        try {
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
            String query = "INSERT INTO " + table + "(Name_of_vaccine,vaccine_status,Vaccine_distributed) VALUES('" + value1 + "','" + value2 + "'," + value3 + ")";
            
            PreparedStatement preparedStmt = con.prepareStatement(query);
            preparedStmt.execute();
           
        } catch (SQLException ex) {
            out.println(ex);
        }
         
    }

    public void setTable(String table) {
        this.table = table;
    }

    public void setValue1(String value1) {
        this.value1 = value1;
    }
    
    public void setValue2(String value2) {
        this.value2 = value2;
    }
    
    public void setValue3(String value3) {
        this.value3 = value3;
    }
    
}
