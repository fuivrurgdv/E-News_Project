/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author KinNhun
 */
public class Comment {
    private int commentId;
    private int articleId;
    private Authors userId;
    private String commentText;
    private String commentDate;
    private int status;
     
    public Comment() {
    }

    public Comment(int commentId, int articleId, Authors userId, String commentText, String commentDate, int status) {
        this.commentId = commentId;
        this.articleId = articleId;
        this.userId = userId;
        this.commentText = commentText;
        this.commentDate = commentDate;
        this.status = status;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    
    
    
    public int getCommentId() {
        return commentId;
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }

    public int getArticleId() {
        return articleId;
    }

    public void setArticleId(int articleId) {
        this.articleId = articleId;
    }

    public Authors getUserId() {
        return userId;
    }

    public void setUserId(Authors  userId) {
        this.userId = userId;
    }

    public String getCommentText() {
        return commentText;
    }

    public void setCommentText(String commentText) {
        this.commentText = commentText;
    }

    public String getCommentDate() {
        return commentDate;
    }

    public void setCommentDate(String commentDate) {
        this.commentDate = commentDate;
    }

    @Override
    public String toString() {
        return "Comment{" + "commentId=" + commentId + ", articleId=" + articleId + ", userId=" + userId + ", commentText=" + commentText + ", commentDate=" + commentDate + '}';
    }

    
    
}
