package com.park.dao;

import java.util.List;

import com.park.pojo.TbIntent;

public interface TbIntentDao {
	   int deleteByPrimaryKey(Integer id);

	    int insert(TbIntent record);

	    int insertSelective(TbIntent record);

	    TbIntent selectByPrimaryKey(Integer id);

	    int updateByPrimaryKeySelective(TbIntent record);

	    int updateByPrimaryKeyWithBLOBs(TbIntent record);

	    int updateByPrimaryKey(TbIntent record);
	    /**
	     * 根据停车场的id查询价格
	     */
	    float getStallPriceByid(int id);
	    
	    List<TbIntent> getIntentsNopay(int id, Integer currentPage, Integer pageSize);
	    
	    int getIntentCount(int id);
	    
	    List<TbIntent> getIntentspay(int id, Integer currentPage, Integer pageSize);
}
