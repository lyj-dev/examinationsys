package com.xct.examinationsys.service;

import com.xct.examinationsys.entity.Paper;
import com.xct.examinationsys.entity.Question;

import java.util.List;
import java.util.Map;

public interface PaperService {
    List<Paper> findAllPapers(Map<String, Integer> pageMap, Paper paper);

    Paper selectPaper(Integer id);

    void addPaper(Paper paper);

    void updatePaper(Paper paper);

    void delete(int[] id);

    List<Question> getQuestions(Integer paperId, String userId);

    Paper getPaperById(Integer paperId);

    void deleteOne(Integer paperId);
}
