/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author TASS
 */
public class GalleryModel {
    private int id;
    private String title;
    private String description;
    private String thumnail;
    private List<PhotoModel> photos = new ArrayList<>();

    public GalleryModel() {
    }

    public GalleryModel(int id, String title, String description, String thumnail) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.thumnail = thumnail;
    }

    public String getThumnail() {
        return thumnail;
    }

    public void setThumnail(String thumnail) {
        this.thumnail = thumnail;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<PhotoModel> getPhotos() {
        return photos;
    }

    public void setPhotos(List<PhotoModel> photos) {
        this.photos = photos;
    }
    
    
            
}
