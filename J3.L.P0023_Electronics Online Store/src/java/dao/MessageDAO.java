/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.MessageModel;

/**
 *
 * @author TASS
 */
public class MessageDAO extends DBContext {

    public void insert(MessageModel message) {
        try {
            //insert into Customer
            String sql = "INSERT INTO dbo.MESSAGE\n"
                    + "(NAME,EMAIL,CONTENT)\n"
                    + "VALUES(?,?,?)";
            PreparedStatement statement = null;
            statement = connection.prepareStatement(sql);
            statement.setString(1, message.getName());
            statement.setString(2, message.getEmail());
            statement.setString(3, message.getContent());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(MessageDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
