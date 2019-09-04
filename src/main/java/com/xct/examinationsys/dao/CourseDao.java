package com.xct.examinationsys.dao;


import com.xct.examinationsys.entity.Course;

import java.util.List;

public interface CourseDao {
    List<Course> findAllCourses(Course course);

    /**
     * 查询所有的课程
     * @return 返回的是 Course类对象的集合
     */
    List<Course> findAllCourseName();

    Course selectCourseByName(String courseName);

    Course selectCourseById(Integer valueOf);

    void addCourse(Course course);

    void updateCourse(Course course);

    void delete(int[] id);
}
