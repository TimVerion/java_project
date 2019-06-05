package com.park.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.park.dao.TbIntentDao;
import com.park.dao.impl.TbIntentDaoImpl;

@WebServlet("/delIntent")
public class IntentDelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TbIntentDao dao=new TbIntentDaoImpl();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String parameter = req.getParameter("id");
		String ispay = req.getParameter("ispay");
		String cid = req.getParameter("cid");
		int id=0;
		if(parameter!=null){
			id=Integer.parseInt(parameter);
		}
		dao.deleteByPrimaryKey(id);
		resp.sendRedirect("getdata?ispay="+ispay+"&cid="+cid+"");
	}
}
