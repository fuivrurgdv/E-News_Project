package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Articles;
import model.Categories;

public class CategoryDAO extends DBContext {
    public List<Categories> getAllCategories() {
        List<Categories> categories = new ArrayList<>();

        String sql = "SELECT * FROM [Categories]"; // Adjust the SQL query to match your database schema

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int categoryId = rs.getInt("category_id");
                String name = rs.getString("name");

                Categories category = new Categories(categoryId, name);
                categories.add(category);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle exceptions properly in your application
        }

        return categories;
    }

 public String getNameCategoryByID(int id) {
    String categoryName = null;

    String sql = "  SELECT [name] FROM [Categories] WHERE [category_id] = ?";

    try {
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, id); 
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            categoryName = rs.getString("name");
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return categoryName;
}

    public static void main(String[] args) {
        CategoryDAO cd = new CategoryDAO();
        String cc = cd.getNameCategoryByID(2);
        System.out.println(cc);
    }
   
  
}
