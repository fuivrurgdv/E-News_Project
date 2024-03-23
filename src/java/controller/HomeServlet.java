/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.ArticlesDAO;
import dal.CategoryDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Articles;
import model.Categories;

/**
 *
 * @author KinNhun
 */
public class HomeServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet HomeServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HomeServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //danh sách category
        CategoryDAO cd = new CategoryDAO();
        List<Categories> listc = cd.getAllCategories();
        HttpSession session = request.getSession();

        //danh sạch 4 new mưới nhất 
        ArticlesDAO adao = new ArticlesDAO();
        List<Articles> lista = adao.getTop3News();
        List<Articles> listTop4 = adao.getTop4News();
        List<Articles> listAll = adao.getAllNews();
        List<Articles> list5th = adao.get5thNews();
        Articles newsMaxView = adao.getNewsHasMaxView();
        List<Articles> top5View = adao.get5NewsViews();

        session.setAttribute("categroy", listc);
        request.setAttribute("listTop3", lista);
        request.setAttribute("listTop4", listTop4);
        request.setAttribute("listAll", listAll);
        request.setAttribute("list5th", list5th);
        request.setAttribute("newsMaxView", newsMaxView);
        request.setAttribute("top5View", top5View);

        request.getRequestDispatcher("home.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String search = request.getParameter("search");
        ArticlesDAO adao = new ArticlesDAO();
        List<Articles> listSearch = adao.getArticlesBySearch(search);
        request.setAttribute("allNews", listSearch);
        
        request.getRequestDispatcher("allNews.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
