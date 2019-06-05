package com.park.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.park.dao.TbCarDao;
import com.park.pojo.TbCar;
import com.park.pojo.TbClientinfo;
import com.park.util.MysqlUtil;
import com.park.util.RepeatCode;

public class TbCarDaoImpl implements TbCarDao{
	private RepeatCode code=new RepeatCode();
	@Override
	public int deleteByPrimaryKey(Integer id) {
		String sql="delete from tb_car where id=?";
		return code.deal(sql, new Object[]{id});
	}

	@Override
	public int insert(TbCar record) {
		return 0;
	}

	@Override
	public int insertSelective(TbCar record) {
		return 0;
	}

	@Override
	public TbCar selectByPrimaryKey(Integer id) {
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(TbCar record) {
		return 0;
	}

	@Override
	public int updateByPrimaryKey(TbCar record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public TbCar getCar(Integer cid) {
		String sql="select * from tb_car where cid=?";
		List<TbCar> query = code.query(sql, TbCar.class, new Object[]{cid});
		return query.size()>0?query.get(0):null;
	}

	@Override
	public boolean isExit(Integer cid) {
		String sql="select count(id) c from tb_car where cid="+cid+"";
		Connection con = MysqlUtil.getCon();
		int row=0;
		Statement st=null;
		ResultSet rs =null;
		try {
			st = con.createStatement();
			rs= st.executeQuery(sql);
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

	@Override
	public void updateCar(TbCar car) {
		String sql="update tb_car set carbrand=?,carnum=?,person=?,cartype=? where cid=?";
		code.deal(sql, new Object[]{
			car.getCarbrand(),car.getCarnum(),car.getPerson(),car.getCartype(),car.getCid()
		});
	}

	@Override
	public void saveCar(TbCar car) {
		String sql="insert into tb_car values(null,?,?,?,?,?)";
		code.deal(sql, new Object[]{
			car.getCid(),car.getCarbrand(),car.getCarnum(),car.getPerson(),car.getCartype()
		});
	}

	@Override
	public List<TbCar> selectByCid(Integer cid) {
		String sql="select * from tb_car where cid=?";
		List<TbCar> query = code.query(sql, TbCar.class, new Object[]{cid});
		return query;
	}

	@Override
	public List<TbCar> getCidById(Integer id) {
		String sql="select * from tb_car where cid=?";
		return code.query(sql, TbCar.class, new Object[]{id});
	}



}
