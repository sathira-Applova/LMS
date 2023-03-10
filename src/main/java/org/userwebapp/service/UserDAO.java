package org.userwebapp.service;

import org.userwebapp.model.User;

import java.util.List;

public interface UserDAO {
    public int create(User user);

    public int update(User user);

    public void delete(int id);

    public User retrieveSingleUser(int uid);

    public List<User> getUserList();
}
