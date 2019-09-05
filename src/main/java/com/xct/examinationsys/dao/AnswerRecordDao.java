package com.xct.examinationsys.dao;

import com.xct.examinationsys.entity.AnswerRecord;

import java.util.List;

public interface AnswerRecordDao {
    List<AnswerRecord> findAllAnswerRecords(AnswerRecord answerRecord);

    /**
     * 查询所有的课程
     * @return 返回的是 AnswerRecord类对象的集合
     */
    List<AnswerRecord> findAllAnswerRecordName();

    AnswerRecord selectAnswerRecordByName(String answerRecordName);

    AnswerRecord selectAnswerRecordById(int answerRecordId);

    void addAnswerRecord(AnswerRecord answerRecord);

    void batchInsertAnswerRecord(List<AnswerRecord> list);

    void updateAnswerRecord(AnswerRecord answerRecord);

    void delete(int[] id);

    int getUncorrectedNumByExamId(int examId);
}
