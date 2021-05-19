package com.shinonon.servlet;

import com.shinonon.bean.Announcement;
import com.shinonon.service.AnnouncementService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author Shinonon
 */
@WebServlet(name = "AnnouncementServlet", urlPatterns = "/announcement/all")
public class AnnouncementServlet extends HttpServlet {
    private final AnnouncementService announcementService = new AnnouncementService();

    @Override
    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("utf-8");
        List<Announcement> announcements;
        int count;
        announcements = announcementService.queryAll();

        count = announcementService.count();
        req.getSession().setAttribute("announcements", announcements);
        resp.getWriter().print(count);
    }
}
