package com.park.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.park.dao.TbCarDao;
import com.park.dao.TbClientDao;
import com.park.dao.impl.TbCarDaoImpl;
import com.park.dao.impl.TbClientDaoImpl;
import com.park.pojo.TbCar;
import com.park.pojo.TbClient;

@WebServlet("/savecar")
public class CarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TbCarDao dao = new TbCarDaoImpl();
	private TbClientDao cdao = new TbClientDaoImpl();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		TbClient user = (TbClient) req.getSession().getAttribute("user");
		TbCar car = new TbCar();
		car.setCid(user.getId());
		car.setCarbrand(req.getParameter("car_name"));
		car.setCarnum(req.getParameter("car_num"));
		car.setCartype(req.getParameter("car_type"));
		car.setPerson(req.getParameter("car_admin"));
		// 判断私人信息是否已经填写
		// 如果没有填写则保存
		dao.saveCar(car);
		// 并将激活表中info给激活
		cdao.activeCar(user.getId());
		Integer id = user.getId();
		List<TbCar> ids = dao.getCidById(id);
		req.setAttribute("cars", ids);
		req.setAttribute("ispay", 0);
		req.getRequestDispatcher("/chosecar.jsp").forward(req, resp);
	}
}
