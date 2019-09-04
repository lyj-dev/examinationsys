package com.xct.examinationsys.service.impl;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.PageHelper;
import com.xct.examinationsys.dao.PaperDao;
import com.xct.examinationsys.dao.QuestionDao;
import com.xct.examinationsys.entity.Paper;
import com.xct.examinationsys.entity.Question;
import com.xct.examinationsys.service.PaperService;
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
        System.out.println("paper/getquestion is called");
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
        redisTemplate.expire("user" + userId,120 , TimeUnit.MINUTES);


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
}
