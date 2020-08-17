package com.dasanti.riskmessageinput.controller;

import com.dasanti.riskmessageinput.entity.EnterpriseDetailsVO;
import com.dasanti.riskmessageinput.service.EnterpriseDetailsService;
import com.dasanti.riskmessageinput.util.ResultEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
public class EnterpriseDetailsController {
    @Resource
    private EnterpriseDetailsService enterpriseDetailsService;
    @RequestMapping("/get/all/enterprise")
    public ResultEntity<List<EnterpriseDetailsVO>> getAllEnterprise(){
        try{
            List<EnterpriseDetailsVO> enterpriseDetailsVOList = enterpriseDetailsService.getAllEnterprise();
            return ResultEntity.successWithData(enterpriseDetailsVOList);
        }catch (Exception e){
            e.printStackTrace();
            return ResultEntity.failed(e.getMessage());
        }
    }
}
