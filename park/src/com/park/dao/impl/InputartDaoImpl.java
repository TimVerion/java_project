package com.park.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.park.dao.InputartDao;
import com.park.pojo.ClientShow;
import com.park.pojo.Inputart;
import com.park.util.MysqlUtil;
import com.park.util.RepeatCode;

public class InputartDaoImpl implements InputartDao{
	private RepeatCode code=new RepeatCode();
	public String getInput(){
		  String sql="select * from inputart order by rand() limit 1";
		  String article = (code.query(sql, Inputart.class, new Object[]{})).get(0).getArticle();
		  if(article!=null){
			  return article;
		  }
		  return "";
	}
	public void saveClientShow(ClientShow cs){
		String sql="insert into clientshow values(null,?,?,?,?,?,?,?)";
		code.deal(sql, new Object[]{
			cs.getCid(),cs.getImg(),cs.getSign(),cs.getName(),cs.getPost(),cs.getCompany(),cs.getAdress()
		});
	}
	@Override
	public boolean isExit(int cid) {
		String sql="select count(id) c from clientshow where cid="+cid+"";
		Connection con = MysqlUtil.getCon();
		int row=0;
		Statement st =null;
		ResultSet rs=null;
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
	@Override
	public void updateclientshow(ClientShow cs) {
		String sql="update clientshow set img=?,sign=?,name=?,post=?,company=?,adress=? where cid=?";
		code.deal(sql, new Object[]{
			cs.getImg(),cs.getSign(),cs.getName(),cs.getPost(),cs.getCompany(),cs.getAdress(),cs.getCid()
		});
	}
	@Override
	public ClientShow getCs(int id) {
		String sql="select * from clientshow where cid=?";
		List<ClientShow> query = code.query(sql, ClientShow.class, new Object[]{id});
		return query.size()>0?query.get(0):null;
	}
	@Override
	public String getImg() {
		String sql="select * from inputimg order by rand() limit 1";
		Connection con = MysqlUtil.getCon();
		String row="";
		Statement st =null;
		ResultSet rs=null;
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			if (rs.next()) {
				row=rs.getString("img");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			MysqlUtil.Close(st, rs, con);
		}
		return row;
	}
}

