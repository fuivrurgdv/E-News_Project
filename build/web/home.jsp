
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Home</title>
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

            <!-- Main News Slider Start -->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-7 px-0">
                        <div class="owl-carousel main-carousel position-relative">


                        <c:forEach items="${listTop3}" var="lista">
                            <div class="position-relative overflow-hidden" style="height: 500px;">
                              
                                    <img class="img-fluid h-100" src="${lista.getImageUrl()}" style="object-fit: cover;">
                              

                                <div class="overlay">
                                    <div class="mb-2">

                                        <a class="text-white" href="newsdetail?aid=${lista.getArticleId()}">${lista.getPublishedDate()}</a>
                                    </div>
                                    <a class="h2 m-0 text-white text-uppercase font-weight-bold" href="newsdetail?aid=${lista.getArticleId()}">${lista.getTitle()}</a>
                                </div>
                            </div>
                        </c:forEach>


                    </div>
                </div>
                <div class="col-lg-5 px-0">
                    <div class="row mx-0">


                        <c:forEach items="${listTop4}" var="listtop4">
                            <div class="col-md-6 px-0">
                                <div class="position-relative overflow-hidden" style="height: 250px;">
                                    <img class="img-fluid w-100 h-100" src="${listtop4.getImageUrl()}" style="object-fit: cover;">
                                    <div class="overlay">
                                        <div class="mb-2">

                                            <a class="text-white" href="newsdetail?aid=${listtop4.getArticleId()}"><small>${listtop4.getPublishedDate()}</small></a>
                                        </div>
                                        <a class="h6 m-0 text-white text-uppercase font-weight-semi-bold" href="">${listtop4.getTitle()}</a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>




                    </div>
                </div>
            </div>
        </div>
        <!-- Main News Slider End -->


        <!-- Breaking News Start -->
        <div class="container-fluid bg-dark py-3 mb-3">
            <div class="container">
                <div class="row align-items-center bg-dark">
                    <div class="col-12">
                        <div class="d-flex justify-content-between">
                            <div class="bg-primary text-dark text-center font-weight-medium py-2" style="width: 170px;">Breaking News</div>
                            <div class="owl-carousel tranding-carousel position-relative d-inline-flex align-items-center ml-3"
                                 style="width: calc(100% - 170px); padding-right: 90px;">
                                <c:forEach items="${listAll}" var="listAll">
                                    <div class="text-truncate"><a class="text-white text-uppercase font-weight-semi-bold" href="newsdetail?aid=${listAll.getArticleId()}">${listAll.getTitle()} </a></div>

                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breaking News End -->


        <!-- Featured News Slider Start -->
        <div class="container-fluid pt-5 mb-3">
            <div class="container">

            </div>
        </div>
        <!-- Featured News Slider End -->


        <!-- News With Sidebar Start -->
        <div class="container-fluid">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="row">
                            <div class="col-12">
                                <div class="section-title">
                                    <h4 class="m-0 text-uppercase font-weight-bold">Latest News</h4>
                                    <a class="text-secondary font-weight-medium text-decoration-none" href="">View All</a>
                                </div>
                            </div>
                            <c:forEach items="${listTop4}" var="listtop4">


                                <div class="col-lg-6">
                                    <div class="position-relative mb-3">
                                        <img class="img-fluid w-100" src="${listtop4.getImageUrl()}" style="object-fit: cover;">
                                        <div class="bg-white border border-top-0 p-4">
                                            <div class="mb-2">
                                                <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                                   href="newsdetail?aid=${listtop4.getArticleId()}">${listtop4.getCategoryId()}</a>
                                                <a class="text-body" href="newsdetail?aid=${listtop4.getArticleId()}"><small>${listtop4.getPublishedDate()}</small></a>
                                            </div>
                                            <a class="h4 d-block mb-3 text-secondary text-uppercase font-weight-bold" href="newsdetail?aid=${listtop4.getArticleId()}">${listtop4.getTitle()}</a>
                                            <p class="m-0"></p>
                                        </div>
                                        <div class="d-flex justify-content-between bg-white border border-top-0 p-4">
                                            <div class="d-flex align-items-center">
                                                <img class="rounded-circle mr-2" src="img/user.jpg" width="25" height="25" alt="">
                                                <small>${listtop4.getAuthorId()}</small>
                                            </div>
                                            <div class="d-flex align-items-center">
                                                <small class="ml-3"><i class="far fa-eye mr-2"></i>12345</small>
                                                <small class="ml-3"><i class="far fa-comment mr-2"></i>123</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>



                            <div class="col-lg-12 mb-3">
                                <a href=""><img class="img-fluid w-100" src="img/ads-728x90.png" alt=""></a>
                            </div>
                            <div class="col-lg-12">
                                <div class="row news-lg mx-0 mb-3">
                                    <div class="col-md-6 h-100 px-0">
                                        <img class="img-fluid h-100" src="${newsMaxView.getImageUrl()}" style="object-fit: cover;">
                                    </div>
                                    <div class="col-md-6 d-flex flex-column border bg-white h-100 px-0">
                                        <div class="mt-auto p-4">
                                            <div class="mb-2">
                                                <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                                   href="newsdetail?aid=${newsMaxView.getArticleId()}">${newsMaxView.getCategoryId()}</a>
                                                <a class="text-body" href="newsdetail?aid=${newsMaxView.getArticleId()}"><small>${newsMaxView.getPublishedDate()}</small></a>
                                            </div>
                                            <a class="h4 d-block mb-3 text-secondary text-uppercase font-weight-bold" href="newsdetail?aid=${newsMaxView.getArticleId()}">${newsMaxView.getTitle()}</a>
                                            <p class="m-0">${newsMaxView.getSummary()}</p>
                                        </div>
                                        <div class="d-flex justify-content-between bg-white border-top mt-auto p-4">
                                            <div class="d-flex align-items-center">
                                                <img class="rounded-circle mr-2" src="img/user.jpg" width="25" height="25" alt="">
                                                <small>${newsMaxView.getAuthorId()}</small>
                                            </div>
                                            <div class="d-flex align-items-center">
                                                <small class="ml-3"><i class="far fa-eye mr-2"></i>${newsMaxView.getViews()}</small>
                                                <small class="ml-3"><i class="far fa-comment mr-2"></i>123</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>

                    <div class="col-lg-4">




                        <!-- Popular News Start -->
                        <div class="mb-3">
                            <div class="section-title mb-0">
                                <h4 class="m-0 text-uppercase font-weight-bold">Tranding News</h4>
                            </div>
                            <div class="bg-white border border-top-0 p-3">
                                <c:forEach items="${top5View}" var="listv">
                                    <div class="d-flex align-items-center bg-white mb-3" style="height: 110px;">
                                        <img class="img-fluid" src="${listv.getImageUrl()}" alt="" style="max-width: 110px; max-height: 110px;">
                                        <div class="w-100 h-100 px-3 d-flex flex-column justify-content-center border border-left-0">
                                            <div class="mb-2">
                                                <a class="badge badge-primary text-uppercase font-weight-semi-bold p-1 mr-2" href="newsdetail?aid=${listv.getArticleId()}">${listv.getCategoryId()}</a>
                                                <a class="text-body" href="newsdetail?aid=${listv.getArticleId()}"><small>${listv.getCategoryId()}</small></a>
                                            </div>
                                            <a class="h6 m-0 text-secondary text-uppercase font-weight-bold" href="newsdetail?aid=${listv.getArticleId()}">${listv.getTitle()}</a>
                                        </div>
                                    </div>
                                </c:forEach>





                            </div>
                        </div>
                        <!-- Popular News End -->


                        <!-- Tags Start -->
                        <div class="mb-3">
                            <div class="section-title mb-0">
                                <h4 class="m-0 text-uppercase font-weight-bold">Tags</h4>
                            </div>
                            <div class="bg-white border border-top-0 p-3">
                                <div class="d-flex flex-wrap m-n1">
                                    <c:forEach items="${sessionScope.categroy}" var="listc">
                                        <a href="allnews?categoryID=${listc.getCategoryId()}" class="btn btn-sm btn-outline-secondary m-1">${listc.getName()}</a>
                                    </c:forEach>


                                </div>
                            </div>
                        </div>
                        <!-- Tags End -->
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