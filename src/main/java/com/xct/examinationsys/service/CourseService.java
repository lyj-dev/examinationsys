package com.xct.examinationsys.service;

import com.xct.examinationsys.entity.Course;

import java.util.List;
import java.util.Map;

public interface CourseService {
    List<Course> findAllCourses(Map<String, Integer> pageMap, Course course);

    Course selectCourse(Integer id);

    void addCourse(Course course);

    void updateCourse(Course course);

    void delete(int[] id);

    /**
     * 查询所有的课程
     * @return 返回的是 Course类对象的集合
     */
    List<Course> findAllCourseName();
}
