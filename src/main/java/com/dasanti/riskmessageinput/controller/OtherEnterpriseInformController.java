package com.dasanti.riskmessageinput.controller;

import com.dasanti.riskmessageinput.entity.OtherEnterpriseCountVO;
import com.dasanti.riskmessageinput.entity.OtherEnterpriseInform;
import com.dasanti.riskmessageinput.entity.OtherInfluenceDetails;
import com.dasanti.riskmessageinput.entity.OtherWordUrl;
import com.dasanti.riskmessageinput.entity.page.PageResult;
import com.dasanti.riskmessageinput.service.OtherEnterpriseInformService;
import com.dasanti.riskmessageinput.util.ResultEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
public class OtherEnterpriseInformController {
    @Resource
    private OtherEnterpriseInformService otherEnterpriseInformService;
    // 保存文档路径
    @RequestMapping("/save/other/word/url")
    public ResultEntity<String> saveOtherWordUrl(@RequestBody OtherWordUrl otherWordUrl){
        try{
            otherEnterpriseInformService.saveOtherWordUrl(otherWordUrl);
            return ResultEntity.successWithoutData();
        }catch (Exception e){
            e.printStackTrace();
            return ResultEntity.failed(e.getMessage());
        }
    }
    // 保存其他企业信息
    @RequestMapping("/save/other/enterprise")
    public ResultEntity<Integer> saveOtherEnterpriseInform(@RequestBody OtherEnterpriseInform otherEnterpriseInform) {
        try{
            Integer otherEnterpriseId = otherEnterpriseInformService.saveOtherEnterpriseInform(otherEnterpriseInform);
            return ResultEntity.successWithData(otherEnterpriseId);
        }catch(Exception e){
            e.printStackTrace();
            return ResultEntity.failed(e.getMessage());
        }
    }
    // 获取其他企业中风险等级情况
    @RequestMapping("/get/other/enterprise/count/by/id")
    public ResultEntity<List<OtherEnterpriseCountVO>> getOtherEnterpriseCountVO(@RequestParam Integer otherEnterpriseId) {
        try{
            List<OtherEnterpriseCountVO> otherEnterpriseCountVOList = otherEnterpriseInformService.getOtherEnterpriseCountVOById(otherEnterpriseId);
            return ResultEntity.successWithData(otherEnterpriseCountVOList);
        }catch(Exception e) {
            return ResultEntity.failed(e.getMessage());
        }
    }
    // 获取其他企业的word文档
    @RequestMapping("/get/other/word/url")
    public ResultEntity<String> getOtherWordUrl(@RequestParam Integer otherEnterpriseId) {
        try{
            String otherWordUrl = otherEnterpriseInformService.getOtherWordUrl(otherEnterpriseId);
            return ResultEntity.successWithData(otherWordUrl);
        }catch(Exception e){
            e.printStackTrace();
            return ResultEntity.failed(e.getMessage());
        }
    }
    // 获取其他企业的总数量
    @RequestMapping("/get/other/enterprise/count")
    public ResultEntity<Integer> getOtherEnterpriseCount() {
        try{
            Integer otherCount = otherEnterpriseInformService.getOtherEnterpriseCount();
            return ResultEntity.successWithData(otherCount);
        }catch(Exception e){
            e.printStackTrace();
            return ResultEntity.failed(e.getMessage());
        }
    }
    // 获取所有其他企业信息
    @RequestMapping("/get/all/other/enterprise")
    public ResultEntity getAllOtherEnterprise(@RequestParam Integer pageNum,@RequestParam Integer pageSize){
        try{
            PageResult pageResult = otherEnterpriseInformService.getAllOtherEnterprise(pageNum,pageSize);
            return ResultEntity.successWithData(pageResult);
        }catch (Exception e){
            e.printStackTrace();
            return ResultEntity.failed(e.getMessage());
        }
    }
    // 获取其他企业详细信息
    @RequestMapping("/get/other/enterprise/details/by/id")
    public ResultEntity<List<OtherInfluenceDetails>> getOtherEnterpriseDetails(@RequestParam Integer otherEnterpriseId){
        try{
            List<OtherInfluenceDetails> otherInfluenceDetailsList = otherEnterpriseInformService.getOtherEnterpriseDetailsById(otherEnterpriseId);
            return ResultEntity.successWithData(otherInfluenceDetailsList);
        }catch(Exception e){
            e.printStackTrace();
            return ResultEntity.failed(e.getMessage());
        }
    }
}
