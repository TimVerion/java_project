package com.park.dao;

import com.park.pojo.ClientShow;

public interface InputartDao {
	public String getInput();
	public void saveClientShow(ClientShow cs);
	public boolean isExit(int cid);
	public void updateclientshow(ClientShow cs);
	public ClientShow getCs(int cid);
	public String getImg();
}
