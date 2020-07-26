package com.sourav.model;

import java.util.List;

import javax.persistence.*;

@Entity
@Table(name="category")
public class Category {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int catid;
	private String cattitle;
	private String catdesc;
	@OneToMany
	private List<Product> p;
	public int getCatid() {
		return catid;
	}
	public void setCatid(int catid) {
		this.catid = catid;
	}
	public String getCattitle() {
		return cattitle;
	}
	public void setCattitle(String cattitle) {
		this.cattitle = cattitle;
	}
	public String getCatdesc() {
		return catdesc;
	}
	public void setCatdesc(String catdesc) {
		this.catdesc = catdesc;
	}
	public List<Product> getP() {
		return p;
	}
	public void setP(List<Product> p) {
		this.p = p;
	}
	public Category(String cattitle, String catdesc, List<Product> p) {
		super();
		this.cattitle = cattitle;
		this.catdesc = catdesc;
		this.p = p;
	}
	
	
}
