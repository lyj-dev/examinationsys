package com.xct.examinationsys.entity;

import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class Paper {
    private String paperId;
    private String paperName;

    private String courseId;
    private String courseName;

    private String questionIds;
    private List<Question> questions;

    private Integer allowTime;

    private Integer score;
    private String paperState;

    private String address;
    private String remark;


}
