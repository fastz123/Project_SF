package com.safe.vo;

public class Member {
	private String id;
	private String pass;
	private String name;
	private String email;
	private String allergy;

	public Member() {
	}
	public Member(String id, String pass, String name, String email, String allergy) {

		this.id = id;
		this.pass = pass;
		this.name = name;
		this.email = email;
		this.allergy = allergy;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAllergy() {
		return allergy;
	}

	public void setAllergy(String allergy) {
		this.allergy = allergy;
	}

	public String toString() {
		return "Member [id=" + id + ", pass=" + pass + ", name=" + name + ", email=" + email + ", allergy=" + allergy
				+ "]";
	}

}
