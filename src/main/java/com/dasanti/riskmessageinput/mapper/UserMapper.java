package com.dasanti.riskmessageinput.mapper;

import com.dasanti.riskmessageinput.entity.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {
    User getUserInfo(String userName);
}
