package com.xct.examinationsys.dao;


import com.xct.examinationsys.entity.Question;

import java.util.List;

public interface QuestionDao {
    List<Question> findAllQuestions(Question question);

    Question selectQuestionById(Integer questionId);

    void addQuestion(Question question);

    void updateQuestion(Question question);

    void delete(int[] id);

    void deleteOne(Integer questionId);

    List<Question> getQuestions(String[] questionIds);

    void batchInsert(List<Question> questionList);
}
