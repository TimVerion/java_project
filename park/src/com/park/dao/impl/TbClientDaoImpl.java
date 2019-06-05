package com.park.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.park.dao.TbClientDao;
import com.park.pojo.TbClient;
import com.park.util.MysqlUtil;
import com.park.util.RepeatCode;

public class TbClientDaoImpl implements TbClientDao{
	private RepeatCode code=new RepeatCode();
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return 0;
	}

	@Override
	public boolean insert(TbClient record) {
		String sql="insert into tb_client values(null,?,?,0)";
		int deal = code.deal(sql, new Object[]{record.getUsername(),record.getPassword()});
		if(deal>0){
			return true;
		}
		return false;
	}

	@Override
	public int insertSelective(TbClient record) {
		String sql="insert into tb_client values(null,?,?)";
		return code.deal(sql, new Object[]{record.getUsername(),record.getPassword()});
	}

	@Override
	public TbClient selectByPrimaryKey(Integer id) {
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(TbClient record) {
		return 0;
	}

	@Override
	public int updateByPrimaryKey(TbClient record) {
		return 0;
	}

	@Override
	public TbClient selectByName(String username) {
		String sql="select * from tb_client where username = ?";
		List<TbClient> query = code.query(sql, TbClient.class, new Object[]{username});
		return query.size()>0?query.get(0):null;
	}

	@Override
	public TbClient login(TbClient user) {
		String sql="select * from tb_client where username = ? and password=?";
		List<TbClient> query = code.query(sql, TbClient.class, new Object[]{user.getUsername(),user.getPassword()});
		return query.size()>0?query.get(0):null;
	}

	@Override
	public void toActived(int cid) {
		String sql="insert into isactived values(?,0,0,0)";
		code.deal(sql, new Object[]{cid});
	}



	@Override
	public boolean active(String code) {
		return false;
	}
	@Override
	public void activeShow(int cid) {
		String sql="update isactived set sho=1 where cid=?";
		code.deal(sql, new Object[]{cid});
	}
	@Override
	public void activeInfo(Integer cid) {
		String sql="update isactived set info=1 where cid=?";
		code.deal(sql, new Object[]{cid});
	}
	/**
	 * 是否填写车辆信息
	 */
	@Override
	public void activeCar(Integer cid) {
		String sql="update isactived set car=1 where cid=?";
		code.deal(sql, new Object[]{cid});
	}
	/**
	 * 是否填写全部信息
	 */
	@Override
	public boolean isActived(Integer cid) {
		String sql="select cid c from isactived where sho=1 and car=1 and info=1 and cid="+cid+"";
		Connection con = MysqlUtil.getCon();
		int row=0;
		Statement st =null;
		ResultSet rs=null;
		try {
			st= con.createStatement();
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

}
