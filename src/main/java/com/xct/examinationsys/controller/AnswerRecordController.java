package com.xct.examinationsys.controller;


import com.github.pagehelper.Page;
import com.xct.examinationsys.common.JsonResult;
import com.xct.examinationsys.entity.Resource;
import com.xct.examinationsys.entity.AnswerRecord;
import com.xct.examinationsys.service.ResourceService;
import com.xct.examinationsys.service.AnswerRecordService;
import com.xct.examinationsys.utils.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/answerRecord")
public class AnswerRecordController {

    @Autowired
    private AnswerRecordService answerRecordService;
    @Autowired
    private ResourceService resourceService;

    @RequestMapping("/list")
    @ResponseBody
    public Map<String, Object> listAnswerRecords(Integer page, Integer limit, AnswerRecord answerRecord) {
        Map<String, Integer> pageMap = new HashMap<>();
        pageMap.put("page", page);
        pageMap.put("limit", limit);

        List<AnswerRecord> list = answerRecordService.findAllAnswerRecords(pageMap, answerRecord);

        long total = ((Page) list).getTotal();

        return PageUtil.pubPage(total, list);
    }

    @RequestMapping("/query")
    public JsonResult<Object> queryAnswerRecord(Integer answerRecordId) {
        if (answerRecordId == null) {
            return new JsonResult<Object>(0, "ID为空");
        }

        return new JsonResult<>(1, answerRecordService.selectAnswerRecord(answerRecordId));
    }

    @RequestMapping("/correct")
    public JsonResult<Object> correct(AnswerRecord answerRecord) {
        return answerRecordService.correct(answerRecord);
    }


    @RequestMapping("/delete")
    public JsonResult<String> delete(int[] id) {
        answerRecordService.delete(id);
        return new JsonResult<>(1, "删除成功");
    }
}
