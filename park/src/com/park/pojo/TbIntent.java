package com.park.pojo;


public class TbIntent {
    private Integer id;

    private Integer carid;

    private Integer stallid;

    private Integer predict;

    private String starttime;

    private String endtime;

    private Float stallprice;

    private int ispay;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getCarid() {
		return carid;
	}

	public void setCarid(Integer carid) {
		this.carid = carid;
	}

	public Integer getStallid() {
		return stallid;
	}

	public void setStallid(Integer stallid) {
		this.stallid = stallid;
	}

	public Integer getPredict() {
		return predict;
	}

	public void setPredict(Integer predict) {
		this.predict = predict;
	}

	public String getStarttime() {
		return starttime;
	}

	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}

	public String getEndtime() {
		return endtime;
	}

	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}

	public Float getStallprice() {
		return stallprice;
	}

	public void setStallprice(Float stallprice) {
		this.stallprice = stallprice;
	}

	public int getIspay() {
		return ispay;
	}

	public void setIspay(int ispay) {
		this.ispay = ispay;
	}

	public TbIntent( Integer carid, Integer stallid,
			Integer predict, String starttime, String endtime,
			Float stallprice, int ispay) {
		super();
		this.carid = carid;
		this.stallid = stallid;
		this.predict = predict;
		this.starttime = starttime;
		this.endtime = endtime;
		this.stallprice = stallprice;
		this.ispay = ispay;
	}

	public TbIntent() {
		super();
	}

	@Override
	public String toString() {
		return "TbIntent [id=" + id + ", carid=" + carid + ", stallid="
				+ stallid + ", predict=" + predict + ", starttime=" + starttime
				+ ", endtime=" + endtime + ", stallprice=" + stallprice
				+ ", ispay=" + ispay + "]";
	}



}