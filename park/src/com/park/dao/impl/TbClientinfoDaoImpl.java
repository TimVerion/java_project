package com.park.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.park.dao.TbClientinfoDao;
import com.park.pojo.ClientShow;
import com.park.pojo.TbClientinfo;
import com.park.util.MysqlUtil;
import com.park.util.RepeatCode;

public class TbClientinfoDaoImpl implements TbClientinfoDao{
	private RepeatCode code=new RepeatCode();
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(TbClientinfo record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(TbClientinfo record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public TbClientinfo selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(TbClientinfo record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(TbClientinfo record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void saveClientInfo(TbClientinfo cs) {
		String sql="insert into tb_clientinfo values(null,?,?,?,?,?)";
		code.deal(sql, new Object[]{
			cs.getCid(),cs.getSex(),cs.getSign(),cs.getPhonenum(),cs.getMail()
		});
	}

	@Override
	public void updateclientInfo(TbClientinfo cs) {
		String sql="update tb_clientinfo set sex=?,sign=?,phonenum=?,mail=? where cid=?";
		code.deal(sql, new Object[]{
			cs.getSex(),cs.getSign(),cs.getPhonenum(),cs.getMail(),cs.getCid()
		});
	}

	@Override
	public boolean isExit(Integer cid) {
		String sql="select count(id) c from tb_clientinfo where cid="+cid+"";
		Connection con = MysqlUtil.getCon();
		int row=0;
		ResultSet rs=null;
		Statement st=null;
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			if (rs.next()) {
				row=rs.getInt("c");
			}
			if(row>0){
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			MysqlUtil.Close(st, rs, con);
		}
		return false;
	}

	public TbClientinfo getCf(Integer cid) {
		String sql="select * from tb_clientinfo where cid=?";
		List<TbClientinfo> query = code.query(sql, TbClientinfo.class, new Object[]{cid});
		return query.size()>0?query.get(0):null;
	}

	

}
