package com.xct.examinationsys.service;

import com.xct.examinationsys.entity.QuestionType;

import java.util.List;
import java.util.Map;

public interface QuestionTypeService {
    List<QuestionType> findAllQuestionTypes(Map<String, Integer> pageMap, QuestionType questionType);

    QuestionType selectQuestionType(Integer id);

    void addQuestionType(QuestionType questionType);

    void updateQuestionType(QuestionType questionType);

    void delete(int[] id);

    List<QuestionType> findAllQuestionType();
}
