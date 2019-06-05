package com.park.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.park.dao.TbIntentDao;
import com.park.pojo.TbIntent;
import com.park.util.MysqlUtil;
import com.park.util.RepeatCode;

public class TbIntentDaoImpl implements TbIntentDao{
	private RepeatCode code=new RepeatCode();
	@Override
	public int deleteByPrimaryKey(Integer id) {
		String sql="delete from tb_intent where id=?";
		return code.deal(sql, new Object[]{id});
	}

	@Override
	public int insert(TbIntent t) {
		String sql="insert into tb_intent values(null,?,?,?,?,?,?,?)";
		return code.deal(sql, new Object[]{t.getCarid(),t.getStallid(),t.getPredict(),t.getStarttime(),t.getEndtime(),t.getStallprice(),t.getIspay()});
	}

	@Override
	public int insertSelective(TbIntent record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public TbIntent selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(TbIntent record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(TbIntent record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(TbIntent record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public float getStallPriceByid(int id) {
		String sql="select price from tb_stallprice where stallsize =(select stallsize from tb_stall where id="+id+")";
		Connection con = MysqlUtil.getCon();
		Statement st=null;
		ResultSet rs=null;
		float a = 0;
		try {
			st = con.createStatement();
			rs= st.executeQuery(sql);
			if(rs.next()){
				a=rs.getFloat("price");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			MysqlUtil.Close(st, rs, con);
		}
		return a;
	}

	@Override
	public List<TbIntent> getIntentsNopay(int cid,Integer c,Integer p) {
		c=(c-1)*p;
		String sql="select * from tb_intent where ispay=0 and carid=? order by id desc limit ?,?";
		return code.query(sql, TbIntent.class, new Object[]{cid,c,p});
	}


	@Override
	public int getIntentCount(int id) {
		String sql="select count(id) ct from tb_intent where ispay=0 and carid="+id;
		Connection con = MysqlUtil.getCon();
		Statement st=null;
		ResultSet rs=null;
		int a = 0;
		try {
			st = con.createStatement();
			rs= st.executeQuery(sql);
			if(rs.next()){
				a=rs.getInt("ct");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			MysqlUtil.Close(st, rs, con);
		}
		return a;
	}

	@Override
	public List<TbIntent> getIntentspay(int cid, Integer c,
			Integer p) {
		String sql="select * from tb_intent where ispay!=0 and carid=? limit ?,?";
		return code.query(sql, TbIntent.class, new Object[]{cid,c,p});
	}

}
