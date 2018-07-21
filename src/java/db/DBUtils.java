/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Sandalu
 */
public class DBUtils {
//    create the DB Connection
    public static PreparedStatement getPreparedStatement(String sql){
        PreparedStatement ps=null;
        Connection con=null;
        String user="root";
        String pass="";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crud_news",user,pass);
            ps=con.prepareStatement(sql);
        } catch (Exception ex) {
            Logger.getLogger(DBUtils.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ps;
    }
}
