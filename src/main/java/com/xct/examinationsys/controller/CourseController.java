package com.xct.examinationsys.controller;


import com.github.pagehelper.Page;
import com.xct.examinationsys.common.JsonResult;
import com.xct.examinationsys.entity.Course;
import com.xct.examinationsys.entity.Question;
import com.xct.examinationsys.service.CourseService;
import com.xct.examinationsys.service.QuestionService;
import com.xct.examinationsys.utils.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/course")
public class CourseController {

    @Autowired
    private CourseService courseService;

    @RequestMapping("/list")
    @ResponseBody
    public Map<String, Object> listCourses(Integer page, Integer limit, Course course) {
        Map<String, Integer> pageMap = new HashMap<>();
        pageMap.put("page", page);
        pageMap.put("limit", limit);

        List<Course> list = courseService.findAllCourses(pageMap, course);

        long total = ((Page) list).getTotal();

        return PageUtil.pubPage(total, list);
    }

    @RequestMapping("/query")
    public JsonResult<Object> queryCourse(Integer courseId) {
        if (courseId == null) {
            return new JsonResult<Object>(0, "ID为空");
        }

        return new JsonResult<>(1, courseService.selectCourse(courseId));
    }

    @RequestMapping("/addOrUpdate")
    public JsonResult<String> addOrUpdateCourse(Course course) {
        if (course.getCourseId() == null) {
            courseService.addCourse(course);
        } else {
            courseService.updateCourse(course);
        }
        return new JsonResult<>(1, "保存成功");
    }

    @RequestMapping("/delete")
    public JsonResult<String> delete(int[] id) {
        courseService.delete(id);
        return new JsonResult<>(1, "删除成功");
    }

    @RequestMapping("/courseName")
    public Map<String, Object> findAllCourseName(){
        Map<String, Object> map = new HashMap<>();
        List<Course> course = courseService.findAllCourseName();

        map.put("course", course);
        return map;

    }
}
