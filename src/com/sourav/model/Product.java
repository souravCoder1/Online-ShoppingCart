package com.sourav.model;

import javax.persistence.*;

@Entity
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int pid;
	private String pname;
	private String pdesc;
	private String ppic;
	private int pprice;
	private int pdiscount;
	private int pQuality;
	@ManyToOne
	private Category cat;
	
	
	public Category getCat() {
		return cat;
	}
	public void setCat(Category cat) {
		this.cat = cat;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPdesc() {
		return pdesc;
	}
	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}
	public String getPpic() {
		return ppic;
	}
	public void setPpic(String ppic) {
		this.ppic = ppic;
	}
	public int getPprice() {
		return pprice;
	}
	public void setPprice(int pprice) {
		this.pprice = pprice;
	}
	public int getPdiscount() {
		return pdiscount;
	}
	public void setPdiscount(int pdiscount) {
		this.pdiscount = pdiscount;
	}
	public int getpQuality() {
		return pQuality;
	}
	public void setpQuality(int pQuality) {
		this.pQuality = pQuality;
	}
	
	public Product(int pid, String pname, String pdesc, String ppic, int pprice, int pdiscount, int pQuality,
			Category cat) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.pdesc = pdesc;
		this.ppic = ppic;
		this.pprice = pprice;
		this.pdiscount = pdiscount;
		this.pQuality = pQuality;
		this.cat = cat;
	}
	@Override
	public String toString() {
		return "Product [pid=" + pid + ", pname=" + pname + ", pdesc=" + pdesc + ", ppic=" + ppic + ", pprice=" + pprice
				+ ", pdiscount=" + pdiscount + ", pQuality=" + pQuality + "]";
	}
	
	
}
