/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

/**
 *
 * @author TASS
 */
public class NewsModel {

    private int id;
    private String title;
    private String content;
    private Timestamp date;
    private String writer;
    private String description;

    public NewsModel() {
    }

    public NewsModel(int id, String title, String content, Timestamp date, String writer) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.date = date;
        this.writer = writer;
        //generate description
        String text = getTextOnlyFromHTML(content);
        String[] words = text.split("\\s+");
        this.description = "";
        
        for (int i = 0; i < words.length && i < 30; i++) {
            this.description += words[i] + " ";
        }
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
        //generate description
        String text = getTextOnlyFromHTML(content);
        String[] words = text.split("\\s+");
        this.description = "";

        for (int i = 0; i < words.length && i < 30; i++) {
            this.description += words[i] + " ";
        }
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    String getTextOnlyFromHTML(String html) {
        String textOnly = html.replaceAll("\\<.*?>", "");
        return textOnly;
    }

    @Override
    public String toString() {
        SimpleDateFormat DateFor = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
String stringDate= DateFor.format(date);
        return "NewsModel{" + "\nid=" + id + ", \ntitle=" + title + ", \ncontent=" + content + ", \ndate=" + stringDate + ", \nwriter=" + writer + ", \ndescription=" + description + '}';
    }

}
