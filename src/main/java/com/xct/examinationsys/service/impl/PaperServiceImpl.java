package com.xct.examinationsys.service.impl;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.PageHelper;
import com.xct.examinationsys.dao.PaperDao;
import com.xct.examinationsys.dao.QuestionDao;
import com.xct.examinationsys.entity.Paper;
import com.xct.examinationsys.entity.Question;
import com.xct.examinationsys.service.PaperService;
import com.xct.examinationsys.service.QuestionService;
import com.xct.examinationsys.utils.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

@Service
public class PaperServiceImpl implements PaperService {
    @Autowired(required = false)
    private PaperDao paperDao;
    @Autowired(required = false)
    private QuestionDao questionDao;
    @Autowired
    private StringRedisTemplate redisTemplate;
    @Autowired
    private ObjectMapper objectMapper;
    @Autowired
    private QuestionService questionService;

    @Override
    public List<Paper> findAllPapers(Map<String, Integer> pageMap, Paper paper) {
        // 设置页码和每页显示的记录数，该语句后面，紧跟着数据库查询相关的语句
        PageHelper.startPage(pageMap.get("page"), pageMap.get("limit"));
        return paperDao.findAllPapers(paper);
    }

    @Override
    public Paper selectPaper(Integer id) {
        return paperDao.selectPaperById(id);
    }

    @Override
    public void addPaper(Paper paper) {
        // 从数据库中随机获取各种类的指定数量的题目
        List<Question> singleChoiceNumList = questionService.selectQuestionsByTypeId(1, paper.getCourseId(), paper.getSingleChoiceNum());
        List<Question> multiChoicNumList = questionService.selectQuestionsByTypeId(2, paper.getCourseId(), paper.getMultiChoicNum());
        List<Question> ToFNumList = questionService.selectQuestionsByTypeId(3, paper.getCourseId(), paper.getToFNum());
        List<Question> shortAnswerNumList = questionService.selectQuestionsByTypeId(5, paper.getCourseId(), paper.getShortAnswerNum());

        String questionIds;
        questionIds = getQuestionIdsStr(singleChoiceNumList) + getQuestionIdsStr(multiChoicNumList)
                + getQuestionIdsStr(ToFNumList) + getQuestionIdsStr(shortAnswerNumList);

        String substring = questionIds.substring(1);

        paper.setQuestionIds(substring);

        paperDao.addPaper(paper);
    }

    @Override
    public void updatePaper(Paper paper) {
        paperDao.updatePaper(paper);
    }

    @Override
    public void delete(int[] id) {
        paperDao.delete(id);
    }

    @Override
    public List<Question> getQuestions(Integer paperId, String userId) {
        Paper paper = paperDao.findPaperById(paperId);
        if (paper == null) {
            throw new RuntimeException("没有此ID对应的试卷信息");
        }
        String[] questionIds = paper.getQuestionIds().split(",");

        // 如果查到题目信息，将题目信息存入redis中
        List<Question> questionList = questionDao.getQuestions(questionIds);
        Map<String, String> map = new HashMap<>();
        for (Question q : questionList) {
            try {
                map.put(q.getQuestionId().toString(), objectMapper.writeValueAsString(q));
            } catch (JsonProcessingException e) {
                e.printStackTrace();
            }
        }
        redisTemplate.opsForHash().putAll("paper" + paperId, map);
        //设置过期时间两个小时
        redisTemplate.expire("paper" + paperId,120 , TimeUnit.MINUTES);

        // 将考试开始时间写入redis中
        redisTemplate.opsForHash().put("user" + userId, "beginTime", DateUtil.formateData( new Date()));
        redisTemplate.expire("user" + userId,130 , TimeUnit.MINUTES);

        return questionList;
    }

    @Override
    public Paper getPaperById(Integer paperId) {
        return paperDao.getPaperById(paperId);
    }

    @Override
    public void deleteOne(Integer paperId) {
        paperDao.deleteOne(paperId);

    }

    private static String getQuestionIdsStr(List<Question> list) {
        if (list == null) {
            return "";
        }
        String questionIdsStr = "";
        for (Question q : list) {
            questionIdsStr = questionIdsStr + "," + q.getQuestionId();
        }
        return questionIdsStr;
    }
}
