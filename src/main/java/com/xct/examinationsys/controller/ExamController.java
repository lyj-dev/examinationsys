package com.xct.examinationsys.controller;


import com.github.pagehelper.Page;
import com.xct.examinationsys.common.JsonResult;
import com.xct.examinationsys.entity.Exam;
import com.xct.examinationsys.service.ExamService;
import com.xct.examinationsys.utils.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/exam")
public class ExamController {

    @Autowired
    private ExamService examService;

    @RequestMapping("/list")
    @ResponseBody
    public Map<String, Object> listExams(Integer page, Integer limit, Exam exam) {
        Map<String, Integer> pageMap = new HashMap<>();
        pageMap.put("page", page);
        pageMap.put("limit", limit);

        List<Exam> list = examService.findAllExams(pageMap, exam);

        long total = ((Page) list).getTotal();

        return PageUtil.pubPage(total, list);
    }

    @RequestMapping("/query")
    public JsonResult<Object> queryExam(Integer examId) {
        if (examId == null) {
            return new JsonResult<Object>(0, "ID为空");
        }

        return new JsonResult<>(1, examService.selectExam(examId));
    }

    @RequestMapping(value = "/addOrUpdate")
    public JsonResult<String> addOrUpdateExam(Exam exam) {
        if (exam.getExamId() == null || exam.getExamId().equals("")) {
            examService.addExam(exam);
        } else {
            examService.updateExam(exam);
        }
        return new JsonResult<>(1, "保存成功");
    }

    @RequestMapping("/delete")
    public JsonResult<String> delete(int[] id) {
        examService.delete(id);
        return new JsonResult<>(1, "删除成功");
    }

    @RequestMapping("/submitPaper")
    public JsonResult<String> submitPaper(HttpServletRequest request) {
        Map<String, String[]> parameterMap = request.getParameterMap();
        examService.submitPaper(parameterMap);
        return new JsonResult<>(1, "提交成功！");
    }

}
