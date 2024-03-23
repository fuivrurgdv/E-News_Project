<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Register</title>
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
                            <h4 class="m-0 text-uppercase font-weight-bold">Register</h4>
                        </div>
                        <div class="bg-white border border-top-0 p-4 mb-3">
                            
                            <h6 class="text-uppercase font-weight-bold mb-3">Register</h6>
                            <h4 class="text-warning">${mess}</h4>
                            
                            <form action="register" method="post">
                                User Name
                                <div class="form-group">
                                    <input name="username" type="text" class="form-control p-4" placeholder="User Name" required="required"/>
                                </div>
                                Password
                                <div class="form-row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input name="password" type="password" class="form-control p-4" placeholder="Password" required="required"/>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input name="re_password" type="password" class="form-control p-4" placeholder="Re_Password" required="required"/>
                                        </div>
                                    </div>
                                </div>
                                Full Name
                                <div class="form-group">
                                    <input name="name" type="text" class="form-control p-4" placeholder=" Full Name" required="required"/>
                                </div>
                                Date Of Birth
                                <div class="form-group">
                                    <input name="dob" type="date" class="form-control p-4" placeholder=" Date Of Birth" required="required"/>
                                </div>
                                Address 
                                <div class="form-group">
                                    <input name="address" type="text" class="form-control p-4" placeholder="Address" required="required"/>
                                </div>
                                 Email 
                                <div class="form-group">
                                    <input name="email" type="text" class="form-control p-4" placeholder="Email" required="required"/>
                                </div>
                                 <div>
                                        <button class="btn btn-primary font-weight-semi-bold px-4" style="height: 50px;"
                                                type="submit">Register</button>
                                    </div>
                            </form>
                            
                            
                            
                        </div>
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