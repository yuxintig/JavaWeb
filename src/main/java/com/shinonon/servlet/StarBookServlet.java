package com.shinonon.servlet;

import com.alibaba.fastjson.JSON;
import com.shinonon.service.BookService;
import org.apache.commons.io.IOUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;

@WebServlet(name = "StoreBookServlet", urlPatterns = "/book/store")
public class StarBookServlet extends HttpServlet {

    private final BookService bookService = new BookService();

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {

        String paramJson = IOUtils.toString(request.getInputStream(), StandardCharsets.UTF_8);
        HashMap<String, Object> parseObject = JSON.parseObject(paramJson, HashMap.class);
        String username = (String) parseObject.get("user");
        String bookId = (String) parseObject.get("book");
        String message = bookService.starBook(username, bookId);
        response.getWriter().print(message);
    }
}