package com.xct.examinationsys.service.impl;

import com.github.pagehelper.PageHelper;
import com.xct.examinationsys.common.JsonResult;
import com.xct.examinationsys.dao.AnswerRecordDao;
import com.xct.examinationsys.entity.AnswerRecord;
import com.xct.examinationsys.entity.Exam;
import com.xct.examinationsys.service.AnswerRecordService;
import com.xct.examinationsys.service.ExamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class AnswerRecordServiceImpl implements AnswerRecordService {
    @Autowired(required = false)
    private AnswerRecordDao answerRecordDao;
    @Autowired
    private ExamService examService;

    @Override
    public List<AnswerRecord> findAllAnswerRecords(Map<String, Integer> pageMap, AnswerRecord answerRecord) {
        // 设置页码和每页显示的记录数，该语句后面，紧跟着数据库查询相关的语句
        PageHelper.startPage(pageMap.get("page"), pageMap.get("limit"));
        return answerRecordDao.findAllAnswerRecords(answerRecord);
    }

    @Override
    public AnswerRecord selectAnswerRecord(Integer id) {
        return answerRecordDao.selectAnswerRecordById(id);
    }

    @Override
    public void addAnswerRecord(AnswerRecord answerRecord) {
        answerRecordDao.addAnswerRecord(answerRecord);
    }

    @Override
    public void updateAnswerRecord(AnswerRecord answerRecord) {

    }

    @Override
    public void delete(int[] id) {
        answerRecordDao.delete(id);
    }

    @Override
    public JsonResult<Object> correct(AnswerRecord answerRecord) {
        // 查询原来的答题记录
        AnswerRecord oldAnswerRecord = answerRecordDao.selectAnswerRecordById(answerRecord.getRecordId());
        // 更新答题记录的得分和批改状态
        oldAnswerRecord.setScore(answerRecord.getScore());
        oldAnswerRecord.setState("已改");

        // 更新答题记录批改状态和得分
        answerRecordDao.updateAnswerRecord(oldAnswerRecord);

        // 查询原来的考试记录
        Exam examRecord = examService.selectExamById(oldAnswerRecord.getExamId());
        //加上本次批改的题目分数
        examRecord.setScore(examRecord.getScore() + answerRecord.getScore());

        // 获取本次考试还未改的题目的数目
        int uncorrectedNum = answerRecordDao.getUncorrectedNumByExamId(examRecord.getExamId());

        //判断本次考试是否还有题目没改
        if (uncorrectedNum > 0) {
            // 还有题目没改，则本次考试的状态还是“未改”
            examRecord.setState("未改");
        } else if (uncorrectedNum == 0) {
            examRecord.setState("已改");
        }

        // 更新考试记录
        examService.updateExam(examRecord);
        return new JsonResult<>(1, "批改成功！");
    }

    @Override
    public int getUncorrectedNumByExamId(int examId) {
        return answerRecordDao.getUncorrectedNumByExamId(examId);
    }


}
