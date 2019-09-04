package com.xct.examinationsys.service.impl;

import com.github.pagehelper.PageHelper;
import com.xct.examinationsys.dao.CourseDao;
import com.xct.examinationsys.entity.Course;
import com.xct.examinationsys.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class CourseServiceImpl implements CourseService {
    @Autowired
    private CourseDao courseDao;

    @Override
    public List<Course> findAllCourses(Map<String, Integer> pageMap, Course course) {
        // 设置页码和每页显示的记录数，该语句后面，紧跟着数据库查询相关的语句
        PageHelper.startPage(pageMap.get("page"), pageMap.get("limit"));
        return courseDao.findAllCourses(course);
    }

    @Override
    public Course selectCourse(Integer id) {
        return courseDao.selectCourseById(id);
    }

    @Override
    public void addCourse(Course course) {
        courseDao.addCourse(course);
    }

    @Override
    public void updateCourse(Course course) {
        courseDao.updateCourse(course);
    }

    @Override
    public void delete(int[] id) {
        courseDao.delete(id);
    }

    @Override
    public List<Course> findAllCourseName() {
        List<Course> courseList = courseDao.findAllCourseName();
        return courseList;
    }
}
