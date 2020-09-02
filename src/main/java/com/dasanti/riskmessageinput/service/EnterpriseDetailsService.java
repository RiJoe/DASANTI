package com.dasanti.riskmessageinput.service;

import com.dasanti.riskmessageinput.entity.*;
import com.dasanti.riskmessageinput.entity.page.PageResult;

import java.util.List;

public interface EnterpriseDetailsService {
    List<EnterpriseRiskCountVO> getEnterpriseRiskCount();

    List<EnterpriseDetailsVO> getAllEnterprise();

    PageResult getAllRiskEnterpriseForPage(Integer pageNum, Integer pageSize, String riskLevel);

    List<TableDetailsVO> getTableDetailsById(Integer tableId, Integer enterpriseId);

    TableRiskDetailsVO getTableRiskDetailsByTableId(Integer tableId);

    String getWordUrlById(Integer enterpriseId);
}
