package com.dasanti.riskmessageinput.service;

import com.dasanti.riskmessageinput.entity.EnterpriseDetailsVO;
import com.dasanti.riskmessageinput.entity.EnterpriseRiskCountVO;

import java.util.List;

public interface EnterpriseDetailsService {
    List<EnterpriseRiskCountVO> getEnterpriseRiskCount();

    List<EnterpriseDetailsVO> getAllEnterprise();
}
