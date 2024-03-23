/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author KinNhun
 */
public class Articles {
    private int articleId;
    private String title;
    private String content;
    private int authorId;
    private int categoryId;
    private String publishedDate;
    private String imageUrl;
    private String videoUrl;
    private int views;
    private String summary;

    public Articles() {
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public Articles(int articleId, String title, String content, int authorId, int categoryId, String publishedDate, String imageUrl, String videoUrl, int views, String summary) {
        this.articleId = articleId;
        this.title = title;
        this.content = content;
        this.authorId = authorId;
        this.categoryId = categoryId;
        this.publishedDate = publishedDate;
        this.imageUrl = imageUrl;
        this.videoUrl = videoUrl;
        this.views = views;
        this.summary = summary;
    }
    

    public Articles(int articleId, String title, String content, int authorId, int categoryId, String publishedDate, String imageUrl, String videoUrl, int views) {
        this.articleId = articleId;
        this.title = title;
        this.content = content;
        this.authorId = authorId;
        this.categoryId = categoryId;
        this.publishedDate = publishedDate;
        this.imageUrl = imageUrl;
        this.videoUrl = videoUrl;
        this.views = views;
    }

    public int getArticleId() {
        return articleId;
    }

    public void setArticleId(int articleId) {
        this.articleId = articleId;
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

    public int getAuthorId() {
        return authorId;
    }

    public void setAuthorId(int authorId) {
        this.authorId = authorId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getPublishedDate() {
        return publishedDate;
    }

    public void setPublishedDate(String publishedDate) {
        this.publishedDate = publishedDate;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getVideoUrl() {
        return videoUrl;
    }

    public void setVideoUrl(String videoUrl) {
        this.videoUrl = videoUrl;
    }

    public int getViews() {
        return views;
    }

    public void setViews(int views) {
        this.views = views;
    }

    @Override
    public String toString() {
        return "Articles{" + "articleId=" + articleId + ", title=" + title + ", content=" + content + ", authorId=" + authorId + ", categoryId=" + categoryId + ", publishedDate=" + publishedDate + ", imageUrl=" + imageUrl + ", videoUrl=" + videoUrl + ", views=" + views + '}';
    }
    
    

}
