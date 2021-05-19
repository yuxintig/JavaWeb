package com.shinonon.servlet;


import com.shinonon.service.AnnouncementService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Shinonon
 */
@WebServlet(name = "AddAnnouncementServlet", urlPatterns = "/announcement/add")
public class AddAnnouncementServlet extends HttpServlet {

    private final AnnouncementService announcementService = new AnnouncementService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("utf-8");
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = req.getParameter("title");
        String notifation = req.getParameter("announcement");
        String result = announcementService.addAnnouncement(title, notifation);
        resp.getWriter().print(result);
    }
}
