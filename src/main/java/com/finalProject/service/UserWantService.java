package com.finalProject.service;

import com.finalProject.pojo.UserWant;

import java.util.List;

/**
  
 */
public interface UserWantService {
    int deleteByPrimaryKey(Integer id);

    int insert(UserWant record);

    int insertSelective(UserWant record);

    UserWant selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserWant record);

    int updateByPrimaryKey(UserWant record);

    int getCounts(int uid);

    List<UserWant> selectByUid(int uid, int start);

    List<UserWant> selectMineByUid(int id);

    List<UserWant> selectAll();
}
