package com.dasanti.riskmessageinput.service;

import com.dasanti.riskmessageinput.entity.EnterpriseInform;
import com.dasanti.riskmessageinput.entity.InfluenceFactorDetails;
import com.dasanti.riskmessageinput.entity.OtherInfluenceDetails;
import com.dasanti.riskmessageinput.entity.WordUrl;

import java.util.List;

public interface EnterpriseInformService {

    void saveInfluenceFactorDetails(InfluenceFactorDetails influenceFactorDetailsList);

    Integer saveEnterpriseInform(EnterpriseInform enterpriseInform);

    void saveWordUrl(WordUrl wordUrl);

    void saveOtherInfluenceDetails(OtherInfluenceDetails otherInfluenceDetails);
}
