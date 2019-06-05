package com.park.servlet;


import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import com.park.dao.InputartDao;
import com.park.dao.impl.InputartDaoImpl;


public class MyListener implements HttpSessionListener{
	private InputartDao dao=new InputartDaoImpl();
	@Override
	public void sessionCreated(HttpSessionEvent event) {
		HttpSession session = event.getSession();
		session.setAttribute("cs",dao.getCs(3));
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent event) {
	}
}