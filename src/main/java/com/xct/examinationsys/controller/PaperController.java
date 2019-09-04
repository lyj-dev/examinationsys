package com.xct.examinationsys.controller;


import com.github.pagehelper.Page;
import com.xct.examinationsys.common.JsonResult;
import com.xct.examinationsys.entity.Paper;
import com.xct.examinationsys.entity.Question;
import com.xct.examinationsys.service.PaperService;
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
@RequestMapping("/paper")
public class PaperController {

    @Autowired
    private PaperService paperService;

    @RequestMapping("/list")
    @ResponseBody
    public Map<String, Object> listPapers(Integer page, Integer limit, Paper paper) {
        Map<String, Integer> pageMap = new HashMap<>();
        pageMap.put("page", page);
        pageMap.put("limit", limit);

        List<Paper> list = paperService.findAllPapers(pageMap, paper);

        long total = ((Page) list).getTotal();

        return PageUtil.pubPage(total, list);
    }

    @RequestMapping("/getQuestions")
    @ResponseBody
    public List<Question> getQuestions(Integer paperId, String userId) {
        return paperService.getQuestions(paperId, userId);
    }

    @RequestMapping("/getPaperById")
    @ResponseBody
    public JsonResult<Paper> getPaperById(Integer paperId) {
        Paper paper = paperService.getPaperById(paperId);
        return new JsonResult<>(1, paper);
    }

    @RequestMapping("/query")
    public JsonResult<Object> queryPaper(Integer paperId) {
        if (paperId == null) {
            return new JsonResult<>(0, "ID为空");
        }

        return new JsonResult<>(1, paperService.selectPaper(paperId));
    }

    @RequestMapping("/addOrUpdate")
    public JsonResult<String> addOrUpdatePaper(Paper paper) {
        if (paper.getPaperId() == null || paper.getPaperId().equals("")) {
            paperService.addPaper(paper);
        } else {
            paperService.updatePaper(paper);
        }
        return new JsonResult<>(1, "保存成功");
    }

    @RequestMapping("/delete")
    public JsonResult<String> delete(int[] id) {
        paperService.delete(id);
        return new JsonResult<>(1, "删除成功");
    }

    @RequestMapping("/deleteOne")
    public JsonResult<String> deleteOne(Integer paperId) {
        paperService.deleteOne(paperId);
        return new JsonResult<>(1, "删除成功");
    }
}
