package com.finalProject.service.Impl;

import com.finalProject.dao.UserInformationMapper;
import com.finalProject.pojo.UserInformation;
import com.finalProject.service.UserInformationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
  
 */
@Service("userInformationService")
public class UserInformationServiceImpl implements UserInformationService {
    @Resource
    private UserInformationMapper userInformationMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    @Override
    public int insert(UserInformation record) {
        return this.userInformationMapper.insert(record);
    }

    @Override
    public int insertSelective(UserInformation record) {
        return this.userInformationMapper.insertSelective(record);
    }

    @Override
    public UserInformation selectByPrimaryKey(Integer id) {
        return this.userInformationMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(UserInformation record) {
        return this.userInformationMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(UserInformation record) {
        return this.userInformationMapper.updateByPrimaryKey(record);
    }

    @Override
    public int selectIdByPhone(String phone) {
        try {
            return this.userInformationMapper.selectIdByPhone(phone);
        } catch (Exception e) {
            return 0;
        }
    }

    @Override
    public List<UserInformation> getAllForeach(List<Integer> list) {
        return this.userInformationMapper.getAllForeach(list);
    }
}
