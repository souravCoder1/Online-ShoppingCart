package com.sourav.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String mail;
	private String pass;
	private int ph_no;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public int getPh_no() {
		return ph_no;
	}
	public void setPh_no(int ph_no) {
		this.ph_no = ph_no;
	}
		
	public User(String name, String mail, String pass, int ph_no) {
		this.name = name;
		this.mail = mail;
		this.pass = pass;
		this.ph_no = ph_no;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", mail=" + mail + ", pass=" + pass + ", ph_no=" + ph_no + "]";
	}
	
}
