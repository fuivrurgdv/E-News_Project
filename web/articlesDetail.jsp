
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
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





            <!-- News With Sidebar Start -->
            <div class="container-fluid">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12   ">

                            <!-- News Detail Start -->
                            <div class="position-relative mb-3">
                                <img class="img-fluid w-100" src="${articles.getImageUrl()}" style="object-fit: cover;">
                            <div class="bg-white border border-top-0 p-4">
                                <div class="mb-3">
                                    <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                       href="">${articles.getCategoryId()}</a>
                                    <a class="text-body" href="">${articles.getPublishedDate()}</a>
                                </div>
                                <h1 class="mb-3 text-secondary text-uppercase font-weight-bold">${articles.getTitle()}</h1>
                                <p>${articles.getContent()}</p>


                            </div>
                            <div class="d-flex justify-content-between bg-white border border-top-0 p-4">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle mr-2" src="img/user.jpg" width="25" height="25" alt="">
                                    <span>John Doe</span>
                                </div>
                                <div class="d-flex align-items-center">
                                    <span class="ml-3"><i class="far fa-eye mr-2"></i>12345</span>
                                    <span class="ml-3"><i class="far fa-comment mr-2"></i>123</span>
                                </div>
                            </div>
                        </div>
                        <!-- News Detail End -->

                        <!-- Comment List Start -->
                        <div class="mb-3">
                            <div class="section-title mb-0">
                                <h4 class="m-0 text-uppercase font-weight-bold">Comments</h4>
                            </div>
                            <div class="bg-white border border-top-0 p-4">
                                <c:forEach items="${listComment}" var="comment">

                                    <c:if test="${comment.status == 1}">


                                        <div class="media mb-4">

                                            <div class="media-body">
                                                <h6><a class="text-secondary font-weight-bold" href="">${comment.getUserId().getName()}</a> <small><i>${comment.getCommentDate()}</i></small></h6>
                                                <p>${comment.getCommentText()}</p>
                                                <!--                                    <button class="btn btn-sm btn-outline-secondary">Reply</button>-->
                                            </div>
                                        </div>
                                    </c:if>
                                    
                                    <c:if test="${comment.status == 0}">


                                        
                                    </c:if>
                                </c:forEach>


                            </div>
                        </div>
                        <!-- Comment List End -->
                        <!-- Comment Form Start -->
                        <div class="mb-3">
                            <div class="section-title mb-0">
                                <h4 class="m-0 text-uppercase font-weight-bold">Leave a comment</h4>
                            </div>
                            <div class="bg-white border border-top-0 p-4">


                                <form action="comment" method="post">
                                    <input hidden value="${articles.getArticleId()}" name="acticlesID">

                                    <div class="form-group">
                                        <label for="website">Comment</label>
                                        <input type="text" class="form-control" name="com">
                                    </div>


                                    <div class="form-group mb-0">
                                        <input type="submit" value="Leave a comment"
                                               class="btn btn-primary font-weight-semi-bold py-2 px-3">
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- Comment Form End -->


                    </div>

                    <div class="col-lg-4">









                    </div>
                </div>
            </div>
        </div>
        <!-- News With Sidebar End -->


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