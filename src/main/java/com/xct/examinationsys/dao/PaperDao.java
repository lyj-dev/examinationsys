package com.xct.examinationsys.dao;


import com.xct.examinationsys.entity.Paper;

import java.util.List;

public interface PaperDao {
    List<Paper> findAllPapers(Paper paper);

    Paper selectPaperById(Integer valueOf);

    void addPaper(Paper paper);

    void updatePaper(Paper paper);

    void delete(int[] id);

    void deleteOne(Integer paperId);

    Paper findPaperById(Integer paperId);

    Paper getPaperById(Integer paperId);
}
