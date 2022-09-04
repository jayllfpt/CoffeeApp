/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.ItemDAO;
import DAO.TypeDAO;
import DTO.Item;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;



/**
 *
 * @author tklin
 */
@WebServlet(name = "ItemServlet", urlPatterns = {"/home"})
public class ItemServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        TypeDAO typedao = new TypeDAO();
//        List<Type> typelist = typedao.getAll();
//        request.setAttribute("type", typelist);

        String txtTypeID = request.getParameter("typeid");
        String searchkey = request.getParameter("searchkey");
        String typekey = request.getParameter("typekey");
        int typeID;
        try {
            typeID = Integer.parseInt(txtTypeID);
        } catch (NumberFormatException e) {
            typeID = 0;
            System.out.println(e);

        }
        ItemDAO itemDAO = new ItemDAO();
        List<Item> itemlist = itemDAO.getItemsByTypeID(typeID, searchkey, typekey);
        request.setAttribute("item", itemlist);

        request.getRequestDispatcher("home.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
