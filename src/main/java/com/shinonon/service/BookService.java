package com.shinonon.service;

import com.shinonon.bean.Book;
import com.shinonon.dao.BookDao;

import java.util.List;

/**
 * @author Shinonon
 */
public class BookService {
    private BookDao bookDao = new BookDao();

    public List<Book> searchAllBooks(String username, int pageNum,
                                     int pageSize) {

        List<Book> books = bookDao.selectAll(pageNum, pageSize);
        for (Book book : books) {
            book.setStore(isStar(username, book.getId()));
        }
        return books;
    }

    public List<Book> getBookHistory(String username, int pageNum, int pageSize) {

        return bookDao.selectAll(pageNum, pageSize);
    }

    public int countNum() {
        return bookDao.count();
    }

    public boolean isStar(String username, String bookId) {
        return bookDao.isExist(username, bookId);
    }

    public List<Book> queryBorrowBook(String uid, int pageNum,
                                      int pageSize) {

        List<Book> books = bookDao.selectAll(pageNum, pageSize);
        return books;
    }

    public String starBook(String username, String bookId) {
        int result = bookDao.insertBook(username, bookId);
        if (result > 0) {
            return "借阅成功";
        } else {
            return "借阅失败";
        }
    }

    public String borrowBook(String uid, String bookId){
        int result = bookDao.borrowBook(Integer.parseInt(uid), bookId);
        if (result > 0) {
            return "借阅成功";
        } else {
            return "借阅失败";
        }
    }
}