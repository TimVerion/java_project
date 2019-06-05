package com.park.service;


import com.park.pojo.PageBean;
import com.park.pojo.TbPark;
import com.park.pojo.TbStall;
import com.park.pojo.TbStallShow;

public interface TbStallService {

	PageBean<TbStallShow> pageQuery(int cid, int currentPage, int pageSize);
	PageBean<TbStallShow> pageQueryIssue(int cid, int currentPage, int pageSize,String type);
	TbPark getPark(int id);
	PageBean<TbStallShow> pageQueryLike(int cid, int currentPage, int pageSize,
			String string, String string2, String string3);
	TbStall getStall(String id);
}
