package com.dasanti.riskmessageinput.service.serviceImpl;

import com.dasanti.riskmessageinput.entity.EnterpriseInform;
import com.dasanti.riskmessageinput.mapper.EnterpriseInformMapper;
import com.dasanti.riskmessageinput.service.EnterpriseInformService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class EnterpriseInformServiceImpl implements EnterpriseInformService {
    @Resource
    private EnterpriseInformMapper enterpriseInformMapper;

    @Override
    public Integer saveEnterpriseInform(EnterpriseInform enterpriseInform) {
        enterpriseInformMapper.saveEnterpriseInform(enterpriseInform);
        return enterpriseInform.getId();
    }
}
