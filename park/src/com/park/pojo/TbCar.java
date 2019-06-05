package com.park.pojo;

public class TbCar {
    private Integer id;

    private Integer cid;

    private String carbrand;

    private String carnum;
    
    private String cartype;
    private String person;

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

    public String getCarbrand() {
        return carbrand;
    }

    public void setCarbrand(String carbrand) {
        this.carbrand = carbrand == null ? null : carbrand.trim();
    }

    public String getCarnum() {
        return carnum;
    }

    public void setCarnum(String carnum) {
        this.carnum = carnum == null ? null : carnum.trim();
    }
    
	public String getCartype() {
		return cartype;
	}

	public void setCartype(String cartype) {
		this.cartype = cartype;
	}

	public String getPerson() {
		return person;
	}

	public void setPerson(String person) {
		this.person = person;
	}

	@Override
	public String toString() {
		return "TbCar [id=" + id + ", cid=" + cid + ", carbrand=" + carbrand
				+ ", carnum=" + carnum + ", cartype=" + cartype + ", person="
				+ person + "]";
	}

}