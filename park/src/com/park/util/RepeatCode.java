package com.park.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class RepeatCode {
	public int deal(String sql,Object...params){
		Connection con = MysqlUtil.getCon();
		PreparedStatement ps=null;
		try {
			ps = con.prepareStatement(sql);
			for (int i = 0; i < params.length; i++) {
				ps.setObject((i+1), params[i]);
			}
			return ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			MysqlUtil.Close(ps, null, con);
		}
		return 0;
	}
	public <T> List<T> query(String sql,Class<T> type,Object...params){
		Connection con = MysqlUtil.getCon();
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			ps = con.prepareStatement(sql);
			for (int i = 0; i < params.length; i++) {
				ps.setObject((i+1), params[i]);
			}
			rs = ps.executeQuery();
			List<T> handle = new BeanHandler<T>(type).handle(rs);
			return handle;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			MysqlUtil.Close(ps, rs, con);
		}
		return null;
	}
}
