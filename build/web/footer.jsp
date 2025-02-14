
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
   <div class="container-fluid bg-dark pt-5 px-sm-3 px-md-5 mt-5">
            <div class="row py-4">
                <div class="col-lg-3 col-md-6 mb-5">
                    <h5 class="mb-4 text-white text-uppercase font-weight-bold">Get In Touch</h5>
                    <p class="font-weight-medium"><i class="fa fa-map-marker-alt mr-2"></i>123 Street, New York, USA</p>
                    <p class="font-weight-medium"><i class="fa fa-phone-alt mr-2"></i>+012 345 67890</p>
                    <p class="font-weight-medium"><i class="fa fa-envelope mr-2"></i>info@example.com</p>
                    <h6 class="mt-4 mb-3 text-white text-uppercase font-weight-bold">Follow Us</h6>
                    <div class="d-flex justify-content-start">
                        <a class="btn btn-lg btn-secondary btn-lg-square mr-2" href="#"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-lg btn-secondary btn-lg-square mr-2" href="#"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-lg btn-secondary btn-lg-square mr-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a class="btn btn-lg btn-secondary btn-lg-square mr-2" href="#"><i class="fab fa-instagram"></i></a>
                        <a class="btn btn-lg btn-secondary btn-lg-square" href="#"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
               
                <div class="col-lg-3 col-md-6 mb-5">
                    <h5 class="mb-4 text-white text-uppercase font-weight-bold">Categories</h5>
                    <div class="m-n1">
                        <c:forEach items="${sessionScope.categroy}" var="listc">
                        <a href="" class="btn btn-sm btn-secondary m-1">${listc.getName()}</a>
                        </c:forEach>
                        
                        
                    </div>
                </div>
                
                
            </div>
        </div>
       
</html>
