package com.xct.examinationsys.common;

import lombok.Data;

@Data
public class JsonResult<T> {
    // 返回结果的状态码，1 为正常， 0 为异常
    private Integer code;
    private T info;

    public JsonResult() {}

    public JsonResult(Integer code, T info) {
        this.code = code;
        this.info = info;
    }
}
