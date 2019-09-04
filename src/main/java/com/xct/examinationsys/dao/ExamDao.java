package com.xct.examinationsys.dao;


import com.xct.examinationsys.entity.Exam;

import java.util.List;

public interface ExamDao {
    List<Exam> findAllExams(Exam exam);

    List<Exam> findAll();

    Exam selectExamById(Integer valueOf);

    void addExam(Exam exam);

    void updateExam(Exam exam);

    void delete(int[] id);
}
