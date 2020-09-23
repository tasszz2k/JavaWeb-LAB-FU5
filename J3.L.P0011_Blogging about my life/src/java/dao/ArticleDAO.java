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
import model.ArticleModel;

/**
 *
 * @author TASS
 */
public class ArticleDAO extends DBContext {

    public List<ArticleModel> getAll() {
        List<ArticleModel> results = new ArrayList<>();
        String sql = "SELECT article.id,title,content,published,author,banner,categoryid,name\n"
                + "FROM dbo.article\n"
                + "INNER JOIN dbo.category ON article.categoryid = category.id\n"
                + "WHERE categoryid != 1";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);

            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                ArticleModel model = new ArticleModel();
                model.setId(rs.getInt(1));
                model.setTitle(rs.getString(2));
                model.setContent(rs.getString(3));
                model.setPublished(rs.getDate(4));
                model.setAuthor(rs.getString(5));
                try {
                    model.setBanner(rs.getString(6));
                } catch (Exception ex) {
                    //dont do any thing
                }
                model.setCategoryId(rs.getInt(7));
                model.setCategory(rs.getString(8));
                results.add(model);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return results;
    }

    public ArticleModel findById(int id) {
        ArticleModel model = new ArticleModel();
        String sql = "SELECT article.id,title,content,published,author,banner,categoryid,name\n"
                + "FROM dbo.article\n"
                + "INNER JOIN dbo.category ON article.categoryid = category.id\n"
                + "WHERE article.id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {

                model.setId(rs.getInt(1));
                model.setTitle(rs.getString(2));
                model.setContent(rs.getString(3));
                model.setPublished(rs.getDate(4));
                model.setAuthor(rs.getString(5));
                try {
                    model.setBanner(rs.getString(6));
                } catch (Exception ex) {
                    //dont do any thing
                }
                model.setCategoryId(rs.getInt(7));
                model.setCategory(rs.getString(8));
                return model;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void updatePageCounter() {
        String sql = "UPDATE dbo.counter \n"
                + "SET pageCounter = pageCounter + 1\n"
                + "WHERE id =1 ";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
}
