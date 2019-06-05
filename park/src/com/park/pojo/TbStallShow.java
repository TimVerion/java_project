package com.park.pojo;

public class TbStallShow {
	    private Integer id;

	    private Integer predict;

	    private String leisuretime;

	    private String isleisure;
	    
	    private Integer stallsize;
	    
	    private float price;
	    
	    public float getPrice() {
			return price;
		}

		public void setPrice(float price) {
			this.price = price;
		}

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


	    public String getIsleisure() {
	        return isleisure;
	    }

	    public void setIsleisure(String isleisure) {
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
			return "TbStallShow [id=" + id + ", predict=" + predict
					+ ", leisuretime=" + leisuretime + ", isleisure="
					+ isleisure + ", stallsize=" + stallsize + ", price="
					+ price + "]";
		}
		

		public TbStallShow() {
			super();
		}

		public TbStallShow(TbStall stall,float price) {
			super();
			this.id = stall.getId();
			this.predict =stall.getPredict();
			this.leisuretime = stall.getLeisuretime();
			int a=stall.getIsleisure();
			if(a==0){
				this.isleisure="yes";
			}else{
				this.isleisure="no";
			}
			this.stallsize = stall.getStallsize();
			this.price = price;
		}
		

	}