package com.park.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.park.dao.TbStallDao;
import com.park.dao.impl.TbStallDaoImpl;
import com.park.pojo.PageBean;
import com.park.pojo.TbPark;
import com.park.pojo.TbStall;
import com.park.pojo.TbStallShow;
import com.park.service.TbStallService;

public class TbStallServiceImpl implements TbStallService {
	private TbStallDao dao = new TbStallDaoImpl();

	@Override
	public PageBean<TbStallShow> pageQuery(int cid, int currentPage,
			int pageSize) {
		PageBean<TbStallShow> pb = new PageBean<TbStallShow>();
		// 设置当前页码
		pb.setCurrentPage(currentPage);
		// 设置每页显示条数
		pb.setPageSize(pageSize);
		// 设置总记录数
		int totalCount = dao.findTotalCount(cid);
		pb.setTotalCount(totalCount);
		// 设置当前页显示的数据集合
		int start = (currentPage - 1) * pageSize;// 开始的记录数
		List<TbStall> list = new ArrayList<TbStall>();
		list = dao.selectQuery(start, pageSize, cid);
		List<TbStallShow> query = new ArrayList<TbStallShow>();
		for (TbStall tbStall : list) {
			query.add(new TbStallShow(tbStall, dao.queryPrice(tbStall
					.getStallsize())));
		}

		pb.setList(query);

		// 设置总页数 = 总记录数/每页显示条数
		int totalPage = totalCount % pageSize == 0 ? totalCount / pageSize
				: (totalCount / pageSize) + 1;
		pb.setTotalPage(totalPage);

		return pb;
	}

	@Override
	public TbPark getPark(int id) {
		TbPark park = dao.getPark(id);
		return park;
	}

	@Override
	public PageBean<TbStallShow> pageQueryIssue(int cid, int currentPage,
			int pageSize, String type) {
		PageBean<TbStallShow> pb = new PageBean<TbStallShow>();
		// 设置当前页码
		pb.setCurrentPage(currentPage);
		// 设置每页显示条数
		pb.setPageSize(pageSize);
		// 设置总记录数
		int totalCount = dao.findTotalCount(cid);
		pb.setTotalCount(totalCount);
		// 设置当前页显示的数据集合
		int start = (currentPage - 1) * pageSize;// 开始的记录数
		List<TbStall> list = new ArrayList<TbStall>();
		// 根据type查询
		int issue=0;
		if(type.equals("no")){
			issue=1;
		}
		list = dao.selectIssue(start, pageSize, cid, issue);
		List<TbStallShow> query = new ArrayList<TbStallShow>();
		for (TbStall tbStall : list) {
			query.add(new TbStallShow(tbStall, dao.queryPrice(tbStall
					.getStallsize())));
		}

		pb.setList(query);

		// 设置总页数 = 总记录数/每页显示条数
		int totalPage = totalCount % pageSize == 0 ? totalCount / pageSize
				: (totalCount / pageSize) + 1;
		pb.setTotalPage(totalPage);

		return pb;
	}

	@Override
	public PageBean<TbStallShow> pageQueryLike(int cid, int currentPage,
			int pageSize, String str1, String str2, String str3) {
		PageBean<TbStallShow> pb = new PageBean<TbStallShow>();
		// 设置当前页码
		pb.setCurrentPage(currentPage);
		// 设置每页显示条数
		pb.setPageSize(pageSize);
		// 设置总记录数
		int totalCount = dao.findTotalCount(cid);
		pb.setTotalCount(totalCount);
		// 设置当前页显示的数据集合
		int start = (currentPage - 1) * pageSize;// 开始的记录数
		List<TbStall> list = new ArrayList<TbStall>();
		// 根据type查询
		if(str3.equals("price")){
			str2=dao.querySize(Float.parseFloat(str2))+"";
			str3="stallsize";
		}
		list = dao.selectLike(start, pageSize, cid, str1,str2,str3);
		List<TbStallShow> query = new ArrayList<TbStallShow>();
		for (TbStall tbStall : list) {
			query.add(new TbStallShow(tbStall, dao.queryPrice(tbStall
					.getStallsize())));
		}

		pb.setList(query);

		// 设置总页数 = 总记录数/每页显示条数
		int totalPage = totalCount % pageSize == 0 ? totalCount / pageSize
				: (totalCount / pageSize) + 1;
		pb.setTotalPage(totalPage);

		return pb;
	}

	@Override
	public TbStall getStall(String id) {
		Integer cid=Integer.parseInt(id);
		return dao.selectByPrimaryKey(cid);
	}

}
