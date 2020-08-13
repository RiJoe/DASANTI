package com.dasanti.riskmessageinput.mapper;

import com.dasanti.riskmessageinput.entity.EnterpriseInform;
import com.dasanti.riskmessageinput.entity.InfluenceFactorDetails;
import com.dasanti.riskmessageinput.entity.WordUrl;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface EnterpriseInformMapper {
    Integer saveEnterpriseInform(EnterpriseInform enterpriseInform);

    void saveInfluenceFactorDetails(InfluenceFactorDetails influenceFactorDetails);

    void saveWordUrl(WordUrl wordUrl);
}
