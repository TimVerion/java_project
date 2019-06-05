package com.park.pojo;

public class TbClientinfo {
    private Integer id;

    private Integer cid;

    private String sex;

    private String sign;

    private String phonenum;

    private String mail;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getSign() {
        return sign;
    }

    public void setSign(String sign) {
        this.sign = sign == null ? null : sign.trim();
    }

    public String getPhonenum() {
        return phonenum;
    }

    public void setPhonenum(String phonenum) {
        this.phonenum = phonenum;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail == null ? null : mail.trim();
    }

	@Override
	public String toString() {
		return "TbClientinfo [id=" + id + ", cid=" + cid + ", sex=" + sex
				+ ", sign=" + sign + ", phonenum=" + phonenum + ", mail="
				+ mail + "]";
	}
    
}