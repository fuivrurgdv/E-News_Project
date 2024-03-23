<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Login</title>
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


            <!-- Contact Start -->
            <div class="container-fluid mt-5 pt-3">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section-title mb-0">
                                <h4 class="m-0 text-uppercase font-weight-bold">Login</h4>
                            </div>
                            <div class="bg-white border border-top-0 p-4 mb-3">

                                <h6 class="text-uppercase font-weight-bold mb-3">Login</h6>
                                <h4 class="text-warning">${mess}</h4>

                                <form action="login" method="post">
                                    User Name
                                    <div class="form-group">
                                        <input name="username" type="text" class="form-control p-4" placeholder="userName" required="required"/>
                                    </div>
                                    Password
                                    <div class="form-group">
                                        <input name="password" type="password" class="form-control p-4" placeholder="password" required="required"/>
                                    </div>
                                    <div>
                                        <button class="btn btn-primary font-weight-semi-bold px-4" style="height: 50px;"
                                                type="submit">Login</button>
                                    </div>
                                </form>


                            </div>
                        </div>
                        <div class="col-lg-4">



                        </div>
                    </div>
                </div>
            </div>
            <!-- Contact End -->

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