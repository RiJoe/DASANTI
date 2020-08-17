package com.dasanti.riskmessageinput.mapper;

import com.dasanti.riskmessageinput.entity.*;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface EnterpriseInformMapper {
    Integer saveEnterpriseInform(EnterpriseInform enterpriseInform);

    void saveInfluenceFactorDetails(InfluenceFactorDetails influenceFactorDetails);

    void saveWordUrl(WordUrl wordUrl);

    void saveOtherInfluenceDetails(OtherInfluenceDetails otherInfluenceDetails);

    void saveRiskDeterminationTableForEnterprise(RiskDeterminationTable riskDeterminationTable);
}
