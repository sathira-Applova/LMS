package org.userwebapp.service;

import org.userwebapp.model.Book;

import java.util.List;

public interface BooksDAO {
    public int create(Book book);

    public int update(Book book);

    public void delete(int id);

    public Book retrieveSingleBook(int bookID);

    public List<Book> getBookList();
}
