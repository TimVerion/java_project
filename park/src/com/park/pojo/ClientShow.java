package com.park.pojo;

public class ClientShow {
	private int id;
	private int cid;
	private String img;
	private String sign;
	private String name;
	private String post;
	private String company;
	private String adress;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getSign() {
		return sign;
	}
	public void setSign(String sign) {
		this.sign = sign;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	@Override
	public String toString() {
		return "ClientShow [id=" + id + ", cid=" + cid + ", img=" + img
				+ ", sign=" + sign + ", name=" + name + ", post=" + post
				+ ", company=" + company + ", adress=" + adress + "]";
	}
	public ClientShow(int id, int cid, String img, String sign, String name,
			String post, String company, String adress) {
		super();
		this.id = id;
		this.cid = cid;
		this.img = img;
		this.sign = sign;
		this.name = name;
		this.post = post;
		this.company = company;
		this.adress = adress;
	}
	public ClientShow() {
		super();
	}
	
}
