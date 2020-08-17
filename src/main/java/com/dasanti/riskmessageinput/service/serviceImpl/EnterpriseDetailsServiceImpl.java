package com.dasanti.riskmessageinput.service.serviceImpl;

import com.dasanti.riskmessageinput.entity.EnterpriseDetailsVO;
import com.dasanti.riskmessageinput.mapper.EnterpriseDetailsMapper;
import com.dasanti.riskmessageinput.service.EnterpriseDetailsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class EnterpriseDetailsServiceImpl implements EnterpriseDetailsService {
    @Resource
    private EnterpriseDetailsMapper enterpriseDetailsMapper;

    @Override
    public List<EnterpriseDetailsVO> getAllEnterprise() {
        return enterpriseDetailsMapper.getAllEnterprise();
    }
}
