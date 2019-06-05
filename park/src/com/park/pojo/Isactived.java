package com.park.pojo;

public class Isactived {
private int cid;
private int sho;
private int car;
private int info;
public int getCid() {
	return cid;
}
public void setCid(int cid) {
	this.cid = cid;
}
public int getSho() {
	return sho;
}
public void setSho(int sho) {
	this.sho = sho;
}
public int getCar() {
	return car;
}
public void setCar(int car) {
	this.car = car;
}
public int getInfo() {
	return info;
}
public void setInfo(int info) {
	this.info = info;
}
public Isactived(int cid, int sho, int car, int info) {
	super();
	this.cid = cid;
	this.sho = sho;
	this.car = car;
	this.info = info;
}
public Isactived() {
	super();
}
@Override
public String toString() {
	return "Isactived [cid=" + cid + ", sho=" + sho + ", car=" + car
			+ ", info=" + info + "]";
}

}
