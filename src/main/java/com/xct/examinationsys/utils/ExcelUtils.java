package com.xct.examinationsys.utils;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ExcelUtils {
    public static List<Map<String, Object>> readExcel(String fileName, InputStream inputStream) throws Exception {

        List<Map<String, Object>> list = new ArrayList<>();

        boolean ret = isXls(fileName);

        Workbook workbook = null;
        if(ret){
            workbook = new HSSFWorkbook(inputStream);
        }else{
            workbook = new XSSFWorkbook(inputStream);
        }
        Sheet sheet = workbook.getSheetAt(0);

        // 标题
        Row row = sheet.getRow(0);
        // 获取row里最后一个单元格编号
        short lastCellNum = row.getLastCellNum();
        // 获取最后一行的行号
        int lastRowNum = sheet.getLastRowNum();
        for(int i = 1; i <= lastRowNum; i++){

            Map<String, Object> map = new HashMap<>();
            Row row1 = sheet.getRow(i);

            for(int j = 0; j < lastCellNum; j++){
                Cell cell = row1.getCell(j);
                if(cell == null){
                    continue;
                }
                cell.setCellType(CellType.STRING);
                //System.out.println(cell.getStringCellValue());
                // 对应标题行key值
                map.put(row.getCell(j).getStringCellValue(), cell.getStringCellValue());
            }
            list.add(map);
        }

        return list;

    }

    // 判断excel文件的后缀，如果时xls后缀，返回true,xlsx 返回false
    // adfb.xls  abc.XLS
    // (?i) 表示不区分大小写
    private static boolean isXls(String filename){
        return filename.matches("^.+\\.(?i)(xls)$");
    }
}
