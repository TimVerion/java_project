package com.park.dao;

import java.util.List;

import com.park.pojo.TbPark;
import com.park.pojo.TbStall;

public interface TbStallDao {
	int deleteByPrimaryKey(Integer id);

	int insert(TbStall record);

	int insertSelective(TbStall record);

	TbStall selectByPrimaryKey(Integer id);

	List<TbStall> selectQuery(int start, int pageSize, int cid);

	// 根据是否空闲查询
	List<TbStall> selectIssue(int start, int pageSize, int cid, int issue);

	/**
	 * 根据大小查出价格
	 */
	float queryPrice(int stallSize);
	
	/**
	 * 根据价格查出大小
	 */
	int querySize(float price);

	int updateByPrimaryKeySelective(TbStall record);

	int updateByPrimaryKeyWithBLOBs(TbStall record);

	int updateByPrimaryKey(TbStall record);

	int findTotalCount(int cid);

	TbPark getPark(int id);

	List<TbStall> selectLike(int start, int pageSize, int cid, String str1,
			String str2, String str3);
}
