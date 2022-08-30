/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.ItemDAO;
import dal.TypeDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Item;
import model.Type;

/**
 *
 * @author tklin
 */
@WebServlet(name="ItemServlet", urlPatterns={"/home"})
public class ItemServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
//        TypeDAO typedao = new TypeDAO();
//        List<Type> typelist = typedao.getAll();
//        request.setAttribute("type", typelist);
        
        String txtTypeID = request.getParameter("typeid");
        int typeID;
        try {
            typeID = Integer.parseInt(txtTypeID);
            ItemDAO itemdao = new ItemDAO();
            List<Item> itemlist = itemdao.getItemsByTypeID(typeID);
            request.setAttribute("item", itemlist);
        } catch (NumberFormatException e) {
            System.out.println(e);
        }
        request.getRequestDispatcher("home.jsp").forward(request, response);
        
    } 


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
