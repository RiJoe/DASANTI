package com.dasanti.riskmessageinput.service;

import com.dasanti.riskmessageinput.entity.EnterpriseDetailsVO;
import com.dasanti.riskmessageinput.entity.EnterpriseInform;
import com.dasanti.riskmessageinput.entity.EnterpriseRiskCountVO;
import com.dasanti.riskmessageinput.entity.page.PageResult;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface EnterpriseDetailsService {
    List<EnterpriseRiskCountVO> getEnterpriseRiskCount();

    List<EnterpriseDetailsVO> getAllEnterprise();

    PageResult getAllRiskEnterpriseForPage(Integer pageNum, Integer pageSize, String riskLevel);
}
