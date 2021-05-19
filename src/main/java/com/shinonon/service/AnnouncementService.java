package com.shinonon.service;


import com.shinonon.bean.Announcement;
import com.shinonon.dao.AnnouncementDao;

import java.util.List;

/**
 * @author Shinonon
 */
public class AnnouncementService {
    private final AnnouncementDao announcementDao = new AnnouncementDao();

    public List<Announcement> queryAll() {
        return announcementDao.selectAll();
    }

    public int count() {
        return announcementDao.count();
    }

    public String addAnnouncement(String title, String detail) {
        int result = announcementDao.insertAnnouncement(title, detail);
        if (result > 0) {
            return "新建通知成功";
        } else {
            return "新建通知失败";
        }
    }
}
