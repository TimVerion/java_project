package com.park.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.park.dao.TbStallDao;
import com.park.pojo.TbPark;
import com.park.pojo.TbStall;
import com.park.util.MysqlUtil;
import com.park.util.RepeatCode;

public class TbStallDaoImpl implements TbStallDao{
	private RepeatCode code=new RepeatCode();
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return 0;
	}

	@Override
	public int insert(TbStall record) {
		return 0;
	}

	@Override
	public int insertSelective(TbStall record) {
		return 0;
	}

	@Override
	public TbStall selectByPrimaryKey(Integer id) {
		String sql="select * from tb_stall where id=?";
		List<TbStall> query = code.query(sql, TbStall.class, new Object[]{id});
		return query.size()>0?query.get(0):null;
	}

	@Override
	public int updateByPrimaryKeySelective(TbStall record) {
		return 0;
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(TbStall record) {
		return 0;
	}

	@Override
	public int updateByPrimaryKey(TbStall record) {
		return 0;
	}

	@Override
	public List<TbStall> selectQuery(int start, int pageSize,int cid) {
		String sql="select * from tb_stall where stallsize=? limit ?,?";
		return code.query(sql, TbStall.class, new Object[]{cid,start,pageSize});
	}

	@Override
	public int findTotalCount(int cid) {
		String sql="select count(id) size from tb_stall where stallsize="+cid+"";
		Connection con = MysqlUtil.getCon();
		Statement st=null;
		ResultSet rs=null;
		int size=0;
		try {
			st = con.createStatement();
			rs= st.executeQuery(sql);
			if(rs.next()){
				size=rs.getInt("size");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			MysqlUtil.Close(st, rs, con);
		}
		return size;
	}
	
	@Override
	public float queryPrice(int stallSize) {
		String sql="select price from tb_stallprice where stallsize="+stallSize+"";
		Connection con = MysqlUtil.getCon();
		Statement st=null;
		ResultSet rs =null;
		float size=0;
		try {
			st = con.createStatement();
			rs= st.executeQuery(sql);
			if(rs.next()){
				size=rs.getFloat("price");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			MysqlUtil.Close(st, rs, con);
		}
		return size;
	}

	@Override
	public TbPark getPark(int id) {
		String sql="select * from tb_park where id=?";
		List<TbPark> query = code.query(sql, TbPark.class, new Object[]{id});
		return query.size()>0?query.get(0):null;
	}

	@Override
	public List<TbStall> selectIssue(int start, int pageSize,int cid,int issue) {
		String sql="select * from tb_stall where stallsize=? and isleisure=? limit ?,?";
		return code.query(sql, TbStall.class, new Object[]{cid,issue,start,pageSize});
	}

	@Override
	public List<TbStall> selectLike(int start, int pageSize, int cid,
			String str1, String str2, String str3) {
		String sql="";
		if(str1.equals("all")){
			sql="select * from tb_stall where stallsize=? and "+str3+" =? limit ?,?";
			System.out.println(sql);
			return code.query(sql, TbStall.class, new Object[]{cid,str2,start,pageSize});
		}else{
			sql="select * from tb_stall where stallsize=? and isleisure=? and "+str3+" = ? limit ?,?";
			return code.query(sql, TbStall.class, new Object[]{cid,str1,str2,start,pageSize});
		}
	}

	@Override
	public int querySize(float price) {
		String sql="select stallsize from tb_stallprice where price="+price+"";
		Connection con = MysqlUtil.getCon();
		Statement st=null;
		ResultSet rs =null;
		int size=0;
		try {
			st = con.createStatement();
			rs= st.executeQuery(sql);
			if(rs.next()){
				size=rs.getInt("stallsize");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			MysqlUtil.Close(st, rs, con);
		}
		return size;
	}


}
