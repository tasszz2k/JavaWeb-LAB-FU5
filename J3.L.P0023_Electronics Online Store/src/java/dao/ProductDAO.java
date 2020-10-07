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
import model.ProductModel;

/**
 *
 * @author TASS
 */
public class ProductDAO extends DBContext {

    public List<ProductModel> getAll() {
        List<ProductModel> results = new ArrayList<>();
        String sql = "SELECT * FROM dbo.PRODUCT";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                ProductModel model = new ProductModel();
                model.setId(rs.getInt(1));
                model.setName(rs.getString(2));
                model.setImage(rs.getString(3));
                model.setDescription(rs.getString(4));
                model.setPrice(rs.getFloat(5));
                model.setQuantity(rs.getInt(6));
                results.add(model);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        return results;
    }

    public ProductModel findById(int id) {
        ProductModel model = new ProductModel();
        String sql = "SELECT * FROM dbo.PRODUCT WHERE ID=?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                model.setId(rs.getInt(1));
                model.setName(rs.getString(2));
                model.setImage(rs.getString(3));
                model.setDescription(rs.getString(4));
                model.setPrice(rs.getFloat(5));
                model.setQuantity(rs.getInt(6));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        return model;
    }

    public List<ProductModel> getAllTop(int top) {
        List<ProductModel> results = new ArrayList<>();
        String sql = "SELECT TOP(?) * FROM dbo.PRODUCT";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, top);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                ProductModel model = new ProductModel();
                model.setId(rs.getInt(1));
                model.setName(rs.getString(2));
                model.setImage(rs.getString(3));
                model.setDescription(rs.getString(4));
                model.setPrice(rs.getFloat(5));
                model.setQuantity(rs.getInt(6));
                results.add(model);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        return results;
    }

}
