package com.xct.examinationsys.controller;


import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.Page;
import com.xct.examinationsys.common.JsonResult;
import com.xct.examinationsys.entity.Question;
import com.xct.examinationsys.service.QuestionService;
import com.xct.examinationsys.utils.ExcelUtils;
import com.xct.examinationsys.utils.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/question")
public class QuestionController {

    @Autowired
    private QuestionService questionService;

    @RequestMapping("/list")
    @ResponseBody
    public Map<String, Object> listQuestions(Integer page, Integer limit, Question question) {
        Map<String, Integer> pageMap = new HashMap<>();
        pageMap.put("page", page);
        pageMap.put("limit", limit);

        List<Question> list = questionService.findAllQuestions(pageMap, question);

        long total = ((Page) list).getTotal();

        return PageUtil.pubPage(total, list);
    }

    @RequestMapping("/import")
    @ResponseBody
    public JsonResult<String> importExcel(@RequestParam("file") MultipartFile upfile){

        // 获取上传文件的输入流对象
        try {
            InputStream inputStream = upfile.getInputStream();

            String filename = upfile.getOriginalFilename();
            System.out.println(filename);

            List<Map<String, Object>> list = ExcelUtils.readExcel(filename, inputStream);

            ObjectMapper objectMapper = new ObjectMapper();
            String jsonStr = objectMapper.writeValueAsString(list);
            // 将json格式的字符串转为指定类型的对象
            List<Question> questionList = objectMapper.readValue(jsonStr, new TypeReference<List<Question>>() {
            });
            questionService.batchSave(questionList);
//            System.out.println(ulist);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return new JsonResult<>(1, "导入成功！");
    }

    @RequestMapping("/query")
    public JsonResult<Object> queryQuestion(Integer questionId) {
        if (questionId == null) {
            return new JsonResult<Object>(0, "ID为空");
        }

        return new JsonResult<>(1, questionService.selectQuestion(questionId));
    }

    @RequestMapping(value = "/addOrUpdate")
    public JsonResult<String> addOrUpdateQuestion(Question question) {
        if (question.getQuestionId() == null || question.getQuestionId().equals("")) {
            questionService.addQuestion(question);
        } else {
            questionService.updateQuestion(question);
        }
        return new JsonResult<>(1, "保存成功");
    }

    @RequestMapping("/delete")
    public JsonResult<String> delete(int[] id) {
        questionService.delete(id);
        return new JsonResult<>(1, "删除成功");
    }

    @RequestMapping("/deleteOne")
    public JsonResult<String> delete(Integer questionId) {
        questionService.deleteOne(questionId);
        return new JsonResult<>(1, "删除成功");
    }


}
