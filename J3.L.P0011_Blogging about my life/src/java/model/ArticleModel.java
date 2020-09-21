/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author TASS
 */
public class ArticleModel {

    private int id;
    private String title;
    private String content;
    private Date published;
    private String author;
    private String banner;
    private int categoryId;
    private String category;

    public ArticleModel() {
    }

    
    
    public ArticleModel(int id, String title, String content, Date published, String author, String banner, int categoryId, String category) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.published = published;
        this.author = author;
        this.banner = banner;
        this.categoryId = categoryId;
        this.category = category;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getPublished() {
        return published;
    }

    public void setPublished(Date published) {
        this.published = published;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getBanner() {
        return banner;
    }

    public void setBanner(String banner) {
        this.banner = banner;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }
    
    
    
}
