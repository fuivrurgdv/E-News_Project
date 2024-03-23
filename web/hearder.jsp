
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html>
    <!-- Topbar Start -->
    <div class="container-fluid d-none d-lg-block">
        <div class="row align-items-center bg-dark px-lg-5">
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-sm bg-dark p-0">
                    <ul class="navbar-nav ml-n2">
                        <li class="nav-item border-right border-secondary">
                            <%
                  // Lấy thời gian hiện tại
                  Date currentTime = new Date();

                  // Định dạng chuỗi thời gian
                  SimpleDateFormat dateFormat = new SimpleDateFormat("'Hà Nội, 'EEEE, 'Ngày' d, 'Tháng' M, 'Năm' yyyy");
                  String timeString = dateFormat.format(currentTime);
                            %>
                            <a class="nav-link text-body small" href="#"><%= timeString %></a>
                        </li>


                        <li class="nav-item">
                            <a class="nav-link text-body small" href="#">Hello</a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3 text-right d-none d-md-block">
                <nav class="navbar navbar-expand-sm bg-dark p-0">
                    <ul class="navbar-nav ml-auto mr-n2">
                        <c:if test="${sessionScope.username == null}">
                            <li class="nav-item">
                                <a class="nav-link text-body small" href="login">Login</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-body small" href="register">Register</a>
                            </li>

                        </c:if>
                        <c:if test="${sessionScope.username != null}">

                            <c:if test="${sessionScope.username.getRole() == 2}">
                                <li class="nav-item">
                                    <a class="nav-link text-body small" href="managerArticles">Manager Articles</a>
                                </li>
                            </c:if>
                            <li class="nav-item">
                                <a class="nav-link text-body small" href="logout">logout</a>
                            </li>
                        </c:if>



                    </ul>
                </nav>
            </div>
        </div>
        <div class="row align-items-center bg-white py-3 px-lg-5">
            <div class="col-lg-4">
                <a href="home" class="navbar-brand p-0 d-none d-lg-block">
                    <h1 class="m-0 display-4 text-uppercase text-primary">NL<span class="text-secondary font-weight-normal">News</span></h1>
                </a>
            </div>
            <div class="col-lg-8 text-center text-lg-right">
                <a href=""><img class="img-fluid" src="" alt=""></a>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-2 py-lg-0 px-lg-5">
            <a href="index.html" class="navbar-brand d-block d-lg-none">
                <h1 class="m-0 display-4 text-uppercase text-primary">Biz<span class="text-white font-weight-normal">News</span></h1>
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between px-0 px-lg-3" id="navbarCollapse">
                <div class="navbar-nav mr-auto py-0">


                    <a href="home" class="nav-item nav-link">Home</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Category</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="allnews" class="dropdown-item">All news</a>



                            <c:forEach items="${sessionScope.categroy}" var="listc">
                                <a href="allnews?categoryID=${listc.getCategoryId()}" class="dropdown-item">${listc.getName()}</a>
                            </c:forEach>


                        </div>
                    </div>


                </div>
                <form class="input-group ml-auto d-none d-lg-flex" style="width: 100%; max-width: 300px;" action="home" method="post">
                    <div class="input-group ml-auto d-none d-lg-flex" style="width: 100%; max-width: 300px;">

                        <input type="text" name="search" class="form-control border-0" placeholder="Keyword">
                        <div class="input-group-append">
                            <button type="submit" class="input-group-text bg-primary text-dark border-0 px-3"><i
                                    class="fa fa-search"></i></button>
                        </div>


                    </div>
                </form>
            </div>
        </nav>
    </div>
    <!-- Navbar End -->
</html>
