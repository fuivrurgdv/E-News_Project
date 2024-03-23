/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import static dal.DBContext.connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Articles;
import model.Authors;
import model.Categories;
import model.Comment;

/**
 *
 * @author KinNhun
 */
public class CommentDAO extends DBContext {

    public List<Comment> selectCommentByArticle(int articleId) {
        List<Comment> comments = new ArrayList<>();

        String sql = "SELECT * FROM [Comments] WHERE article_id = ? order by [comment_date] DESC";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, articleId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int commentId = rs.getInt("comment_id");

                String commentText = rs.getString("comment_text");
                String commentDate = rs.getString("comment_date");
                AuthorsDAO ad = new AuthorsDAO();
                Authors userId = ad.selectAuthorByID(rs.getInt("user_id"));
                int status = rs.getInt("status");
                // Create a Comment object
                Comment comment = new Comment(commentId, articleId, userId, commentText, commentDate, status);
                comments.add(comment);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle exceptions properly in your application
        }

        return comments;
    }
    
    public List<Comment> selectAllComment() {
        List<Comment> comments = new ArrayList<>();

        String sql = "SELECT * FROM [Comments] order by [comment_date] DESC";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            //ps.setInt(1, articleId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int commentId = rs.getInt("comment_id");
                int articleId = rs.getInt("article_id");
                String commentText = rs.getString("comment_text");
                String commentDate = rs.getString("comment_date");
                AuthorsDAO ad = new AuthorsDAO();
                Authors userId = ad.selectAuthorByID(rs.getInt("user_id"));
                int status = rs.getInt("status");
                // Create a Comment object
                Comment comment = new Comment(commentId, articleId, userId, commentText, commentDate, status);
                comments.add(comment);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle exceptions properly in your application
        }

        return comments;
    }
    
   public void insertComment(int articleId, int userId, String commentText, int status) {
    String sql = "INSERT INTO [Comments] (article_id, user_id, comment_text, comment_date) VALUES (?, ?, ?, GETDATE())";

    try {
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, articleId);
        ps.setInt(2, userId);
        ps.setString(3, commentText);
        ps.setInt(4, status);

        int affectedRows = ps.executeUpdate();
        if (affectedRows > 0) {
            System.out.println("Comment added successfully.");
        } else {
            System.out.println("Failed to add the comment.");
        }
    } catch (SQLException e) {
        e.printStackTrace(); // Handle exceptions properly in your application
    }
}


    public static void main(String[] args) {
//        CommentDAO cd = new CommentDAO();
//        List<Comment> cm = cd.selectCommentByArticle(1);
//        for (Comment c : cm) {
//            System.out.println(c.toString());
//        }
   
    
     CommentDAO commentDAO = new CommentDAO();

    // Define parameters for the comment insertion
    int articleId = 1; // Replace with the desired article ID
    int userId = 1;    // Replace with the desired user ID
    String commentText = "This is a test comment."; // Replace with your comment text

    // Call the insertComment method
        System.out.println(commentDAO.updateComment(1, 0));
    
    }

    public Comment getCommentById(int commentId) {
        String sql = "SELECT * FROM [Comments] WHERE comment_id = ? order by [comment_date] DESC";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, commentId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int articleId = rs.getInt("article_id");

                String commentText = rs.getString("comment_text");
                String commentDate = rs.getString("comment_date");
                AuthorsDAO ad = new AuthorsDAO();
                Authors userId = ad.selectAuthorByID(rs.getInt("user_id"));
                int status = rs.getInt("status");
                // Create a Comment object
                Comment comment = new Comment(commentId, articleId, userId, commentText, commentDate, status);
                return comment;
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle exceptions properly in your application
        }
        return null;
    }

    public int updateComment(int commentId, int status) {
        String query = "UPDATE [Comments] SET status = ? WHERE comment_id = ? ";
        int n = 0;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, status);
            ps.setInt(2, commentId);
            n = ps.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }
    
    

   
}
