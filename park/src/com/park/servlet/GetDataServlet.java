package com.park.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.park.dao.TbIntentDao;
import com.park.dao.impl.TbIntentDaoImpl;
import com.park.pojo.TbIntent;
import com.park.util.PageResult;

@WebServlet("/getdata")
public class GetDataServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private TbIntentDao dao=new TbIntentDaoImpl();
	public void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int cid=Integer.parseInt(req.getParameter("cid"));
		int isp = Integer.parseInt(req.getParameter("ispay"));
		String cp=req.getParameter("currentpage");
		String ps=req.getParameter("pagesize");
		int currentpage=1;
		int pagesize=10;
		if(cp!=null){
			currentpage=Integer.parseInt(cp);
		}
		if(ps!=null){
			pagesize=Integer.parseInt(ps);
		}
		List<TbIntent> its = new ArrayList<TbIntent>();
		if(isp==0){
			its=dao.getIntentsNopay(cid,currentpage,pagesize);
		}else{
			its=dao.getIntentspay(cid, currentpage, pagesize);
		}
		PageResult<TbIntent> pb=new PageResult<TbIntent>(currentpage,pagesize,dao.getIntentCount(cid),its);
		req.setAttribute("pb", pb);
		req.setAttribute("cid", cid);
		req.setAttribute("ispay", isp);
		req.getRequestDispatcher("/showindent.jsp").forward(req, resp);
	}
}
