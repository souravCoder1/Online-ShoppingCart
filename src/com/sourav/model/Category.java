package com.sourav.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Category {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int catid;
	private String catvalue;
	private String catdesc;
	@OneToMany
	private List<Product> product;
	
	
	public Category(int catid, String catvalue, String catdesc, List<Product> product) {
		super();
		this.catid = catid;
		this.catvalue = catvalue;
		this.catdesc = catdesc;
		this.product = product;
	}

	public int getCatid() {
		return catid;
	}
	public void setCatid(int catid) {
		this.catid = catid;
	}
	public String getCatvalue() {
		return catvalue;
	}
	public void setCatvalue(String catvalue) {
		this.catvalue = catvalue;
	}
	public String getCatdesc() {
		return catdesc;
	}
	public void setCatdesc(String catdesc) {
		this.catdesc = catdesc;
	}
		
	public List<Product> getProduct() {
		return product;
	}

	public void setProduct(List<Product> product) {
		this.product = product;
	}

	@Override
	public String toString() {
		return "Category [catid=" + catid + ", catvalue=" + catvalue + ", catdesc=" + catdesc + "]";
	}
	
	
}
