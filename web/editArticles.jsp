
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
        <style>
            /* CSS để thu nhỏ kích thước của th */
            th {
                width: 25%; /* Mỗi th chiếm 25% chiều rộng của bảng */
            }
        </style>

    </head>

    <body>
        <jsp:include page="hearder.jsp"></jsp:include>
        <form action="editArticles" method="post">
            <input name="articleId" value="${articles.getArticleId()}">

                <!-- Manager Start -->
                <div class="bg-white border border-top-0 p-4 mb-3">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <tr>
                                <th class="text-uppercase font-weight-bold">Title</th>
                                <td>
                                    <input type="text" name="title" class="form-control" value="${articles.getTitle()}">
                            </td>
                        </tr>
                        <tr>
                            <th class="text-uppercase font-weight-bold">Content</th>
                            <td>
                                <input type="text" name="content" class="form-control" value="${articles.getContent()}">
                            </td>
                        </tr>
                        <tr>
                            <th class="text-uppercase font-weight-bold">Category ID</th>
                            <td>
                                <select name="categoryId" class="form-control">
                                    <option value="${articles.getCategoryId()}">ff</option>
                                    <c:forEach items="${sessionScope.categroy}" var="listc">
                                        <option value="${listc.getCategoryId()}">${listc.getName()}</option>
                                    </c:forEach>


                                </select>
                            </td>

                        </tr>
                        <tr>
                            <th class="text-uppercase font-weight-bold">Published Date</th>
                            <td>
                                <input type="date" name="publishedDate" class="form-control" value="${articles.getPublishedDate()}">
                            </td>
                        </tr>
                        <tr>
                            <th class="text-uppercase font-weight-bold">Image URL</th>
                            <td>
                                <input type="text" name="imageUrl" class="form-control" value="${articles.getImageUrl()}">
                            </td>
                        </tr>
                        <tr>
                            <th class="text-uppercase font-weight-bold">Video URL</th>
                            <td>
                                <input type="text" name="videoUrl" class="form-control" value="${articles.getVideoUrl()}">
                            </td>
                        </tr>

                        <tr>
                            <th class="text-uppercase font-weight-bold">Summary</th>
                            <td>
                                <input type="text" name="summary" class="form-control" value="${articles.getSummary()}">
                                <input hidden type="text" name="views" class="form-control" value="${articles.getViews()}">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center;">
                                <div class="row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-6">
                                        <button class="btn btn-primary btn-block" type="submit">Submit</button>
                                    </div>
                                    <div class="col-md-3"></div>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <!-- Manager End -->


        </form>

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