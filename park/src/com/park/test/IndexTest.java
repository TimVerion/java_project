package com.park.test;

import java.util.List;

import org.junit.Test;

import com.park.dao.InputartDao;
import com.park.dao.TbClientDao;
import com.park.dao.TbIntentDao;
import com.park.dao.TbStallDao;
import com.park.dao.impl.InputartDaoImpl;
import com.park.dao.impl.TbClientDaoImpl;
import com.park.dao.impl.TbIntentDaoImpl;
import com.park.dao.impl.TbStallDaoImpl;
import com.park.pojo.TbClient;
import com.park.pojo.TbPark;
import com.park.pojo.TbStall;
import com.park.service.IndexService;
import com.park.service.TbStallService;
import com.park.service.impl.IndexServiceImpl;
import com.park.service.impl.TbStallServiceImpl;

public class IndexTest {
	@Test
	public void testIndex(){
		IndexService service=new IndexServiceImpl();
		String inputText = service.getInputText();
		System.out.println(inputText);
	}
	@Test
	public void testClient(){
		TbClientDao dao=new TbClientDaoImpl();
		TbClient client = dao.selectByName("詹姆斯布朗");
		System.out.println(client);
	}
	@Test
	public void testexit(){
		InputartDao dao=new InputartDaoImpl();
		System.out.println(dao.isExit(1));
	}
	@Test
	public void testList(){
		TbStallDao dao=new TbStallDaoImpl();
		List<TbStall> selectQuery = dao.selectIssue(0, 5, 0, 0);
		for (TbStall tbStall : selectQuery) {
			System.out.println(tbStall);
		}
	}
	@Test
	public void testLis2t(){
		TbStallDao dao=new TbStallDaoImpl();
		int findTotalCount = dao.findTotalCount(0);
		System.out.println(findTotalCount);
	}
	/**
	 *这里测试
	 */
	@Test
	public void testLis2asdt(){
		TbStallService d = new TbStallServiceImpl();
		TbPark park = d.getPark(1);
		System.out.println(park);
	}

}
