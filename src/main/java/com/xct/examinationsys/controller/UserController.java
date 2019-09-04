package com.xct.examinationsys.controller;


import com.github.pagehelper.Page;
import com.xct.examinationsys.common.JsonResult;
import com.xct.examinationsys.entity.User;
import com.xct.examinationsys.service.UserService;
import com.xct.examinationsys.utils.MD5Utils;
import com.xct.examinationsys.utils.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private StringRedisTemplate redisTemplate;

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


    @RequestMapping("/login.do")
    public Map<String, Object> login(String userId, String userPwd){
        Map<String, Object> map = new HashMap<>();
        //调用service进行查询用户的信息
        User user = userService.loginByUserId(userId);

        if (user.getUserPwd().equals(userPwd)){

            //根据name生成 token
            String token = MD5Utils.md5(userId + "heihei");
            map.put("token",token);
            map.put("user", user);

            // 将 token写到redis中,并设置其有效时间
            redisTemplate.opsForValue().set(token, userId);
            redisTemplate.expire(token, 1800, TimeUnit.SECONDS);

        }
        return map;
    }

    @RequestMapping("/register.do")
    public JsonResult registerUser(User user) {
        try {
            userService.registerUser(user);
            return new JsonResult<>(1, "注册成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new JsonResult<>(0, "注册失败");
        }

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
