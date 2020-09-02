package com.dasanti.riskmessageinput.mapper;

import com.dasanti.riskmessageinput.entity.*;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface EnterpriseDetailsMapper {

    List<EnterpriseDetailsVO> getAllEnterprise();

    List<EnterpriseRiskCountVO> getEnterpriseRiskCount();

    List<Integer> getAllEnterpriseIdByRiskLevel(String riskLevel);

    List<EnterpriseInform> getAllEnterpriseByEnterpriseId(List<Integer> enterpriseIdList);

    List<TableDetailsVO> getTableDetailsById(Integer tableId);

    List<InfluenceFactorDetails> getInfluenceFactorDetailByEnterpriseId(Integer enterpriseId);

    TableRiskDetailsVO getTableRiskDetailsByTableId(Integer tableId);

    List<TableComputerExplain> getTableRiskCountDetailsByTableId(Integer tableId);

    String getWordUrlById(Integer enterpriseId);
}
