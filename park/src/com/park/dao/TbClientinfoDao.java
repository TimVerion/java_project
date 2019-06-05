package com.park.dao;

import com.park.pojo.TbClientinfo;

public interface TbClientinfoDao {
	int deleteByPrimaryKey(Integer id);

    int insert(TbClientinfo record);

    int insertSelective(TbClientinfo record);

    TbClientinfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TbClientinfo record);

    int updateByPrimaryKey(TbClientinfo record);
    
	public void saveClientInfo(TbClientinfo cs);
	public void updateclientInfo(TbClientinfo cs);

	boolean isExit(Integer cid);
}
