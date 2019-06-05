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

@WebServlet("/nopay")
public class IntentNoPayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TbCarDao cardao = new TbCarDaoImpl();

	public void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		TbClient user = (TbClient) req.getSession().getAttribute("user");
		if (user != null) {
			Integer id = user.getId();
			List<TbCar> ids = cardao.getCidById(id);
			req.setAttribute("cars", ids);
			req.setAttribute("ispay", 0);
			req.getRequestDispatcher("/chosecar.jsp").forward(req, resp);
		}else{
			resp.sendRedirect("login.jsp");
		}
	}
}
