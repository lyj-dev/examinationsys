package com.xct.examinationsys.service.impl;

import com.github.pagehelper.PageHelper;
import com.xct.examinationsys.dao.AnswerRecordDao;
import com.xct.examinationsys.entity.Resource;
import com.xct.examinationsys.entity.AnswerRecord;
import com.xct.examinationsys.service.AnswerRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class AnswerRecordServiceImpl implements AnswerRecordService {
    @Autowired(required = false)
    private AnswerRecordDao answerRecordDao;

    @Override
    public List<AnswerRecord> findAllAnswerRecords(Map<String, Integer> pageMap) {
        // 设置页码和每页显示的记录数，该语句后面，紧跟着数据库查询相关的语句
        PageHelper.startPage(pageMap.get("page"), pageMap.get("limit"));
        return answerRecordDao.findAllAnswerRecords();
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



}
