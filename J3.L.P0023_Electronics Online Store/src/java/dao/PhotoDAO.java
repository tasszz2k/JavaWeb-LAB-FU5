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
public class PhotoDAO extends DBContext {

    public List<PhotoModel> findByGalleryId(int galleryId) {
        List<PhotoModel> results = new ArrayList<>();
        String sql = "SELECT * FROM dbo.PHOTO\n"
                + "WHERE GALLERYID = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, galleryId);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                PhotoModel model = new PhotoModel();
                model.setId(rs.getInt(1));
                model.setImage(rs.getString(2));
                try {
                    model.setDescription(rs.getString(3));
                } catch (Exception ex) {
                }
                model.setGalleryId(rs.getInt(4));
                results.add(model);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PhotoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return results;
    }
}
