package com.shinonon.dao;

import com.shinonon.bean.Message;
import com.shinonon.utils.JDBCUtil;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Shinonon
 */
public class MessageDao {

    public int insertMessage(String cardId, String detail) {
        String sql = "insert into message(card_id, detail,public_date) values(?,?,?)";
        return JDBCUtil.getInstance().executeUpdate(sql,
                new Object[]{
                        cardId, detail,
                        new Date(System.currentTimeMillis())
                });
    }

    public List<Message> selectByKeyword(int pageNum, int pageSize, String keyword) {
        String sql = "select * from message where detail = ? limit ?,?";

        List<Message> messages = new ArrayList<>();
        try (ResultSet rs =
                     JDBCUtil.getInstance().executeQueryRS(sql,
                             new Object[]{(pageNum - 1) * pageSize,
                                     pageSize, keyword})) {

            while (rs.next()) {
                Message message = new Message(rs.getInt("id"),
                        rs.getInt("card_id"),
                        rs.getString("detail"),
                        rs.getDate("public_date"));
                messages.add(message);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return messages;
    }

    public List<Message> selectAll(int pageNum, int pageSize) {
        String sql = "select * from message limit ?,?";

        List<Message> messages = new ArrayList<>();
        try (ResultSet rs =
                     JDBCUtil.getInstance().executeQueryRS(sql,
                             new Object[]{(pageNum - 1) * pageSize,
                                     pageSize})) {

            while (rs.next()) {
                Message message = new Message(rs.getInt("id"),
                        rs.getInt("card_id"),
                        rs.getString("detail"),
                        rs.getDate("public_date"));
                messages.add(message);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return messages;
    }

    public int count() {
        String sql = "select count(*) as countNum from message";
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
