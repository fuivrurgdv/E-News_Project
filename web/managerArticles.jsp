<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>BizNews - Free News Website Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&display=swap" rel="stylesheet">  

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>
        <jsp:include page="hearder.jsp"></jsp:include>


            <!-- Manager Start -->
            <div class="container-fluid mt-5 pt-3">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section-title mb-4">
                                <h2 class="m-0 text-uppercase font-weight-bold">Manager</h2>
                            </div>
                            <div>
                                <button type="button" onclick="window.location.href='addArticles'">Create New Article</button>
                                <button type="button" onclick="window.location.href='ListComment'">Manage Comment</button>
                            </div>
                            

                            <div class="bg-white border border-top-0 p-4 mb-3">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th>Title</th>
                                                <th>Content</th>
                                                <th>Author ID</th>
                                                <th>Category ID</th>
                                                <th>Published Date</th>
                                                <th>Summary</th>
                                                <th>Video URL</th>
                                                <th>Views</th>
                                                <th>Image URL</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${listOfArticles}" var="article">
                                            <tr>
                                                <td>${article.getTitle()}</td>
                                                <td>${article.getContent()}</td>
                                                <td>${article.getAuthorId()}</td>
                                                <td>${article.getCategoryId()}</td>
                                                <td>${article.getPublishedDate()}</td>
                                                <td>${article.getSummary()}</td>
                                                <td>${article.getVideoUrl()}</td>
                                                <td>${article.getViews()}</td>
                                                <td>${article.getImageUrl()}</td>
                                                <td>
                                                    <a href="editArticles?articleId=${article.getArticleId()}">
                                                        <i class="fas fa-edit"></i> 
                                                    </a>

                                                    <a href="javascript:void(0);" onclick="confirmDelete(${article.getArticleId()});">
                                                        <i class="fas fa-trash-alt"></i>
                                                    </a>
                                                    <script>
                                                        function confirmDelete(articleId) {
                                                            var result = confirm("Are you sure to delete this article?");
                                                            if (result) {
                                                                window.location.href = "deleteArticle?articleId=" + articleId;
                                                            }
                                                        }
                                                    </script>


                                                </td>

                                            </tr>
                                        </c:forEach>




                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Manager End -->


        <!-- Footer Start -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-primary btn-square back-to-top"><i class="fa fa-arrow-up"></i></a>


        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>

</html>