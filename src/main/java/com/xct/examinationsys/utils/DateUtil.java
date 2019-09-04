package com.xct.examinationsys.utils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
    public static String formateData(Date date) {
        if (date == null) {
            return "";
        }
        DateFormat sdf = new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
        return sdf.format(date);
    }

    public static Date strToDate(String str) {
        if (str == null) {
            throw new RuntimeException("传入时间字符串为null");
        }
        DateFormat sdf = new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
        Date date = null;
        try {
            date = sdf.parse(str);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }
}
