package com.shinonon.service;

import com.shinonon.bean.Book;
import com.shinonon.dao.BookDao;

import java.util.List;

public class BookService {
    private BookDao bookDao = new BookDao();

    public List<Book> searchAllBooks(int pageNum, int pageSize) {

        List<Book> books = bookDao.selectAll(pageNum, pageSize);

        return books;
    }

    public int countNum() {

        return bookDao.count();
    }
}