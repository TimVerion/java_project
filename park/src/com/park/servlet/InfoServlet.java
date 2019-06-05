package com.park.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.park.dao.TbClientDao;
import com.park.dao.TbClientinfoDao;
import com.park.dao.impl.TbClientDaoImpl;
import com.park.dao.impl.TbClientinfoDaoImpl;
import com.park.pojo.TbClient;
import com.park.pojo.TbClientinfo;
/**
 * 
 *这里用于第二张私人表的提交和修改
 */
@WebServlet("/saveinfo")
public class InfoServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private TbClientinfoDao dao=new TbClientinfoDaoImpl();
	private TbClientDao cdao=new TbClientDaoImpl();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		TbClient user=(TbClient) req.getSession().getAttribute("user");
		TbClientinfo cs=new TbClientinfo();
		cs.setCid(user.getId());
		cs.setMail(req.getParameter("c_email"));
		cs.setPhonenum(req.getParameter("c_phone"));
		cs.setSex(req.getParameter("c_sex"));
		cs.setSign(req.getParameter("c_name"));
		//判断私人信息是否已经填写
		if(dao.isExit(cs.getCid())){
			//如果填写则更新
			dao.updateclientInfo(cs);
			//req.getSession().setAttribute("info", cs);
		}else{
			//如果没有填写则保存
			dao.saveClientInfo(cs);
			//并将激活表中info给激活
			cdao.activeInfo(user.getId());
		}
		req.getRequestDispatcher("content.jsp").forward(req, resp);
	}
}
