package com.dasanti.riskmessageinput.mapper;

import com.dasanti.riskmessageinput.entity.EnterpriseInform;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface EnterpriseInformMapper {
    Integer saveEnterpriseInform(EnterpriseInform enterpriseInform);
}
