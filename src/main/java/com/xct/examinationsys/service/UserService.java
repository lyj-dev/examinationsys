package com.xct.examinationsys.service;

import com.xct.examinationsys.entity.User;

import java.util.List;
import java.util.Map;

public interface UserService {
    List<User> findAllUsers(Map<String, Integer> pageMap, User user);

    User selectUser(String id);

    void addUser(User user);

    void updateUser(User user);

    void delete(int[] id);

    /**
     * 用户登录
     *
     * @param userId 传入的是一个用户的账户
     * @return 返回的是 User类对象
     */
    public User loginByUserId(String userId);

    /**
     * 用户注册
     *
     * @param user User类对象
     */
    public void registerUser(User user);

    /**
     * 查询用户的总数
     *
     * @return 返回的是用户的总数
     */
    public String totalQuantity();

    User selectAdminUserById(User admin);
}
