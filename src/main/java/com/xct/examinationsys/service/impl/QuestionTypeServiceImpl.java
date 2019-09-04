package com.xct.examinationsys.service.impl;

import com.github.pagehelper.PageHelper;
import com.xct.examinationsys.dao.QuestionTypeDao;
import com.xct.examinationsys.entity.QuestionType;
import com.xct.examinationsys.service.QuestionTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class QuestionTypeServiceImpl implements QuestionTypeService {

    @Autowired
    private QuestionTypeDao questionTypeDao;

    @Override
    public List<QuestionType> findAllQuestionTypes(Map<String, Integer> pageMap, QuestionType questionType) {
        // 设置页码和每页显示的记录数，该语句后面，紧跟着数据库查询相关的语句
        PageHelper.startPage(pageMap.get("page"), pageMap.get("limit"));
        return questionTypeDao.findAllQuestionTypes(questionType);
    }

    @Override
    public QuestionType selectQuestionType(Integer id) {
        return questionTypeDao.selectQuestionTypeById(id);
    }

    @Override
    public void addQuestionType(QuestionType questionType) {
        questionTypeDao.addQuestionType(questionType);
    }

    @Override
    public void updateQuestionType(QuestionType questionType) {
        questionTypeDao.updateQuestionType(questionType);
    }

    @Override
    public void delete(int[] id) {
        questionTypeDao.delete(id);
    }

    @Override
    public List<QuestionType> findAllQuestionType() {
        return questionTypeDao.findAllQuestionType();
    }
}
