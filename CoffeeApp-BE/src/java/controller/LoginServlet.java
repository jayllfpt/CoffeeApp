/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.AccountDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author tklin
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String r = request.getParameter("rem");

        AccountDAO dao = new AccountDAO();
        Account acc = dao.checkLogin(username, password);
        HttpSession session = request.getSession();
        if (acc == null) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
//            Cookie cu = new Cookie("cuser", username);
//            Cookie crole = new Cookie("crole", String.valueOf(acc.getRoleID()));
//            if (r != null) {
//                //check save
//                cu.setMaxAge(60 * 60 * 24);
//                crole.setMaxAge(60 * 60 * 24);
//                response.addCookie(cu);
//                response.addCookie(crole);
//            }

            session.setAttribute("account", acc);
            if (acc.getRoleID() == 1) {
                // admin
                response.sendRedirect("home");

            } else {
                // customer
                response.sendRedirect("home");
            }
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
