package com.xct.examinationsys.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.PageHelper;
import com.xct.examinationsys.dao.AnswerRecordDao;
import com.xct.examinationsys.dao.ExamDao;
import com.xct.examinationsys.entity.AnswerRecord;
import com.xct.examinationsys.entity.Exam;
import com.xct.examinationsys.entity.Paper;
import com.xct.examinationsys.entity.Question;
import com.xct.examinationsys.service.ExamService;
import com.xct.examinationsys.utils.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.*;

@Service
public class ExamServiceImpl implements ExamService {
    @Autowired(required = false)
    private ExamDao examDao;
    @Autowired
    private StringRedisTemplate redisTemplate;
    @Autowired
    private PaperServiceImpl paperService;

    @Autowired
    private ObjectMapper objectMapper;

    @Autowired(required = false)
    private AnswerRecordDao answerRecordDao;


    @Override
    public List<Exam> findAllExams(Map<String, Integer> pageMap, Exam exam) {
        // 设置页码和每页显示的记录数，该语句后面，紧跟着数据库查询相关的语句
        PageHelper.startPage(pageMap.get("page"), pageMap.get("limit"));
        return examDao.findAllExams(exam);
    }

    @Override
    public Exam selectExamById(Integer id) {
        return examDao.selectExamById(id);
    }

    @Override
    public void addExam(Exam exam) {
        examDao.addExam(exam);
    }

    @Override
    public void updateExam(Exam exam) {
        examDao.updateExam(exam);
    }

    @Override
    public void delete(int[] id) {
        examDao.delete(id);
    }

    @Override
    public void submitPaper(Map<String, String[]> parameterMap) {
        Exam examRecord = new Exam();
        examRecord.setState("已改");
        // 获取提交参数
        Integer paperId = Integer.valueOf(parameterMap.get("paperId")[0]);
        Integer userId = Integer.valueOf(parameterMap.get("userId")[0]);

        //当前考试的总得分
        int examScore = 0;

        List<AnswerRecord> answerRecordList = new ArrayList<>();

        // 从redis缓存中获取题目答案判卷
        Map<Object, Object> questionMap = redisTemplate.opsForHash().entries("paper" + paperId);
        // 获取提交到的所有题目的ID
        Set<String> questionIds = parameterMap.keySet();

        for (String id : questionIds) {

            AnswerRecord answerRecord = new AnswerRecord();

            // 获取缓存的题目数据
            String questionStr = (String) questionMap.get(id);
            if (questionStr == null) {
                continue;
            }
            Question question = null;
            try {
                question = objectMapper.readValue(questionStr, Question.class);
            } catch (IOException e) {
                e.printStackTrace();
            }

            // 判卷
            String[] userAnswer = parameterMap.get(id);
            String realAnswer = question.getAnswer();
            Integer questionTypeId = question.getTypeId();

            if (questionTypeId == 1 || questionTypeId == 3 || questionTypeId == 4) {
                // 单选，判断和填空题判断
                if (userAnswer != null && userAnswer[0].equals(realAnswer)) {
                    // 设置答题记录的结果
                    answerRecord.setResult("对");
                    examScore += question.getScore();
                    answerRecord.setScore(question.getScore());
                    answerRecord.setState("已改");
                } else {
                    answerRecord.setResult("错");
                    answerRecord.setScore(0);
                    answerRecord.setState("已改");
                }
            } else if (questionTypeId == 2) {
                // 多选题
                if (userAnswer != null && Arrays.toString(userAnswer).equals(realAnswer)) {
                    // 设置答题记录的结果
                    answerRecord.setResult("对");
                    examScore += question.getScore();
                    answerRecord.setScore(question.getScore());
                    answerRecord.setState("已改");
                } else {
                    answerRecord.setResult("错");
                    answerRecord.setScore(0);
                    answerRecord.setState("已改");
                }
            } else {
                // 简答题
                answerRecord.setState("未改");
                examRecord.setState("未改");
            }

            // 设置当前答题记录信息
            answerRecord.setUserId(userId.toString());
            answerRecord.setPaperId(paperId);
            answerRecord.setQuestionId(Integer.valueOf(id));
            answerRecord.setUserAnswer(Arrays.toString(userAnswer));
            answerRecord.setCourseId(question.getCourseId());
            answerRecord.setCourseName(question.getCourseName());
            answerRecord.setTypeId(question.getTypeId());
            // 将当前答题记录添加到答题记录列表中
            answerRecordList.add(answerRecord);

        }

        // 当前考试场次信息
        Paper paper = paperService.getPaperById(paperId);

        // 获取考试时间
        String beginTime = (String)redisTemplate.opsForHash().get("user" + userId, "beginTime");

        // 设置当前考试记录信息

        examRecord.setExamName(paper.getPaperName());
        examRecord.setPaperId(paperId);
        examRecord.setUserId(userId);
        examRecord.setBeginTime(DateUtil.strToDate(beginTime));
        examRecord.setBeginTimeStr(beginTime);
        examRecord.setEndTimeStr(DateUtil.formateData(new Date()));
        examRecord.setScore(examScore);

        // 持久化
        examDao.addExam(examRecord);

        // 设置考试记录的考试场次
        for (AnswerRecord a : answerRecordList) {
            a.setExamId(examRecord.getExamId());
        }
        answerRecordDao.batchInsertAnswerRecord(answerRecordList);
    }

}