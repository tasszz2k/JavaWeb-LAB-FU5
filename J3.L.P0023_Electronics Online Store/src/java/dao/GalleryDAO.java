/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.GalleryModel;
import model.PhotoModel;

/**
 *
 * @author TASS
 */
public class GalleryDAO extends DBContext {

    public List<GalleryModel> getAll() {
        PhotoDAO photoDAO = new PhotoDAO();
        List<GalleryModel> results = new ArrayList<>();
        String sql = "SELECT * FROM dbo.GALLERY";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);

            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                GalleryModel model = new GalleryModel();
                model.setId(rs.getInt(1));
                model.setTitle(rs.getString(2));
                model.setDescription(rs.getString(3));
                model.setThumnail(rs.getString(4));
                model.setPhotos(photoDAO.findByGalleryId(model.getId()));
                results.add(model);
            }
        } catch (SQLException ex) {
            Logger.getLogger(GalleryDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        return results;
    }

    public GalleryModel findById(int id) {
        PhotoDAO photoDAO = new PhotoDAO();
        GalleryModel model = new GalleryModel();
        String sql = "SELECT * FROM dbo.GALLERY\n"
                + "WHERE ID = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                model.setId(rs.getInt(1));
                model.setTitle(rs.getString(2));
                model.setDescription(rs.getString(3));
                model.setThumnail(rs.getString(4));
                model.setPhotos(photoDAO.findByGalleryId(model.getId()));
            }
        } catch (SQLException ex) {
            Logger.getLogger(GalleryDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        return model;
    }
    
     public void updatePageCounter() {
        String sql = "UPDATE dbo.counter \n"
                + "SET pageCounter = pageCounter + 1\n"
                + "WHERE id =1 ";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(GalleryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public int getPageCounter() {
     
        String sql = "SELECT pageCounter FROM dbo.counter";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);

            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(GalleryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
}
