package com.dasanti.riskmessageinput.controller;

import com.dasanti.riskmessageinput.entity.EnterpriseInform;
import com.dasanti.riskmessageinput.service.EnterpriseInformService;
import com.dasanti.riskmessageinput.util.ResultEntity;
import com.dasanti.riskmessageinput.util.UploadUtil;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;

@RestController
public class EnterpriseInformController {
    @Resource
    private EnterpriseInformService enterpriseInformService;
    // 保存企业信息
    @RequestMapping("/save/enterprise")
    public ResultEntity<Integer> saveEnterpriseInform(@RequestBody EnterpriseInform enterpriseInform){
        try {
            Integer enterpriseId = enterpriseInformService.saveEnterpriseInform(enterpriseInform);
            System.out.println(enterpriseId);
            return ResultEntity.successWithData(enterpriseId);
        }catch(Exception e){
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
}
