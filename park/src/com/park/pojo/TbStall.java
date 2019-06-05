package com.park.pojo;


public class TbStall {
    private Integer id;

    private Integer predict;

    private String leisuretime;

    private Integer currentcarid;

    private Integer isleisure;
    
    private Integer stallsize;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPredict() {
        return predict;
    }

    public void setPredict(Integer predict) {
        this.predict = predict;
    }

    public String getLeisuretime() {
        return leisuretime;
    }

    public void setLeisuretime(String leisuretime) {
        this.leisuretime = leisuretime;
    }

    public Integer getCurrentcarid() {
        return currentcarid;
    }

    public void setCurrentcarid(Integer currentcarid) {
        this.currentcarid = currentcarid;
    }

    public Integer getIsleisure() {
        return isleisure;
    }

    public void setIsleisure(Integer isleisure) {
        this.isleisure = isleisure;
    }

	public Integer getStallsize() {
		return stallsize;
	}

	public void setStallsize(Integer stallsize) {
		this.stallsize = stallsize;
	}

	@Override
	public String toString() {
		return "TbStall [id=" + id + ", predict=" + predict + ", leisuretime="
				+ leisuretime + ", currentcarid=" + currentcarid
				+ ", isleisure=" + isleisure + ", stallsize=" + stallsize + "]";
	}

}