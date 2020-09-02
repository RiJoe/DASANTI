package com.dasanti.riskmessageinput.service;

import com.dasanti.riskmessageinput.entity.OtherEnterpriseCountVO;
import com.dasanti.riskmessageinput.entity.OtherEnterpriseInform;
import com.dasanti.riskmessageinput.entity.OtherInfluenceDetails;
import com.dasanti.riskmessageinput.entity.OtherWordUrl;
import com.dasanti.riskmessageinput.entity.page.PageResult;

import java.util.List;

public interface OtherEnterpriseInformService {
    Integer saveOtherEnterpriseInform(OtherEnterpriseInform otherEnterpriseInform);

    Integer getOtherEnterpriseCount();

    PageResult getAllOtherEnterprise(Integer pageNum, Integer pageSize);

    List<OtherInfluenceDetails> getOtherEnterpriseDetailsById(Integer  otherEnterpriseId);

    void saveOtherWordUrl(OtherWordUrl otherWordUrl);

    String getOtherWordUrl(Integer otherEnterpriseId);

    List<OtherEnterpriseCountVO> getOtherEnterpriseCountVOById(Integer otherEnterpriseId);
}
