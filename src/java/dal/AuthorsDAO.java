/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Authors;

/**
 *
 * @author KinNhun
 */
public class AuthorsDAO extends DBContext {
    
    public Authors login(String username, String password) {
        String sql = "SELECT * FROM [Authors] WHERE username = ? AND password = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
                int authorId = rs.getInt("author_id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String imageUrl = rs.getString("address");
                int role = rs.getInt("role");
                
                return new Authors(authorId, name, email, imageUrl, role, username, password);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return null;
    }
    
    public boolean register(String username, String password, String name, String email, String address) {
        String sql = "INSERT INTO [Authors] (username, password, name, email, address, role) VALUES (?, ?, ?, ?, ?, ?)";
        
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, name);
            ps.setString(4, email);
            ps.setString(5, address);
            ps.setInt(6, 2);
            
            int affectedRows = ps.executeUpdate();
            
            return affectedRows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return false;
    }

    public Authors selectAuthorByID(int authorId) {
        String sql = "SELECT * FROM [Authors] WHERE author_id = ?";
        
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, authorId);
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
                String username = rs.getString("username");
                String password = rs.getString("password");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String address = rs.getString("address");
                int role = rs.getInt("role");
                
                Authors author = new Authors(authorId, name, email, address, role, username, password);
                return author;
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle exceptions properly in your application
        }
        
        return null; // Return null if the author with the specified ID is not found
    }
    
    public boolean checkUser(String username) {
        String sql = "SELECT * FROM [Authors] WHERE username = ?";
        
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            // If there are any results, it means a user with the provided username exists
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return false;
    }
    
    public static void main(String[] args) {
        AuthorsDAO authorsDAO = new AuthorsDAO();
        
      Authors a = authorsDAO.selectAuthorByID(1);
        System.out.println(a.getName());
    }
    
}
