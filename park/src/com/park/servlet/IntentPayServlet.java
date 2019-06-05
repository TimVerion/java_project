package com.park.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.park.dao.TbCarDao;
import com.park.dao.TbIntentDao;
import com.park.dao.impl.TbCarDaoImpl;
import com.park.dao.impl.TbIntentDaoImpl;
import com.park.pojo.TbCar;
import com.park.pojo.TbClient;
import com.park.pojo.TbIntent;
@WebServlet("/pay")
public class IntentPayServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private TbIntentDao dao=new TbIntentDaoImpl();
	private TbCarDao cardao=new TbCarDaoImpl();
	public void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int cid=0;
		TbClient user =(TbClient) req.getSession().getAttribute("user");
		if(user!=null){
			Integer id = user.getId();
			List<TbCar> ids=cardao.getCidById(id);
			if(ids.size()>1){
				req.setAttribute("cars", ids);
				req.setAttribute("ispay", 1);
				req.getRequestDispatcher("/chosecar.jsp").forward(req, resp);;
				return;
			}else if(ids.size()==1){
				cid=ids.get(0).getCid();
			}
		}
		List<TbIntent> its = dao.getIntentspay(cid,1,10);
		req.setAttribute("its", its);
		req.getRequestDispatcher("/showindent.jsp").forward(req, resp);
	}
}
