package com.dasanti.riskmessageinput.service;

import com.dasanti.riskmessageinput.entity.*;

import java.util.List;

public interface EnterpriseInformService {

    void saveInfluenceFactorDetails(InfluenceFactorDetails influenceFactorDetailsList);

    Integer saveEnterpriseInform(EnterpriseInform enterpriseInform);

    void saveWordUrl(WordUrl wordUrl);

    void saveOtherInfluenceDetails(OtherInfluenceDetails otherInfluenceDetails);

    void saveRiskDeterminationTableForEnterprise(RiskDeterminationTable riskDeterminationTable);
}
