package com.park.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

import com.park.util.BaseServlet;


@WebServlet("/car/*")
public class TbCarServlet extends BaseServlet{
	private static final long serialVersionUID = 1L;
	public void little(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.sendRedirect(req.getContextPath()+"/list.jsp?cid=0");
		
	}
	public void middle(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.sendRedirect(req.getContextPath()+"/list.jsp?cid=1");
	}
	public void big(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.sendRedirect(req.getContextPath()+"/list.jsp?cid=2");
	}
}
