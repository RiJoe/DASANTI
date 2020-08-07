package com.dasanti.riskmessageinput.controller;

import com.dasanti.riskmessageinput.entity.InsertTable;
import com.dasanti.riskmessageinput.entity.InsertTableDetails;
import com.dasanti.riskmessageinput.service.InsertTableService;
import com.dasanti.riskmessageinput.util.ResultEntity;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
public class InsertTableController {
    @Resource
    private InsertTableService insertTableService;
    // 保存模板名称信息
    @RequestMapping("/insert/table")
    public ResultEntity<InsertTable> insertTableReturnId(@RequestBody InsertTable insertTable){
        try{
            // 获取模板表的自增id
            Integer tableId = insertTableService.insertTableNameService(insertTable);
            insertTable.setId(tableId);
            System.out.println(insertTable);
            // 返回模板表的id和名字
            return ResultEntity.successWithData(insertTable);
        }catch(Exception e){
            return ResultEntity.failed(e.getMessage());
        }
    }
    // 保存模板详细信息
    @RequestMapping("/insert/table/details")
    public ResultEntity<InsertTableDetails> insertTableDetail(@RequestBody InsertTableDetails insertTableDetails){
        try{
            insertTableService.insertTableDetails(insertTableDetails);
            // 返回已保存的信息
            return ResultEntity.successWithData(insertTableDetails);
        }catch(Exception e){
            return ResultEntity.failed(e.getMessage());
        }

    }
    @RequestMapping("/get/table/by/id")
    public ResultEntity<List<InsertTableDetails>> getInsertTableDetailsById(@RequestParam Integer tableId){
        List<InsertTableDetails> insertTableDetailsList = insertTableService.getInsertTableDetailsById(tableId);
        return ResultEntity.successWithData(insertTableDetailsList);
    }

}
