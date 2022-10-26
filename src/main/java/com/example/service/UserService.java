package com.example.service;

import com.example.pojo.User;

import java.util.List;

public interface UserService {
    int addUser(User user);

    int deleteUser(String username);

    int updateUser(User user);

    User queryUserByName(String username);

    List<User> queryAllUser();
}
