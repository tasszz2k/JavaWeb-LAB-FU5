/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.ContactModel;
import model.GalleryModel;

/**
 *
 * @author TASS
 */
public class ContactDAO extends DBContext{
    public ContactModel getContact(){
        
        ContactModel model = new ContactModel();
        String sql = "SELECT * FROM dbo.CONTACT";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                model.setId(rs.getInt(1));
                model.setPhotographer(rs.getString(2));
                model.setAddress(rs.getString(3));
                model.setCity(rs.getString(4));
                model.setCountry(rs.getString(5));
                model.setTel(rs.getString(6));
                model.setEmail(rs.getString(7));
            }
        } catch (SQLException ex) {
            Logger.getLogger(GalleryDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        return model;
    }
}
