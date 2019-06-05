package com.park.service.impl;

import com.park.dao.InputartDao;
import com.park.dao.impl.InputartDaoImpl;
import com.park.service.IndexService;

public class IndexServiceImpl implements IndexService{
	private InputartDao dao=new InputartDaoImpl();
	@Override
	public String getInputText() {
		 String strRandom = dao.getInput();
	        if (strRandom == null) {
	            strRandom = "土地是以它的肥沃和收获而被估价的；才能也是土地，不过它生产的不是粮食，而是真理。如果只能滋生瞑想和幻想的话，即使再大的才能也只是砂地或盐池，那上面连小草也长不出来的。 —— 别林斯基";
	        }
	        return strRandom;
	}
	@Override
	public String getInputImg() {
		return dao.getImg();
	}

}
