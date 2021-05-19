package com.shinonon.dao;

import com.shinonon.bean.Announcement;
import com.shinonon.utils.JDBCUtil;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Shinonon
 */
public class AnnouncementDao {
    public int insertAnnouncement(String title, String detail) {
        String sql = "insert into announcement(title, detail,publish_date) values(?,?,?)";
        return JDBCUtil.getInstance().executeUpdate(sql,
                new Object[]{
                        title, detail,
                        new Date(System.currentTimeMillis())
                });
    }

    public List<Announcement> selectAll() {
        String sql = "select * from announcement order by publish_date desc";

        List<Announcement> announcements = new ArrayList<>();
        try (ResultSet rs =
                     JDBCUtil.getInstance().executeQueryRS(sql,
                             new Object[]{})) {

            while (rs.next()) {
                Announcement announcement = new Announcement(rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("detail"),
                        rs.getDate("publish_date"));
                announcements.add(announcement);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return announcements;
    }

    public int count() {
        String sql = "select count(*) as countNum from announcement";
        try (ResultSet rs =
                     JDBCUtil.getInstance().executeQueryRS(sql,
                             new Object[]{})) {

            while (rs.next()) {
                return rs.getInt("countNum");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }
}
