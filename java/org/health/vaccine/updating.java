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
import java.sql.SQLException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author Mark
 */
public class updating extends SimpleTagSupport {

    private String table;
    private String where;
    private String newValue1;
    private String newValue2;
    private String newValue3;

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        
        try {
           Class.forName("com.mysql.jdbc.Driver");
    }catch (ClassNotFoundException ex){
        out.println(ex);
    }
        try{
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/vaccine_tracker",
                    "root",
                    ""
                );
            String queryUpdate = "UPDATE" + table + " SET name ='"+ newValue1 + "',status='"+newValue2+"',vaccine_distributed="+newValue3+" WHERE id= " + where;
            PreparedStatement preparedStmt = con.prepareStatement(queryUpdate);
            preparedStmt.execute();
            
           while(results.next()){
                out.println(results.getString("Name_of_vaccine"));
                out.println(results.getString("vaccine_status"));
                out.println(results.getString("Vaccine_distributed"));
                
                out.println("<a href='update.jsp?id="+

                        results.getString("Vaccine_Id")+"&Vaccine_Id="+
                        results.getString("Name_of_vaccine")+"&Name_of_vaccine="+
                        results.getString("vaccine_status")+"&vaccine_status="+
                        results.getString("Vaccine_distributed")+"&Vaccine_distributed'>edit</a>");
            }
            
        }catch (SQLException ex) {
            out.println(ex);
        }
        
    }
    public void setTable(String table) {
        this.table = table;
    }

    public void setWhere(String where) {
        this.where = where;
    }
    
    public void setNewValue1(String newvalue1) {
        this.where = where;
    }
    public void setNewValue2(String newvalue2) {
        this.where = where;
    }
    public void setNewValue3(String newvalue3) {
        this.where = where;
    }
    
}
