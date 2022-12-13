package com.finalProject.service;

import com.finalProject.pojo.UserCollection;

import java.util.List;

/**
  
 */
public interface UserCollectionService {
    int deleteByPrimaryKey(Integer id);

    int insert(UserCollection record);

    int insertSelective(UserCollection record);

    UserCollection selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserCollection record);

    int updateByPrimaryKey(UserCollection record);

    int getCounts(int uid);

    List<UserCollection> selectByUid(int uid, int start);
}
