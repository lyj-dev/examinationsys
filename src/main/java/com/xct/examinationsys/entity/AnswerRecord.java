package com.xct.examinationsys.entity;

import lombok.Data;

@Data
public class AnswerRecord {
    private Integer recordId;
    private String userId;
    private String userName;
    private Integer courseId;
    private String courseName;
    private Integer paperId;
    private String paperName;
    private String userAnswer;
    private String questionName;
    private Integer questionId;
    private Integer typeId;
    private String typeName;
    private String result;
    private String state;
    private Integer score;
    private Integer examId;
}
