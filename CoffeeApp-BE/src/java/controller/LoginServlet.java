/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.AccountDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import DTO.Account;

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
        String shopname = request.getParameter("shopnametxt");
        String username = request.getParameter("usernametxt");
        String password = request.getParameter("passwordtxt");
        String r = request.getParameter("rem");

        AccountDAO dao = new AccountDAO();
        Account acc = dao.getAccount(shopname, username, password);
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
                response.sendRedirect("home.jsp");

            } else {
                // customer
                response.sendRedirect("home.jsp");
            }
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
