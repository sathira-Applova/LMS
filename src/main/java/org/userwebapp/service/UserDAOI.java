package org.userwebapp.service;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.userwebapp.model.User;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class UserDAOI implements UserDAO{
    private JdbcTemplate jdbcTemplate;
    public UserDAOI(){
        DataSource ds = BooksDAOI.getDataSource();
        jdbcTemplate = new JdbcTemplate(ds);
    }

    @Override
    public int create(User user) {
        String query = "insert into reg_user(uid, email, password, fname, lname) values(?,?,?,?,?);";
        return jdbcTemplate.update(query, user.getUid(), user.getEmail(), user.getPassword(), user.getfName(), user.getlName());
    }

    @Override
    public int update(User user) {
        String query = "Update reg_user set uid=?, email=?, password=?, fname=?, lname=? where bookID=?;";
        return jdbcTemplate.update(query, user.getUid(), user.getEmail(), user.getPassword(), user.getfName(), user.getlName());
    }

    @Override
    public void delete(int id) {
        String sql = "Delete from reg_user where uid=?";
        jdbcTemplate.update(sql, id);
    }

    @Override
    public User retrieveSingleUser(int uid) {
        String query = "select * from reg_user where uid=" + uid;

        ResultSetExtractor<User> extractor = new ResultSetExtractor() {
            @Override
            public User extractData(ResultSet rs) throws SQLException, DataAccessException {
                if (rs.next()) {
                    int uid = rs.getInt("uid");
                    String email = rs.getString("email"), password = rs.getString("password"), fName = rs.getString("fname"), lName = rs.getString("lname"); ;

                    return new User(uid, email, password, fName, lName);
                } else
                    return null;
            }
        };
        return jdbcTemplate.query(query, extractor);
    }

    @Override
    public List<User> getUserList() {
        return null;
    }
}
