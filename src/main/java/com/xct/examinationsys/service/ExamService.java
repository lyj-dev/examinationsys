package com.xct.examinationsys.service;

import com.xct.examinationsys.entity.Exam;

import java.util.List;
import java.util.Map;

public interface ExamService {
    List<Exam> findAllExams(Map<String, Integer> pageMap, Exam exam);


    Exam selectExam(Integer id);

    void addExam(Exam exam);

    void updateExam(Exam exam);

    void delete(int[] id);

    void submitPaper(Map<String, String[]> parameterMap);
}
