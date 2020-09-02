package com.dasanti.riskmessageinput.mapper;

import com.dasanti.riskmessageinput.entity.OtherEnterpriseCountVO;
import com.dasanti.riskmessageinput.entity.OtherEnterpriseInform;
import com.dasanti.riskmessageinput.entity.OtherInfluenceDetails;
import com.dasanti.riskmessageinput.entity.OtherWordUrl;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface OtherEnterpriseInformMapper {
    Integer saveOtherEnterpriseInform(OtherEnterpriseInform otherEnterpriseInform);

    Integer getOtherEnterpriseCount();

    List<OtherEnterpriseInform> getAllOtherEnterprise();

    List<OtherInfluenceDetails> getOtherEnterpriseDetailsById(Integer  otherEnterpriseId);

    void saveOtherWordUrl(OtherWordUrl otherWordUrl);

    String getOtherWordUrl(Integer otherEnterpriseId);

    List<OtherEnterpriseCountVO> getOtherEnterpriseCountVOById(Integer otherEnterpriseId);
}
