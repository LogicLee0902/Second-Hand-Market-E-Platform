package com.finalProject.service.Impl;

import com.finalProject.dao.UserStateMapper;
import com.finalProject.pojo.UserState;
import com.finalProject.service.UserStateService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
  
 */
@Service
public class UserStateServiceImpl implements UserStateService {
    @Resource
    private UserStateMapper userStateMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    @Override
    public int insert(UserState record) {
        return userStateMapper.insert(record);
    }

    @Override
    public int insertSelective(UserState record) {
        return userStateMapper.insertSelective(record);
    }

    @Override
    public UserState selectByPrimaryKey(Integer id) {
        return userStateMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(UserState record) {
        return userStateMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(UserState record) {
        return userStateMapper.updateByPrimaryKey(record);
    }

    @Override
    public UserState selectByUid(int uid) {
        return userStateMapper.selectByUid(uid);
    }
}
