package com.dasanti.riskmessageinput.service.serviceImpl;

import com.dasanti.riskmessageinput.entity.*;
import com.dasanti.riskmessageinput.entity.page.PageResult;
import com.dasanti.riskmessageinput.mapper.EnterpriseDetailsMapper;
import com.dasanti.riskmessageinput.service.EnterpriseDetailsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class EnterpriseDetailsServiceImpl implements EnterpriseDetailsService {
    @Resource
    private EnterpriseDetailsMapper enterpriseDetailsMapper;

    @Override
    public List<EnterpriseRiskCountVO> getEnterpriseRiskCount() {
        return enterpriseDetailsMapper.getEnterpriseRiskCount();
    }

    @Override
    public List<EnterpriseDetailsVO> getAllEnterprise() {
        return enterpriseDetailsMapper.getAllEnterprise();
    }

    @Override
    public PageResult getAllRiskEnterpriseForPage(Integer pageNum, Integer pageSize, String riskLevel) {
        // 获取风险等级相应的企业id
        List<Integer> enterpriseIdList = enterpriseDetailsMapper.getAllEnterpriseIdByRiskLevel(riskLevel);
        // 企业ID存在则进行分页
        PageResult pageResult = new PageResult();
        if (enterpriseIdList.size() != 0) {
            // 开启分页
            PageHelper.startPage(pageNum, pageSize);
            // 通过企业id获取相应的企业信息
            List<EnterpriseInform> enterpriseInformList = enterpriseDetailsMapper.getAllEnterpriseByEnterpriseId(enterpriseIdList);
            PageInfo pageInfo = new PageInfo(enterpriseInformList);
            pageResult.setPageNum(pageNum);
            pageResult.setPageSize(pageInfo.getPageSize());
            pageResult.setTotalSize(pageInfo.getTotal());
            pageResult.setTotalPages(pageInfo.getSize());
            pageResult.setContent(pageInfo.getList());
        }else {
            pageResult.setPageNum(1);
            pageResult.setPageSize(0);
            pageResult.setTotalPages(0);
        }
        return pageResult;
    }

    @Override
    public List<TableDetailsVO> getTableDetailsById(Integer tableId,Integer enterpriseId) {
        List<TableDetailsVO> tableDetailsVOList = enterpriseDetailsMapper.getTableDetailsById(tableId);
        List<InfluenceFactorDetails> influenceFactorDetailsList = enterpriseDetailsMapper.getInfluenceFactorDetailByEnterpriseId(enterpriseId);
        for(int i=0;i<tableDetailsVOList.size();i++){
            for(int j = 0;j<influenceFactorDetailsList.size();j++){
                if(tableDetailsVOList.get(i).getInfluenceFactor().equals(influenceFactorDetailsList.get(j).getInfluenceFactor()) &&
                        tableDetailsVOList.get(i).getDetermineFactor().equals(influenceFactorDetailsList.get(j).getDetermineFactor())){
                    tableDetailsVOList.get(i).setCheck("√");
                    tableDetailsVOList.get(i).setPhoto(influenceFactorDetailsList.get(j).getPhoto());
                }
            }
        }
        return tableDetailsVOList;
    }

    @Override
    public TableRiskDetailsVO getTableRiskDetailsByTableId(Integer tableId) {
        List<TableComputerExplain> tableComputerExplainList = enterpriseDetailsMapper.getTableRiskCountDetailsByTableId(tableId);
      TableRiskDetailsVO tableRiskDetailsVO = enterpriseDetailsMapper.getTableRiskDetailsByTableId(tableId);
        tableRiskDetailsVO.setComputerExplainList(tableComputerExplainList);
        return tableRiskDetailsVO;
    }

    @Override
    public String getWordUrlById(Integer enterpriseId) {
        return enterpriseDetailsMapper.getWordUrlById(enterpriseId);
    }
}
