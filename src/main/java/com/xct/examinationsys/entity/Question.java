package com.xct.examinationsys.entity;

import lombok.Data;

@Data
public class Question {
    private Integer questionId;
    private String questionName;
    private String optionA;
    private String optionB;
    private String optionC;
    private String optionD;
    private String answer;
    private String answerDetail;
    private Integer courseId;
    private String courseName;
    private Integer typeId;
    private String typeName;
    private Integer difficulty;
    private String remark;
    private Integer score;
}
