package com.park.util;

import java.util.List;

public class PageResult <T>{
	private int currentpage;
	private int pagesize;
	private int nextpage;
	private int prepage;
	private int totalcount;
	private int totalpage;
	private List<T> list;
	public PageResult(int currentpage, int pagesize, int totalcount,
			List<T> list) {
		super();
		this.currentpage = currentpage;
		this.pagesize = pagesize;
		this.totalcount = totalcount;
		this.list = list;
		this.totalpage=totalcount%pagesize==0?totalcount/pagesize:totalcount/pagesize+1;
		this.nextpage=(currentpage+1)<=totalpage?(currentpage+1):currentpage;
		this.prepage=(currentpage-1)>0?(currentpage-1):currentpage;
	}
	public int getCurrentpage() {
		return currentpage;
	}
	public void setCurrentpage(int currentpage) {
		this.currentpage = currentpage;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public int getNextpage() {
		return nextpage;
	}
	public void setNextpage(int nextpage) {
		this.nextpage = nextpage;
	}
	public int getPrepage() {
		return prepage;
	}
	public void setPrepage(int prepage) {
		this.prepage = prepage;
	}
	public int getTotalcount() {
		return totalcount;
	}
	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
	}
	public int getTotalpage() {
		return totalpage;
	}
	public void setTotalpage(int totalpage) {
		this.totalpage = totalpage;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	
	
}
