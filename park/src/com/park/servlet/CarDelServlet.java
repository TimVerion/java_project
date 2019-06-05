package com.park.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.park.dao.TbCarDao;
import com.park.dao.impl.TbCarDaoImpl;
import com.park.pojo.TbCar;
import com.park.pojo.TbClient;

@WebServlet("/delcar")
public class CarDelServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private TbCarDao dao=new TbCarDaoImpl();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int cid=Integer.parseInt(req.getParameter("cid"));
		int isp = Integer.parseInt(req.getParameter("ispay"));
		dao.deleteByPrimaryKey(cid);
		TbClient user = (TbClient) req.getSession().getAttribute("user");
		if (user != null) {
			Integer id = user.getId();
			List<TbCar> ids = dao.getCidById(id);
			req.setAttribute("cars", ids);
			req.setAttribute("ispay", isp);
			req.getRequestDispatcher("/chosecar.jsp").forward(req, resp);
		}else{
			resp.sendRedirect("login.jsp");
		}
	}
}
