/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ViruSs0209
 */
public class DBContext {
    
    protected Connection connection;
    private static DBContext instance;

    public DBContext() throws Exception {
        try {
            String url = "jdbc:sqlserver://localhost:1433;databaseName=Blog";
            String user = "sa";
            String pass = "123456";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (Exception ex) {
            throw ex;
        }
    }

    public static DBContext getInstance() throws Exception {
        if (instance == null) {
            try {
                instance = new DBContext();
            } catch (Exception ex) {
                throw ex;
            }
        }
        
        return instance;
    }
    
    public Connection getConnection() {
        return connection;
    }
}
