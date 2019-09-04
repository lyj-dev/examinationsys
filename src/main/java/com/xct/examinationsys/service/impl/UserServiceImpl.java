package com.xct.examinationsys.service.impl;

import com.github.pagehelper.PageHelper;
import com.xct.examinationsys.dao.UserDao;
import com.xct.examinationsys.entity.User;
import com.xct.examinationsys.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {
    @Autowired(required = false)
    private UserDao userDao;

    @Override
    public List<User> findAllUsers(Map<String, Integer> pageMap, User user) {
        // 设置页码和每页显示的记录数，该语句后面，紧跟着数据库查询相关的语句
        PageHelper.startPage(pageMap.get("page"), pageMap.get("limit"));
        return userDao.findAllUsers(user);
    }

    @Override
    public User selectUser(String id) {
        return userDao.selectUserById(id);
    }

    @Override
    public void addUser(User user) {
        userDao.addUser(user);
    }

    @Override
    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    @Override
    public void delete(int[] id) {
        userDao.delete(id);
    }

    @Override
    public User loginByUserId(String userId) {
        return userDao.selectUserById(userId);
    }

    @Override
    public void registerUser(User user) {
        user.setUserId(totalQuantity());
        System.out.println(user);
        userDao.registerUser(user);
    }

    @Override
    public String totalQuantity() {
        Integer t =  userDao.totalQuantity()+1;
        String total = t.toString();
        return total;
    }
}
