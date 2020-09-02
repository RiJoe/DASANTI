package com.dasanti.riskmessageinput.controller;

import cn.hutool.http.HttpUtil;
import com.alibaba.fastjson.JSONObject;
import com.dasanti.riskmessageinput.entity.*;
import com.dasanti.riskmessageinput.entity.page.PageResult;
import com.dasanti.riskmessageinput.service.EnterpriseDetailsService;
import com.dasanti.riskmessageinput.util.ResultEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@RestController
public class EnterpriseDetailsController {
    @Resource
    private EnterpriseDetailsService enterpriseDetailsService;
    // 获取word文档地址
    @RequestMapping("/get/word/url")
    public ResultEntity<String> getWordUrl(@RequestParam Integer enterpriseId){
        try{
            String wordUrl = enterpriseDetailsService.getWordUrlById(enterpriseId);
            return ResultEntity.successWithData(wordUrl);
        }catch (Exception e){
            e.printStackTrace();
            return ResultEntity.failed(e.getMessage());
        }
    }
    // 获取相应的table风险判定信息等
    @RequestMapping("/get/table/risk/details/by/id")
    public ResultEntity<TableRiskDetailsVO> getTableRiskDetailsByTableId(@RequestParam Integer tableId){
        try{
            TableRiskDetailsVO tableRiskDetailsVO = enterpriseDetailsService.getTableRiskDetailsByTableId(tableId);
            return ResultEntity.successWithData(tableRiskDetailsVO);
        }catch(Exception e){
            e.printStackTrace();
            return ResultEntity.failed(e.getMessage());
        }
    }
    // 获取table 进行前端展示
    @RequestMapping("/get/table/details/by/id")
    public ResultEntity<List<TableDetailsVO>> getTableDetailsById(@RequestParam Integer tableId,@RequestParam Integer enterpriseId) {
        try {
            List<TableDetailsVO> tableDetailsVOList = enterpriseDetailsService.getTableDetailsById(tableId,enterpriseId);
            return ResultEntity.successWithData(tableDetailsVOList);
        }catch (Exception e){
            e.printStackTrace();
            return ResultEntity.failed(e.getMessage());
        }

    }
    // 相关等级分页查询
    @RequestMapping("/get/all/risk/enterprise")
    public ResultEntity getAllRiskEnterpriseForPage(@RequestParam Integer pageNum, @RequestParam Integer pageSize, @RequestParam String riskLevel){
        try{
            PageResult pageResult = enterpriseDetailsService.getAllRiskEnterpriseForPage(pageNum,pageSize,riskLevel);
            return ResultEntity.successWithData(pageResult);
        }catch(Exception e){
            e.printStackTrace();
            return ResultEntity.failed(e.getMessage());
        }

    }

    // 获取企业各风险等级数量
    @RequestMapping("/get/enterprise/risk/count")
    public ResultEntity<List<EnterpriseRiskCountVO>> getEnterpriseRiskCount(){
        List<EnterpriseRiskCountVO> enterpriseRiskCountVOList = enterpriseDetailsService.getEnterpriseRiskCount();
        return ResultEntity.successWithData(enterpriseRiskCountVOList);
    }
    // 获取所有企业进行地理分布
    @RequestMapping("/get/all/enterprise")
    public ResultEntity<List<EnterpriseDetailsVO>> getAllEnterprise(){
        try{
            List<EnterpriseDetailsVO> enterpriseDetailsVOList = enterpriseDetailsService.getAllEnterprise();
            try{
                // 通过企业地址获取经纬度
                for(int i=0;i<enterpriseDetailsVOList.size();i++){
                    String address = enterpriseDetailsVOList.get(i).getCompanyName();
                    HashMap<String,Object> paramMap = new HashMap<>();
                    paramMap.put("address",address);
                    paramMap.put("output","json");
                    paramMap.put("ak","wFQlNo1lSDLEx8RV6vehHiwLKlx23GNg");
                    String result = HttpUtil.get("http://api.map.baidu.com/geocoding/v3",paramMap);
                    JSONObject jsonObject = JSONObject.parseObject(result);
                    if(jsonObject.getInteger("status") == 0){
                        enterpriseDetailsVOList.get(i).setLng(jsonObject.getJSONObject("result").getJSONObject("location").getString("lng"));
                        enterpriseDetailsVOList.get(i).setLat(jsonObject.getJSONObject("result").getJSONObject("location").getString("lat"));
                    }else{
                        enterpriseDetailsVOList.get(i).setLng(null);
                        enterpriseDetailsVOList.get(i).setLat(null);
                    }
                }
            }catch (Exception e){
                e.printStackTrace();
            }
            return ResultEntity.successWithData(enterpriseDetailsVOList);
        }catch (Exception e){
            e.printStackTrace();
            return ResultEntity.failed(e.getMessage());
        }
    }
}
