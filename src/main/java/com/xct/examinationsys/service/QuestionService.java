package com.xct.examinationsys.service;

import com.xct.examinationsys.entity.Question;

import java.util.List;
import java.util.Map;

public interface QuestionService {
    List<Question> findAllQuestions(Map<String, Integer> pageMap, Question question);

    Question selectQuestion(Integer id);

    void addQuestion(Question question);

    void updateQuestion(Question question);

    void delete(int[] id);

    void batchSave(List<Question> questionList);

    void deleteOne(Integer questionId);
}
