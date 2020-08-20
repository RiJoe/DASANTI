package com.dasanti.riskmessageinput.controller;

import cn.hutool.http.HttpUtil;
import com.alibaba.fastjson.JSONObject;
import com.dasanti.riskmessageinput.entity.EnterpriseDetailsVO;
import com.dasanti.riskmessageinput.entity.EnterpriseRiskCountVO;
import com.dasanti.riskmessageinput.entity.page.PageResult;
import com.dasanti.riskmessageinput.service.EnterpriseDetailsService;
import com.dasanti.riskmessageinput.util.ResultEntity;
import com.github.pagehelper.PageInfo;
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
