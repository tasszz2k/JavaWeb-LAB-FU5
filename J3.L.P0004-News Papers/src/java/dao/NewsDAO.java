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
import model.NewsModel;

/**
 *
 * @author TASS
 */
public class NewsDAO extends DBContext {

    public List<NewsModel> getRecentNews(int numberNews) {
        List<NewsModel> results = new ArrayList<>();
        String sql = "SELECT TOP(?) * \n"
                + "FROM dbo.News\n"
                + "ORDER BY date DESC";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, numberNews);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                NewsModel model = new NewsModel();
                model.setId(rs.getInt(1));
                model.setTitle(rs.getString(2));
                model.setContent(rs.getString(3));
                model.setDate(rs.getTimestamp(4));
                model.setWriter(rs.getString(5));
                results.add(model);
            }
        } catch (SQLException ex) {
            Logger.getLogger(NewsDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return results;
    }

    public NewsModel findById(int id) {
        NewsModel model = new NewsModel();
        String sql = "SELECT * FROM dbo.News WHERE id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                model.setId(rs.getInt(1));
                model.setTitle(rs.getString(2));
                model.setContent(rs.getString(3));
                model.setDate(rs.getTimestamp(4));
                model.setWriter(rs.getString(5));

            }
        } catch (SQLException ex) {
            Logger.getLogger(NewsDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        return model;

    }

    public List<NewsModel> search(String keyword) {
        List<NewsModel> results = new ArrayList<>();
        String sql = "SELECT * FROM dbo.News \n"
                + "WHERE title LIKE ?\n"
                + "OR content LIKE ?\n"
                + "ORDER BY id DESC";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            keyword = "%" + keyword + "%";
            statement.setString(1, keyword);
            statement.setString(2, keyword);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                NewsModel model = new NewsModel();
                model.setId(rs.getInt(1));
                model.setTitle(rs.getString(2));
                model.setContent(rs.getString(3));
                model.setDate(rs.getTimestamp(4));
                model.setWriter(rs.getString(5));
                results.add(model);
            }
        } catch (SQLException ex) {
            Logger.getLogger(NewsDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return results;
    }

    public static void main(String[] args) {
        NewsDAO db = new NewsDAO();
        List<NewsModel> l = db.search("6");
        for (NewsModel newsModel : l) {
            System.out.println(newsModel);
        }
    }
}