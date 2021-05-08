package com.shinonon.servlet;


import com.shinonon.service.BookService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Shinonon
 */
@WebServlet(name = "BorrowBooksServlet", urlPatterns = "/book/borrow")
public class BorrowBooksServlet extends HttpServlet {

    private final BookService bookService = new BookService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("utf-8");
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("utf-8");
        String uid = req.getParameter("uid");
        String bookId = req.getParameter("bookId");
        String result = bookService.borrowBook(uid, bookId);
        resp.getWriter().print(result);
    }
}
