package com.example.dao;

import com.example.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {

    // 增加用户
    int addUser(User user);

    // 删除用户
    int deleteUser(@Param("username") String username);

    // 修改用户密码
    int updateUser(User user);

    // 根据用户名查询用户
    User queryUserByName(@Param("username") String username);

    // 查询全部用户
    List<User> queryAllUser();
}
