package com.xct.examinationsys.filter;

import com.xct.examinationsys.utils.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(urlPatterns = "/user")
public class TokenFilter implements Filter {
    @Autowired
    private StringRedisTemplate redisTemplate;

    @Override
    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest)servletRequest;
        HttpServletResponse resp = (HttpServletResponse)servletResponse;

        String uri = req.getRequestURI();
        String method = req.getMethod();
        // 修改请求头中数据后，会先发送提交类型是options的请求
        if(method.equals("OPTIONS")){
            return;
        }
        if(uri.contains("login") || uri.contains("register") ){
            filterChain.doFilter(servletRequest, servletResponse);
        }else {

            String token = req.getHeader("token");

            System.out.println(token);
            if(token != null){
                // 从redis中取值
                String name = redisTemplate.opsForValue().get(token);
                String token2 = MD5Utils.md5(name + "heihei");
                if (token != null && token.equals(token2)) {
                    // 合法用户
                    filterChain.doFilter(servletRequest, servletResponse);
                } else {
                    String head = req.getHeader("x-requested-with");
                    // 判断是否ajax请求
                    if(head != null && head.equals("XMLHttpRequest")){
                        resp.getWriter().write(token);
                        return;
                    }else {
                        // 跳转到登陆页面
                        resp.sendRedirect("http://127.0.0.1:8020/examinationsys/login.html");
                        return;
                    }
                }
            }else{
                String head = req.getHeader("x-requested-with");
                // 判断是否ajax请求
                if(head != null && head.equals("XMLHttpRequest")){
                    resp.getWriter().write(token);
                    return;
                }else {
                    // 跳转到登陆页面
                    resp.sendRedirect("http://127.0.0.1:8020/examinationsys/login.html");
                    return;
                }
            }

        }
    }

    @Override
    public void init(FilterConfig config) throws ServletException {

    }

}
