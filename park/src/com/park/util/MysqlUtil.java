package com.park.util;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import javax.sql.DataSource;

import com.alibaba.druid.pool.DruidDataSourceFactory;



public class MysqlUtil {
	private static DataSource ds;

	// 2. 创建连接池对象
	static {
		// 加载配置文件中的数据
		InputStream is = MysqlUtil.class.getClassLoader().getResourceAsStream("druid.properties");
		Properties pp = new Properties();
		try {
			pp.load(is);
			// 创建连接池，使用配置文件中的参数
			ds = DruidDataSourceFactory.createDataSource(pp);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static Connection getCon(){
		try {
			return ds.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public static void Close(Statement st,ResultSet rs,Connection con){
			try {
				if(st!=null){
				st.close();
				}
				if(rs!=null){
					rs.close();
				}
				if(con!=null){
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
}
