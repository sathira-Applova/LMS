package org.userwebapp.service;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.userwebapp.model.Book;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BooksDAOI implements BooksDAO {
    private JdbcTemplate jdbcTemplate;

    public BooksDAOI() {
        DataSource ds = getDataSource();
        jdbcTemplate = new JdbcTemplate(ds);
    }

    public DataSource getDataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/lms_db");
        dataSource.setUsername("root");
        dataSource.setPassword("beyondm");
        return dataSource;
    }

    @Override
    public int create(Book book) {
        String query = "insert into books(bookID, bookName, noOfCopies) values(?,?,?);";
        return jdbcTemplate.update(query, book.getBookID(), book.getbName(), book.getNoOfCopies());
    }

    @Override
    public int update(Book book) {
        String query = "Update books set bookID=?, bookName=?, noOfCopies=? where bookID=?;";
        return jdbcTemplate.update(query, book.getBookID(), book.getbName(), book.getNoOfCopies(), book.getBookID());
    }

    @Override
    public void delete(int id) {
        String sql = "Delete from books where bookID=?";
        jdbcTemplate.update(sql, id);
    }

    @Override
    public Book retrieveSingleBook(int bookID) {
        String query = "select * from books where bookID=" + bookID;

        ResultSetExtractor<Book> extractor = new ResultSetExtractor() {
            @Override
            public Book extractData(ResultSet rs) throws SQLException, DataAccessException {
                if (rs.next()) {
                    int bookID = rs.getInt("bookID"), noOfCopies = rs.getInt("noOfCopies");
                    String bookName = rs.getString("bookName");

                    return new Book(bookID, bookName, noOfCopies);
                } else
                    return null;
            }
        };
        return jdbcTemplate.query(query, extractor);
    }

    @Override
    public List<Book> getBookList() {
        String query = "select * from books";
        List<Book> bookList = new ArrayList<>();

        ResultSetExtractor<List> extractor = new ResultSetExtractor() {
            @Override
            public List<Book> extractData(ResultSet rs) throws SQLException, DataAccessException {
                if (rs.next()) {
                    do {
                        bookList.add(new Book(rs.getInt("bookID"), rs.getString("bookName"), rs.getInt("noOfCopies")));
                    } while (rs.next());
                }
                return bookList;
            }
        };

        return jdbcTemplate.query(query, extractor);
    }
}
