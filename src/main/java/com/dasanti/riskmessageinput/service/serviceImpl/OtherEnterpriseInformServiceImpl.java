package com.dasanti.riskmessageinput.service.serviceImpl;

import com.dasanti.riskmessageinput.entity.OtherEnterpriseCountVO;
import com.dasanti.riskmessageinput.entity.OtherEnterpriseInform;
import com.dasanti.riskmessageinput.entity.OtherInfluenceDetails;
import com.dasanti.riskmessageinput.entity.OtherWordUrl;
import com.dasanti.riskmessageinput.entity.page.PageResult;
import com.dasanti.riskmessageinput.mapper.OtherEnterpriseInformMapper;
import com.dasanti.riskmessageinput.service.OtherEnterpriseInformService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OtherEnterpriseInformServiceImpl implements OtherEnterpriseInformService {
    @Resource
    private OtherEnterpriseInformMapper otherEnterpriseInformMapper;

    @Override
    public Integer saveOtherEnterpriseInform(OtherEnterpriseInform otherEnterpriseInform) {
        otherEnterpriseInformMapper.saveOtherEnterpriseInform(otherEnterpriseInform);
        return otherEnterpriseInform.getId();
    }

    @Override
    public Integer getOtherEnterpriseCount() {
        return otherEnterpriseInformMapper.getOtherEnterpriseCount();
    }

    @Override
    public PageResult getAllOtherEnterprise(Integer pageNum,Integer pageSize) {
        PageResult pageResult = new PageResult();
        PageHelper.startPage(pageNum,pageSize);
        List<OtherEnterpriseInform> otherEnterpriseInformList = otherEnterpriseInformMapper.getAllOtherEnterprise();
        PageInfo pageInfo = new PageInfo(otherEnterpriseInformList);
        pageResult.setPageNum(pageNum);
        pageResult.setPageSize(pageInfo.getPageSize());
        pageResult.setTotalSize(pageInfo.getTotal());
        pageResult.setTotalPages(pageInfo.getSize());
        pageResult.setContent(pageInfo.getList());
        return pageResult;
    }

    @Override
    public List<OtherInfluenceDetails> getOtherEnterpriseDetailsById(Integer  otherEnterpriseId) {
        return otherEnterpriseInformMapper.getOtherEnterpriseDetailsById( otherEnterpriseId);
    }

    @Override
    public void saveOtherWordUrl(OtherWordUrl otherWordUrl) {
        otherEnterpriseInformMapper.saveOtherWordUrl(otherWordUrl);
    }

    @Override
    public String getOtherWordUrl(Integer otherEnterpriseId) {
        return otherEnterpriseInformMapper.getOtherWordUrl(otherEnterpriseId);
    }

    @Override
    public List<OtherEnterpriseCountVO> getOtherEnterpriseCountVOById(Integer otherEnterpriseId) {
        return otherEnterpriseInformMapper.getOtherEnterpriseCountVOById(otherEnterpriseId);
    }
}
