package com.park.dao;

import com.park.pojo.TbClient;

public interface TbClientDao {
	 	int deleteByPrimaryKey(Integer id);

	    boolean insert(TbClient record);
	    int insertSelective(TbClient record);

	    TbClient selectByPrimaryKey(Integer id);
	    
	    TbClient selectByName(String username);

	    int updateByPrimaryKeySelective(TbClient record);

	    int updateByPrimaryKey(TbClient record);

		TbClient login(TbClient user);


		void toActived(int cid);
		/**
		 * 邮箱激活
		 */
		boolean active(String code);
		/**
		 * 个人基本信息填写
		 */
		void activeShow(int cid);
		/**
		 * 个人私有信息填写
		 */
		void activeInfo(Integer cid);
		/**
		 * 个人车辆注册
		 */
		void activeCar(Integer cid);
		/**
		 * 是否全部信息填写完整
		 */
		boolean isActived(Integer id);
	    
}
