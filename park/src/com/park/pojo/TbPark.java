package com.park.pojo;

public class TbPark {
	private int id;
	private String parkname;
	private int stallsize;
	private String parkcontent;
	private String img;
	@Override
	public String toString() {
		return "TbPark [id=" + id + ", parkname=" + parkname + ", stallsize="
				+ stallsize + ", parkcontent=" + parkcontent + ", img=" + img
				+ "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getParkname() {
		return parkname;
	}
	public void setParkname(String parkname) {
		this.parkname = parkname;
	}
	public int getStallsize() {
		return stallsize;
	}
	public void setStallsize(int stallsize) {
		this.stallsize = stallsize;
	}
	public String getParkcontent() {
		return parkcontent;
	}
	public void setParkcontent(String parkcontent) {
		this.parkcontent = parkcontent;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
}
