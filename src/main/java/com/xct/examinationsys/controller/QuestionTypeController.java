package com.xct.examinationsys.controller;

import com.github.pagehelper.Page;
import com.xct.examinationsys.common.JsonResult;
import com.xct.examinationsys.entity.QuestionType;
import com.xct.examinationsys.service.QuestionTypeService;
import com.xct.examinationsys.utils.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/questionType")
public class QuestionTypeController {

    @Autowired
    private QuestionTypeService questionTypeService;

    @RequestMapping("/list")
    @ResponseBody
    public Map<String, Object> listQuestionTypes(Integer page, Integer limit, QuestionType questionType) {
        Map<String, Integer> pageMap = new HashMap<>();
        pageMap.put("page", page);
        pageMap.put("limit", limit);

        List<QuestionType> list = questionTypeService.findAllQuestionTypes(pageMap, questionType);

        long total = ((Page) list).getTotal();

        return PageUtil.pubPage(total, list);
    }


    @RequestMapping("/typeName")
    public Map<String, Object> findAllCourseName(){
        Map<String, Object> map = new HashMap<>();
        List<QuestionType> type = questionTypeService.findAllQuestionType();

        map.put("type", type);
        return map;

    }

    @RequestMapping("/query")
    public JsonResult<Object> queryQuestionType(Integer questionTypeId) {
        if (questionTypeId == null) {
            return new JsonResult<>(0, "ID为空");
        }

        return new JsonResult<>(1, questionTypeService.selectQuestionType(questionTypeId));
    }

    @RequestMapping(value = "/addOrUpdate")
    public JsonResult<String> addOrUpdateQuestionType(QuestionType questionType) {
        if (questionType.getTypeId() == null) {
            questionTypeService.addQuestionType(questionType);
        } else {
            questionTypeService.updateQuestionType(questionType);
        }
        return new JsonResult<>(1, "保存成功");
    }

    @RequestMapping("/delete")
    public JsonResult<String> delete(int[] id) {
        questionTypeService.delete(id);
        return new JsonResult<>(1, "删除成功");
    }

}
