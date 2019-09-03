package com.xct.examinationsys.controller;


import com.github.pagehelper.Page;
import com.xct.examinationsys.common.JsonResult;
import com.xct.examinationsys.entity.User;
import com.xct.examinationsys.service.UserService;
import com.xct.examinationsys.utils.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/list")
    public Map<String, Object> listUsers(Integer page, Integer limit, User user) {
        Map<String, Integer> pageMap = new HashMap<>();
        pageMap.put("page", page);
        pageMap.put("limit", limit);

        List<User> list = userService.findAllUsers(pageMap, user);

        long total = ((Page) list).getTotal();

        return PageUtil.pubPage(total, list);
    }

    @RequestMapping("/query")
    public JsonResult<Object> queryUser(String userId) {
        if (userId == null || userId.equals("")) {
            return new JsonResult<>(0, "用户ID为空");
        }
        return new JsonResult<>(1, userService.selectUser(userId));
    }

    @RequestMapping(value = "/addOrUpdate")
    public JsonResult<String> addOrUpdateUser(User user) {
        if (user.getUserId() == null || user.getUserId().equals("")) {
            userService.addUser(user);
        } else {
            userService.updateUser(user);
        }
        return new JsonResult<>(1, "保存成功");
    }

    @RequestMapping("/delete")
    public JsonResult<String> delete(int[] id) {
        userService.delete(id);
        return new JsonResult<>(1, "删除成功");
    }
}
