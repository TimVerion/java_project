package com.park.test;

import org.junit.Test;

import com.park.dao.TbIntentDao;
import com.park.dao.impl.TbIntentDaoImpl;

public class IntentTest {
	@Test
	public void testIntentDel(){
		TbIntentDao dao=new TbIntentDaoImpl();
		dao.deleteByPrimaryKey(15);
	}
}
