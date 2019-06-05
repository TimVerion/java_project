package com.park.servlet;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyFilter implements Filter {
	private static final String[] excludePathPatterns = { "/", "/index",
			"/favicon.ico", "/login", "/stayinfo" };

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=UTF-8");
		//System.out.println(req.getRequestURI());
		chain.doFilter(req, resp);
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

	public MyFilter() {
	}

	public void destroy() {
		System.out.println("退出陈宫");
	}
}
