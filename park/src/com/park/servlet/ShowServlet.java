package com.park.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.park.dao.InputartDao;
import com.park.dao.TbClientDao;
import com.park.dao.impl.InputartDaoImpl;
import com.park.dao.impl.TbClientDaoImpl;
import com.park.pojo.ClientShow;
import com.park.pojo.TbClient;
/**
 * 这里负责第一张基础表的填写和验证
 */
@WebServlet("/saveshow")
public class ShowServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private InputartDao dao=new InputartDaoImpl();
	private TbClientDao cdao=new TbClientDaoImpl();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		TbClient user=(TbClient) req.getSession().getAttribute("user");
		ClientShow cs=new ClientShow();
		cs.setCid(user.getId());
		cs.setImg(req.getParameter("show_img"));
		cs.setSign(req.getParameter("show_sign"));
		cs.setName(req.getParameter("show_name"));
		cs.setCompany(req.getParameter("show_company"));
		cs.setPost(req.getParameter("show_post"));
		cs.setAdress(req.getParameter("show_address"));
		//判断信息是否已经填写
		if(dao.isExit(cs.getCid())){
			dao.updateclientshow(cs);
			req.getSession().setAttribute("cs", dao.getCs(user.getId()));
		}else{
			dao.saveClientShow(cs);
			cdao.activeShow(user.getId());
		}
		req.getRequestDispatcher("active.jsp").forward(req, resp);
	}
}
