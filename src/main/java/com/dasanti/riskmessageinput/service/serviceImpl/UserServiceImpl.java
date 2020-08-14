package com.dasanti.riskmessageinput.service.serviceImpl;

import com.dasanti.riskmessageinput.entity.User;
import com.dasanti.riskmessageinput.mapper.UserMapper;
import com.dasanti.riskmessageinput.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;

    @Override
    public User getUserInfo(String userName) {
        return userMapper.getUserInfo(userName);
    }
}
