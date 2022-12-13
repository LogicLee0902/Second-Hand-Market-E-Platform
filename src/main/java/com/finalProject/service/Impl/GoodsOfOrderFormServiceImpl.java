package com.finalProject.service.Impl;

import com.finalProject.dao.GoodsOfOrderFormMapper;
import com.finalProject.pojo.GoodsOfOrderForm;
import com.finalProject.service.GoodsOfOrderFormService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
  
 */
@Service
public class GoodsOfOrderFormServiceImpl implements GoodsOfOrderFormService {
    @Resource
    private GoodsOfOrderFormMapper goodsOfOrderFormMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    @Override
    public int insert(GoodsOfOrderForm record) {
        return goodsOfOrderFormMapper.insert(record);
    }

    @Override
    public int insertSelective(GoodsOfOrderForm record) {
        return goodsOfOrderFormMapper.insertSelective(record);
    }

    @Override
    public GoodsOfOrderForm selectByPrimaryKey(Integer id) {
        return goodsOfOrderFormMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(GoodsOfOrderForm record) {
        return goodsOfOrderFormMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(GoodsOfOrderForm record) {
        return goodsOfOrderFormMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<GoodsOfOrderForm> selectByOFid(int ofid) {
        return goodsOfOrderFormMapper.selectByOFid(ofid);
    }
}
