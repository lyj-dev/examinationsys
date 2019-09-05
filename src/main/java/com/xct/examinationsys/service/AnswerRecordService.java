package com.xct.examinationsys.service;

import com.xct.examinationsys.common.JsonResult;
import com.xct.examinationsys.entity.AnswerRecord;

import java.util.List;
import java.util.Map;

public interface AnswerRecordService {
    List<AnswerRecord> findAllAnswerRecords(Map<String, Integer> pageMap, AnswerRecord answerRecord);

    AnswerRecord selectAnswerRecord(Integer id);

    void addAnswerRecord(AnswerRecord answerRecord);

    void updateAnswerRecord(AnswerRecord answerRecord);

    void delete(int[] id);

    JsonResult<Object> correct(AnswerRecord answerRecord);

    int getUncorrectedNumByExamId(int examId);
}
