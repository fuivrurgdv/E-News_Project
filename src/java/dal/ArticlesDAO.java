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

/**
 *
 * @author KinNhun
 */
public class ArticlesDAO extends DBContext {

    public List<Articles> getTop3News() {
        List<Articles> top3News = new ArrayList<>();

        String sql = "   SELECT top 3 * FROM [Articles] ORDER BY [published_date] DESC ";
        // Lấy ra 3 bài viết mới nhất được sắp xếp theo thời gian xuất bản giảm dần

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int articleId = rs.getInt("article_id");
                String title = rs.getString("title");
                String content = rs.getString("content");
                int authorId = rs.getInt("author_id");
                int categoryId = rs.getInt("category_id");
                String publishedDate = rs.getString("published_date");
                String imageUrl = rs.getString("image_url");
                String videoUrl = rs.getString("video_url");
                int views = rs.getInt("views");

                Articles article = new Articles(articleId, title, content, authorId, categoryId,
                        publishedDate, imageUrl, videoUrl, views);

                top3News.add(article);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Xử lý các ngoại lệ một cách thích hợp trong ứng dụng của bạn
        }

        return top3News;
    }

    public List<Articles> getTop4News() {
        List<Articles> top3News = new ArrayList<>();

        String sql = "   SELECT top 4 * FROM [Articles] ORDER BY [published_date] DESC ";
        // Lấy ra 4 bài viết mới nhất được sắp xếp theo thời gian xuất bản giảm dần

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int articleId = rs.getInt("article_id");
                String title = rs.getString("title");
                String content = rs.getString("content");
                int authorId = rs.getInt("author_id");
                int categoryId = rs.getInt("category_id");
                String publishedDate = rs.getString("published_date");
                String imageUrl = rs.getString("image_url");
                String videoUrl = rs.getString("video_url");
                int views = rs.getInt("views");

                Articles article = new Articles(articleId, title, content, authorId, categoryId,
                        publishedDate, imageUrl, videoUrl, views);

                top3News.add(article);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Xử lý các ngoại lệ một cách thích hợp trong ứng dụng của bạn
        }

        return top3News;
    }

    public List<Articles> getAllNews() {
        List<Articles> allNews = new ArrayList<>();

        String sql = "   SELECT * FROM [Articles] ORDER BY [article_id] DESC ";
        

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int articleId = rs.getInt("article_id");
                String title = rs.getString("title");
                String content = rs.getString("content");
                int authorId = rs.getInt("author_id");
                int categoryId = rs.getInt("category_id");
                String publishedDate = rs.getString("published_date");
                String imageUrl = rs.getString("image_url");
                String videoUrl = rs.getString("video_url");
                int views = rs.getInt("views");
                String summary = rs.getString("summary");

                Articles article = new Articles(articleId, title, content, authorId, categoryId,
                        publishedDate, imageUrl, videoUrl, views, summary);

                allNews.add(article);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Xử lý các ngoại lệ một cách thích hợp trong ứng dụng của bạn
        }

        return allNews;
    }

    public Categories getCategoryById(int categoryId) {
        Categories category = null;

        String sql = "SELECT * FROM [Categories] WHERE category_id = ?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, categoryId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String name = rs.getString("name");
                category = new Categories(categoryId, name);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Xử lý ngoại lệ một cách thích hợp trong ứng dụng của bạn
        }

        return category;
    }

    public List<Articles> get5thNews() {
        List<Articles> news5thAnd6th = new ArrayList<>();

        String sql = "SELECT * FROM [Articles] ORDER BY [published_date] DESC OFFSET 4 ROWS FETCH NEXT 2 ROWS ONLY";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int articleId = rs.getInt("article_id");
                String title = rs.getString("title");
                String content = rs.getString("content");
                int authorId = rs.getInt("author_id");
                int categoryId = rs.getInt("category_id");
                String publishedDate = rs.getString("published_date");
                String imageUrl = rs.getString("image_url");
                String videoUrl = rs.getString("video_url");
                int views = rs.getInt("views");

                Articles article = new Articles(articleId, title, content, authorId, categoryId,
                        publishedDate, imageUrl, videoUrl, views);

                news5thAnd6th.add(article);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Xử lý các ngoại lệ một cách thích hợp trong ứng dụng của bạn
        }

        return news5thAnd6th;
    }

    public Articles getNewsHasMaxView() {
        Articles articleWithMaxView = null;

        String sql = "SELECT TOP 1 * FROM [Articles] ORDER BY [views] DESC";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                int articleId = rs.getInt("article_id");
                String title = rs.getString("title");
                String content = rs.getString("content");
                int authorId = rs.getInt("author_id");
                int categoryId = rs.getInt("category_id");
                String publishedDate = rs.getString("published_date");
                String imageUrl = rs.getString("image_url");
                String videoUrl = rs.getString("video_url");
                int views = rs.getInt("views");
                String summary = rs.getString("summary");

                articleWithMaxView = new Articles(articleId, title, content, authorId, categoryId,
                        publishedDate, imageUrl, videoUrl, views, summary);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Xử lý các ngoại lệ một cách thích hợp trong ứng dụng của bạn
        }

        return articleWithMaxView;

    }

    public List<Articles> get5NewsViews() {
        List<Articles> top5News = new ArrayList<>();

        String sql = "SELECT TOP 5 * FROM [Articles] ORDER BY [views] DESC";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int articleId = rs.getInt("article_id");
                String title = rs.getString("title");
                String content = rs.getString("content");
                int authorId = rs.getInt("author_id");
                int categoryId = rs.getInt("category_id");
                String publishedDate = rs.getString("published_date");
                String imageUrl = rs.getString("image_url");
                String videoUrl = rs.getString("video_url");
                int views = rs.getInt("views");
                String summary = rs.getString("summary");

                Articles article = new Articles(articleId, title, content, authorId, categoryId,
                        publishedDate, imageUrl, videoUrl, views, summary);

                top5News.add(article);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Xử lý các ngoại lệ một cách thích hợp trong ứng dụng của bạn
        }

        return top5News;
    }

    public List<Articles> getArticlesByCategoryID(int categoryID) {
        List<Articles> top5News = new ArrayList<>();

        String sql = "  select * from [Articles] where [category_id] = ?  order by [article_id] desc";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, categoryID);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int articleId = rs.getInt("article_id");
                String title = rs.getString("title");
                String content = rs.getString("content");
                int authorId = rs.getInt("author_id");
                int categoryId = rs.getInt("category_id");
                String publishedDate = rs.getString("published_date");
                String imageUrl = rs.getString("image_url");
                String videoUrl = rs.getString("video_url");
                int views = rs.getInt("views");
                String summary = rs.getString("summary");

                Articles article = new Articles(articleId, title, content, authorId, categoryId,
                        publishedDate, imageUrl, videoUrl, views, summary);

                top5News.add(article);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Xử lý các ngoại lệ một cách thích hợp trong ứng dụng của bạn
        }

        return top5News;

    }

    public Articles getNewsByID(int id) {
        Articles article = null;

        String sql = "SELECT * FROM [Articles] WHERE [article_id] = ?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id); // Thiết lập tham số cho article_id
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                int articleId = rs.getInt("article_id");
                String title = rs.getString("title");
                String content = rs.getString("content");
                int authorId = rs.getInt("author_id");
                int categoryId = rs.getInt("category_id");
                String publishedDate = rs.getString("published_date");
                String imageUrl = rs.getString("image_url");
                String videoUrl = rs.getString("video_url");
                int views = rs.getInt("views");
                String summary = rs.getString("summary");

                article = new Articles(articleId, title, content, authorId, categoryId,
                        publishedDate, imageUrl, videoUrl, views, summary);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Xử lý ngoại lệ một cách thích hợp trong ứng dụng của bạn
        }

        return article;
    }

    public void deleteArticlesById(int articleId) {
        String sql = "DELETE FROM [Articles] WHERE [article_id] = ?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, articleId); // Thiết lập tham số cho article_id
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(); // Xử lý ngoại lệ một cách thích hợp trong ứng dụng của bạn
        }
    }

   public void insertNewArticle(String title, String content, int categoryId, String publishedDate, String imageUrl, String videoUrl, String summary, int authorId) {
    String sql = "INSERT INTO [Articles] (title, content, category_id, published_date, image_url, video_url, views, summary, author_id) VALUES (?, ?, ?, ?, ?, ?, 0, ?, ?)";

    try {
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1, title);
        ps.setString(2, content);
        ps.setInt(3, categoryId);
        ps.setString(4, publishedDate);
        ps.setString(5, imageUrl);
        ps.setString(6, videoUrl);
        ps.setString(7, summary);
        ps.setInt(8, authorId);

        ps.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace(); // Xử lý ngoại lệ một cách thích hợp trong ứng dụng của bạn
    }
}


 public void editNewArticles(String title, String content, int categoryId, String publishedDate, String imageUrl, String videoUrl, String summary, int author_id, int articleId) {
    String sql = "UPDATE [Articles] SET title = ?, content = ?, category_id = ?, published_date = ?, image_url = ?, video_url = ?, summary = ?, author_id = ? WHERE article_id = ?";

    try {
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1, title);
        ps.setString(2, content);
        ps.setInt(3, categoryId);
        ps.setString(4, publishedDate);
        ps.setString(5, imageUrl);
        ps.setString(6, videoUrl);
        ps.setString(7, summary);
        ps.setInt(8, author_id);
        ps.setInt(9, articleId);

        ps.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace(); // Xử lý ngoại lệ một cách thích hợp trong ứng dụng của bạn
    }
}
 
public List<Articles> getArticlesBySearch(String search) {
    List<Articles> searchResults = new ArrayList<>();

    // Sử dụng câu truy vấn SQL với điều kiện tìm kiếm
    String sql = "SELECT * FROM [Articles] WHERE  [content] LIKE ?";
    
    try {
        PreparedStatement ps = connection.prepareStatement(sql);
        // Đặt tham số cho tìm kiếm
        ps.setString(1, "%" + search + "%"); 
       

        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            int articleId = rs.getInt("article_id");
            String title = rs.getString("title");
            String content = rs.getString("content");
            int authorId = rs.getInt("author_id");
            int categoryId = rs.getInt("category_id");
            String publishedDate = rs.getString("published_date");
            String imageUrl = rs.getString("image_url");
            String videoUrl = rs.getString("video_url");
            int views = rs.getInt("views");
            String summary = rs.getString("summary");

            Articles article = new Articles(articleId, title, content, authorId, categoryId,
                    publishedDate, imageUrl, videoUrl, views, summary);

            searchResults.add(article);
        }
    } catch (SQLException e) {
        e.printStackTrace(); // Xử lý các ngoại lệ một cách thích hợp trong ứng dụng của bạn
    }

    return searchResults;
}



    public static void main(String[] args) {
         ArticlesDAO categoryDAO = new ArticlesDAO();
//    String searchKeyword = "business strategies for success."; // Thay thế bằng từ khóa tìm kiếm của bạn
//    
//    List<Articles> searchResults = categoryDAO.getArticlesBySearch(searchKeyword);
//    
//    for (Articles article : searchResults) {
//        System.out.println("Article ID: " + article.getArticleId());
//        System.out.println("Title: " + article.getTitle());
//        System.out.println("Content: " + article.getContent());
//        // In thêm các thông tin khác của bài viết nếu cần
//        System.out.println();
//    }

    }

  
}
