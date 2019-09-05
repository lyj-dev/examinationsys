package com.xct.examinationsys.entity;

import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class Paper {
    private String paperId;
    private String paperName;

    private Integer courseId;
    private String courseName;

    private String questionIds;
    private List<Question> questions;

    private Integer allowTime;

    private Integer score;
    private String paperState;

    // 选择题数目
    private Integer singleChoiceNum;
    //多选题数目
    private Integer multiChoicNum;
    //天空题数目
    private Integer complNum;
    //判断题数目
    private Integer ToFNum;
    // 简答题数目
    private Integer shortAnswerNum;

    private String remark;


}
