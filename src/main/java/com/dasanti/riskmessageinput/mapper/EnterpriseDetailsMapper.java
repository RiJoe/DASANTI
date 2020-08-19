package com.dasanti.riskmessageinput.mapper;

import com.dasanti.riskmessageinput.entity.EnterpriseDetailsVO;
import com.dasanti.riskmessageinput.entity.EnterpriseRiskCountVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface EnterpriseDetailsMapper {

    List<EnterpriseDetailsVO> getAllEnterprise();

    List<EnterpriseRiskCountVO> getEnterpriseRiskCount();
}
