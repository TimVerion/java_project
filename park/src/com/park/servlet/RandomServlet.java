package com.park.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.park.util.ValidateCode;
@WebServlet("/suiji")
public class RandomServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		 ValidateCode vCode = new ValidateCode(160,40,5,150);
	        req.getSession().setAttribute("CHECKCODE_SERVER", vCode.getCode());
	        vCode.write(resp.getOutputStream());
	}
}
