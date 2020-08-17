package com.dasanti.riskmessageinput.controller;

import com.dasanti.riskmessageinput.entity.*;
import com.dasanti.riskmessageinput.service.EnterpriseInformService;
import com.dasanti.riskmessageinput.util.ResultEntity;
import com.dasanti.riskmessageinput.util.RiskLevelDetermine;
import com.dasanti.riskmessageinput.util.UploadUtil;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@RestController
public class EnterpriseInformController {
    @Resource
    private EnterpriseInformService enterpriseInformService;
    // 保存企业信息
    @RequestMapping("/save/enterprise")
    public ResultEntity<Integer> saveEnterpriseInform(@RequestBody EnterpriseInform enterpriseInform){
        try {
            Integer enterpriseId = enterpriseInformService.saveEnterpriseInform(enterpriseInform);
            // 保存风险等级信息
            try {
                RiskDeterminationTable riskDeterminationTable = RiskLevelDetermine.riskLevelDetermine(
                        enterpriseId,
                        enterpriseInform.getCompanyType(),
                        enterpriseInform.getRiskValue());
                if (riskDeterminationTable != null){
                    enterpriseInformService.saveRiskDeterminationTableForEnterprise(riskDeterminationTable);
                }
            } catch (Exception e){
                e.printStackTrace();
            }
            return ResultEntity.successWithData(enterpriseId);
        }catch(Exception e){
            e.printStackTrace();
            return ResultEntity.failed(e.getMessage());
        }

    }
    // 保存选项图片
    @RequestMapping("/save/photo")
    public ResultEntity<String> savePhoto(@RequestParam MultipartFile file){
        String src = "";

        if (file != null && file.getName() != null && !file.isEmpty()){
            try{
                ResultEntity<String> filePath = UploadUtil.fileUpload(file);
                if(filePath.getResult()=="SUCCESS"){
                    src = "http://127.0.0.1:7000"+"/uploadFile" + filePath.getData();
                }
                System.out.println(src);
            }catch (Exception e){
                e.printStackTrace();
            }

        }
        return ResultEntity.successWithData(src);
    }
    // 保存影响因素详细信息
    @RequestMapping("/save/influence/factor/details")
    public ResultEntity<String> saveInfluenceFactorDetails(@RequestBody Map<String,List<InfluenceFactorDetails>> influenceFactorDetailsMap) {
        try {
            System.out.println(influenceFactorDetailsMap);
            if (influenceFactorDetailsMap.containsKey("influenceFactorDetailsList")){
                List<InfluenceFactorDetails> influenceFactorDetailsList = influenceFactorDetailsMap.get("influenceFactorDetailsList");
                for (int i = 0; i < influenceFactorDetailsList.size(); i++) {
                    enterpriseInformService.saveInfluenceFactorDetails(influenceFactorDetailsList.get(i));
                }
                return ResultEntity.successWithoutData();
            }else{
                return ResultEntity.failed("保存失败");
            }

        } catch (Exception e) {
            e.printStackTrace();
            return ResultEntity.failed(e.getMessage());
        }
        //System.out.println(influenceFactorDetailsList);
    }
    // 保存word文档
    @RequestMapping("/save/word/url")
    public ResultEntity<String> saveWordUrl(@RequestBody WordUrl wordUrl){
        System.out.println(wordUrl);
        try{
            enterpriseInformService.saveWordUrl(wordUrl);
            return ResultEntity.successWithoutData();
        }catch(Exception e){
            e.printStackTrace();
            return ResultEntity.failed(e.getMessage());
        }
    }
    // 保存其他模板类型信息
    @RequestMapping("/save/other/influence/details")
    public ResultEntity<String> saveOtherInfluenceDetails(@RequestBody OtherInfluenceDetails otherInfluenceDetails){
        try{
            enterpriseInformService.saveOtherInfluenceDetails(otherInfluenceDetails);
            return ResultEntity.successWithoutData();
        }catch(Exception e){
            e.printStackTrace();
            return ResultEntity.failed(e.getMessage());
        }
    }
}
